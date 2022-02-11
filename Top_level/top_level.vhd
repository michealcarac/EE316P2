library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_level is
    port (
        -- In Ports
        reset_n         : in    std_logic;
        clk_i           : in    std_logic;
        op_modes        : in    std_logic_vector(2 downto 0); -- 001 => test/pause, 010 => test/pwm, 100 => frequency change
        
        sram_io         : inout std_logic_vector(15 downto 0);
        sram_addr       : out   std_logic_vector(19 downto 0);
        sram_WE_n       : out   std_logic;
        sram_OE_n       : out   std_logic;
        sram_CE_n       : out   std_logic;
        sram_LB_n       : out   std_logic;
        sram_UB_n       : out   std_logic;

        pwm_data_o      : out   std_logic;

        lcd_io          : inout std_logic_vector(7 downto 0);
        lcd_EN          : out   std_logic;
        lcd_RS          : out   std_logic;

        i2c_data_o      : out   std_logic_vector(7 downto 0);
        i2c_SDA         : out   std_logic;
        i2c_SCL         : out   std_logic;

    );
end top_level;

architecture Behavioral of top_level is

component Reset_Delay is
port (
    signal iclk       : in  std_logic;
    signal oreset     : out std_logic
    );
end component;

component ROM1PORT is
port (
    signal address	   : in  std_logic_vector(7 downto 0);
    signal clock       : in  std_logic  := '1';
    signal q		   : out std_logic_vector(15 downto 0)
    );
end component;

component SRAM_Controller is
    generic(DataSize: integer := 16 ;AddrSize: integer := 20); --DataSize = Data Size, AddrSize = Address Size
    port ( 
       -- InOuts
       signal sram_io     : inout std_logic_vector(DataSize-1 downto 0); --DataSize bit data, To and From SRAM
       
       -- Inputs
       signal data_i      : in  std_logic_vector(DataSize-1 downto 0); --DataSize bit data, From User Logic
       signal addr_i      : in  std_logic_vector(AddrSize-1 downto 0);  --AddrSize bit Address
       signal RW          : in  std_logic; --Read/Write, 0 = write, 1 = read 
       signal RW_en       : in  std_logic; --1 => enable read/write, pulse for 20ns then hold zero for desired time
       signal clk         : in  std_logic := '1'; --Clk in (50Mhz)
       
       -- Outputs
       signal data_o      : out std_logic_vector(DataSize-1 downto 0); --DataSize bit data, To User Logic
       signal addr_o      : out std_logic_vector(AddrSize-1 downto 0); --AddrSize bit Address
       signal WE_n        : out std_logic; --Write Enable, Active Low
       signal OE_n        : out std_logic; --Output Enable, Active Low
       signal CE_n        : out std_logic; --Chip Enable, Active Low
       signal LB_n        : out std_logic; --Lower-Byte Control, Active Low
       signal UB_n        : out std_logic; --Upper-Byte Control, Active Low
       signal busy        : out std_logic  --Busy back to user logic
     
            );
end component;

component clk_enabler is
    GENERIC ( CONSTANT cnt_max : integer := 49999999);      -- Default 1.0 Hz 
port(	
    signal clock    : in  std_logic;	 
    signal clk_en   : out std_logic
    );
end component;

component univ_bin_counter is
    generic(NumOfBits: integer:=8;MaxCount: integer:=9;MinCount: integer:=0);
port(
    signal clk, reset	 : in  std_logic;
    signal en, up        : in  std_logic;
	signal clk_en 		 : in  std_logic := '1';
    signal q	         : out std_logic_vector(NumOfBits-1 downto 0)
    );
end component;

component lcd_transmitter is
port(
    clk         : in    std_logic;                     --top_level clock
    reset_n     : in    std_logic;
    data_i      : in    std_logic_vector(15 downto 0);  -- 16 bits
    addr_i      : in    std_logic_vector(7  downto 0);
    selectMode  : in    std_logic_vector(1  downto 0);  --00 = Initialization, 01 = TestMode, 10 = PauseMode, 11 = PWMMode
    data_o      : OUT   std_logic_vector(7  downto 0);  -- 8 bits, MSB is RS
    RS          : OUT   std_logic;
    EN          : OUT   std_logic
    );
end component;

component pwm is
port(
    clk         : in  std_logic;
	SRAM_in     : in  std_logic_vector(15 downto 0);
	frequency   : in  std_logic_vector(1 downto 0);
	reset       : in  std_logic;	
	address_out : out std_logic_vector(7 downto 0);
	output      : out std_logic
    );
end component;

component i2c_user is
GENERIC(
    delay     : unsigned:= X"03FFF";
    input_clk : integer := 50_000_000;
    bus_clk   : integer := 400_000);
port(
    clk         : in    std_logic; --Clock In
    reset_n     : in    std_logic; --Asynchronous Reset Active Low  
    data_i      : in    std_logic_vector(15 downto 0);  --To be transmitted off master
    data_o      : out   std_logic_vector(7 downto 0); --Read over I2C
    SDA         : inout std_logic;   --Data/Address Line
    SCL         : inout std_logic    --Clock Line
    );
end component;

-- FSM Signals --            
type type_fstate is (INIT,TEST,PAUSE,HZ60,HZ120,HZ1000);
signal fstate                : type_fstate;
-- Data Handling --     
signal data_reg              : std_logic_vector(23 downto 0):= (others => '0');
-- ROM --
signal ROM_addr              : std_logic_vector(7 downto 0) := (others => '0');
signal ROM_output            : std_logic_vector(DataSize-1 downto 0):= (others => '0');
signal ROM_done              : std_logic := '0';
-- mux --
signal mux_sel               : std_logic_vector(1 downto 0);
      

-- New Design
-- clock enablers --
signal clk_en_1hz  : std_logic;
signal clk_en_60ns : std_logic;
-- 60ns Counter  --
signal count_direction_60ns  : std_logic := '1'; --1 = forward, 0 = backward
signal count_increment_60ns  : std_logic_vector(7 downto 0) := (others => '0'); --Max: 0xFF
-- 1hz Counter   --
signal count_direction_1hz   : std_logic := '1'; --1 = forward, 0 = backward
signal count_increment_1hz   : std_logic_vector(7 downto 0):= (others => '0'); --Max: 0xFF
-- Both Counters --
signal count_reset           : std_logic;
signal count_enable          : std_logic;
-- SRAM
signal SRAM_data_o   : std_logic_vector(15 downto 0); -- 16 bits
signal SRAM_addr_o   : std_logic_vector(7 downto 0);  -- 8 bits
-- Reset
signal sys_reset_n   : std_logic;
signal power_reset_n : std_logic;
-- ROM
signal ROM_output    : std_logic_vector(15 downto 0) := (others => '0');
signal ROM_done      : std_logic;
-- LCD/PWM --
signal selectMode    : std_logic_vector(1 downto 0);
signal selectPWM     : std_logic_vector(1 downto 0);


begin

    power_on_reset : reset_delay
    port map(
        iclk   => clk_i,
        oreset => power_reset_n
    );
    
    sys_reset_n <= reset_n AND power_reset_n; -- 0 to reset system

    en_1hz : clk_enabler
    GENERIC MAP (
		CONSTANT cnt_max : integer := 49999999);      --  1.0 Hz 
    port map(
        clock    => clk_i,
        clock_en => clk_en_1hz
    );

    en_60ns : clk_enabler
    GENERIC MAP (
		CONSTANT cnt_max : integer := 3);      --  60 ns
    port map(
        clock    => clk_i,
        clock_en => clk_en_60ns
    );


    ROM_1port_0 : ROM1PORT
    port map(
        address => count_increment_60ns,
        clock   => clk_i,
        q       => ROM_output
    );
        
    count_60ns : univ_bin_counter
    generic map(NumOfBits => 8,MaxCount => 255,MinCount =>0)
    port map(
        clk     => clk_i,
        reset	=> count_reset,			
        en      => count_enable,
        up      => count_direction_60ns,
        clk_en 	=> clk_en_60ns,		 
        q		=> count_increment_60ns				    
    );

    count_1hz : univ_bin_counter
    generic map(NumOfBits => 8,MaxCount => 255,MinCount =>0)
    port map(
        clk     => clk_i,
        reset	=> count_reset,			
        en      => count_enable,
        up      => count_direction_1hz,
        clk_en 	=> clk_en_1hz,		 
        q		=> count_increment_1hz			    
    );

    lcd_entity : lcd_transmitter
    port map(
        clk        => clk_i,
        reset_n    => sys_reset_n,
        data_i     => SRAM_data_o,
        addr_i     => SRAM_addr_o,
        selectMode => selectMode,
        selectPWM  => selectPWM
    );

    pwm_entity : pwm
    port map(
        clk         => clk_i,
	    SRAM_in     => SRAM_data_o,
	    frequency   => selectPWM,
	    reset       => reset_n,
	    address_out => SRAM_addr_o
    );

    i2c_entity : i2c_user
    port map(
        clk      => clk_i,
        reset_n  => sys_reset_n,
        data_i   => SRAM_data_o,
        data_o   => i2c_data_o,
        SDA      => i2c_SDA,
        SCL      => i2c_SCL
    );
    
    SRAM :  SRAM_Controller 
        generic map(DataSize => DataSize, AddrSize => AddrSize) --DataSize = Data Size, AddrSize = Address Size
        port map( 
           -- InOuts
           sram_io     => sram_io,
           
           -- Inputs
           data_i      => ROM_output,
           addr_i      => SRAM_addr_i,
           RW          => SRAM_RW,
           RW_en       => clk_en_60ns,
           clk         => clk_i,
           
           -- Outputs
           data_o              => SRAM_data_o,
           addr_o(7 downto 0)  => SRAM_addr_o,
           addr_o(19 downto 8) => open,
           WE_n                => SRAM_WE_n,
           OE_n                => SRAM_OE_n,
           CE_n                => SRAM_CE_n,
           LB_n                => SRAM_LB_n,
           UB_n                => SRAM_UB_n,
           busy                => SRAM_busy_flag
         
        );
    
    SRAM_addr <= SRAM_addr_o;





SRAM_addr(19 downto 0) 	<= "000000000000" & count_increment_60ns when fstate = INIT else	 
    "000000000000" & count_increment_1hz when fstate = TEST else
    "000000000000" & data_reg(23 downto 16) when selectMode = "11" else --selectMode "11" covers 60hz, 120hz and 1000hz
    (others => '0');
SRAM_tx(15 downto 0) <= ROM_output when fstate = INIT else
    data_reg(15 downto 0)  when fstate =  else
    (others => '0');
        
user_operation_fsm : process(clk_i,reset_n)
begin
if (sys_reset_n = '0') then
data_reg <= (others => '0');
--ROM_addr <= (others => '0');
ROM_done <= '0'; --ROM Not Done Writing
SRAM_RW  <= '0'; --Write
--SRAM_addr <= (others => '0');
count_direction_60ns <= '1'; --Up
count_direction_1hz <= '1';  --Up
count_reset <= '1';  --Reset Counter
count_enable <= '0'; --Turn off counter
fstate <= INIT;
elsif rising_edge(clk_i) then
case fstate is
-----------------------------------------------------------------
when INIT =>
if clk_en_60ns = '1' AND ROM_done = '0' then -- This will run EVERY 60ns
if count_increment_60ns = x"FF" then
ROM_done     <= '1';
count_reset  <= '1';
count_enable <= '0';
fstate <= TEST;
end if;
elsif ROM_done = '1' then
count_reset  <= '0';
count_enable <= '1';
SRAM_RW <= '1'; -- to read
fstate <= INIT;
else
SRAM_RW <= '0';
count_reset <= '0';
count_enable<= '1';
fstate <= INIT;
end if;
-----------------------------------------------------------------                       
when TEST =>
selectMode <= "01"; -- Test Mode
count_enable <= '1';

if clk_en_1hz ='1' then
data_reg(23 downto 0) <= count_increment_1hz;
data_reg(15 downto 0) <= SRAM_rx;           -- Sends data to LCD and i2c
SRAM_RW <= '1';                             -- Sets read for SRAM
fstate <= TEST;
end if;

if KEY1 then
fstate <= PAUSE;
else if KEY0 then
selectMode <= "00";
if count_increment_60ns = "99999999" AND KEY0 then --if button is pressed for x time then initializes
fstate <= INIT;
end if;
else if KEY2 then
fstate <= HX60;
end if;

if clk_en_1hz = '1' then
    data_reg(23 downto 16) <= count_increment_1hz;--Send Address to 7 seg
    data_reg(15 downto 0) <= SRAM_rx;             --Send data to SRAM
    SRAM_RW <= '1';                               --To read
    fstate <= TEST;
elsif kp_valid = '1' and kp_en = '1' then
if kp_value = "" then --if L
count_direction_1hz <= NOT count_direction_1hz;
fstate <= OP_enabled;
elsif kp_value = "" then  --if H
count_enable <= '0';
fstate <= OP_disabled; --Disable the counter
elsif kp_value = "" then  --if Shift
data_reg(23 downto 0) <= (others => '0');
count_reset  <= '1';
count_enable <= '0';
fstate <= PR_addr;     --Start programming, starting with address
else
fstate <= OP_enabled;
end if;
else
--SRAM_addr(7 downto 0) <= count_increment_1hz; --Send Address to SRAM
count_reset  <= '0'; --Dont reset
count_enable <= '1'; --Enable Counter
fstate <= OP_enabled;
end if;
-----------------------------------------------------------------
when PAUSE =>
selectMode <= "10"; -- Pause Mode
count_enable <= '0'; --Disable Counter
count_reset  <= '0'; --Dont reset

if KEY1 then
fstate <= TEST;
end if;
-----------------------------------------------------------------                        
when HZ60 =>
selectMode <= "11";
selectPWM <= "00";

if KEY3 then
fstate <= HZ120;
elsif KEY2 then
fstate <= TEST;
end if; 

if kp_valid = '1' and kp_en = '1' then --If keypress is valid (0-F), then put it in data registers
if kp_value = "10010" then --if H
count_reset  <= '1'; --Reset Counter when programming
count_enable <= '0'; --Disable counter
fstate <= PR_data;
elsif kp_value = "10001" then --if Shift
count_reset  <= '0';								
count_enable <= '1';
fstate <= OP_enabled;
else
data_reg(23 downto 16) <= data_reg(19 downto 16) & kp_value(3 downto 0);                            
fstate <= PR_addr; 
end if; 
else
count_reset  <= '1'; --Reset counter when programming
count_enable <= '0';  --Disable Counter
fstate <= PR_addr;
end if;
-----------------------------------------------------------------                            
when HZ120 =>
selectMode <= "11";
selectPWM <= "01";

if KEY3 then
fstate <= HZ1000;
elsif KEY2 then
fstate <= TEST;
end if;

count_reset  <= '1'; --Reset Counter when programming
count_enable <= '0'; --Disable counter
if kp_valid = '1' and kp_en = '1' then
if kp_value = "10010" then --If H
fstate <= PR_addr;
elsif kp_value = "10011" then --if L, Load data into SRAM
SRAM_RW <= '0'; --Write
--SRAM_tx(15 downto 0)   <= data_reg(15 downto 0);
fstate <= PR_data;
else
data_reg(15 downto 0) <= data_reg(11 downto 8) & data_reg(7 downto 4) & data_reg(3 downto 0) & kp_value(3 downto 0);
fstate <= PR_data;
end if;                     
else 
fstate <= PR_data;
end if;
-----------------------------------------------------------------                    
when HZ1000 => 
selectMode <= "11";
selectPWM <= "10";    



if KEY3 then
fstate <= HZ60;
elsif KEY2 then
fstate <= TEST;
end if;

end case;
end if;
end process;

data_o <= data_reg;
SRAM_en <= clk_en_60ns;

end Behavioral;