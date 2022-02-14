library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_level is
    port (
        -- In Ports
        reset_n         : in    std_logic;
        clk_i           : in    std_logic;
        op_modes        : in    std_logic_vector(2 downto 0); -- 111, 110 = key1, 101 = key2, 011 = key3
        
        sram_io         : inout std_logic_vector(15 downto 0);
        sram_addr       : out   std_logic_vector(19 downto 0);
        sram_WE_n       : out   std_logic;
        sram_OE_n       : out   std_logic;
        sram_CE_n       : out   std_logic;
        sram_LB_n       : out   std_logic;
        sram_UB_n       : out   std_logic;

        pwm_data_o      : out   std_logic;

        lcd_data_o      : out std_logic_vector(7 downto 0);
        lcd_EN          : out   std_logic;
        lcd_RS          : out   std_logic;

        i2c_SDA         : inout   std_logic;
        i2c_SCL         : inout   std_logic

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
	selectPWM   : in    std_logic_vector(1  downto 0);
    selectMode  : in    std_logic_vector(1  downto 0);  --00 = Initialization, 01 = TestMode, 10 = PauseMode, 11 = PWMMode
    data_o      : out   std_logic_vector(7  downto 0);  -- 8 bits, MSB is RS
    RS          : out   std_logic;
    EN          : out   std_logic
    );
end component;

component pwm is
generic(N : integer := 32);
port(
    clk           : in  std_logic;
	SRAM_in       : in  std_logic_vector(15 downto 0);
	frequency     : in  std_logic_vector(1 downto 0);
	reset_n       : in  std_logic;	
	address_out   : out std_logic_vector(7 downto 0);
	output        : out std_logic
    );
end component;

component edge_detector is
generic(edge: std_logic := '0'); -- 0 = falling, 1 = rising
PORT (
    clk_i  : in  std_logic;
    data_i : in  std_logic;
    data_o : out std_logic
    );	
END component;

component i2c_user is
GENERIC(
    delay     : unsigned:= X"00CFF";
    input_clk : integer := 50_000_000;
    bus_clk   : integer := 50_000);
port(
    clk         : in    std_logic; --Clock In
    reset_n     : in    std_logic; --Asynchronous Reset Active Low  
    data_i      : in    std_logic_vector(15 downto 0);  --To be transmitted off master
    SDA         : inout std_logic;   --Data/Address Line
    SCL         : inout std_logic    --Clock Line
    );
end component;

-- FSM Signals --            
type type_fstate is (INIT,TEST,PAUSE,HZ60,HZ120,HZ1000);
signal fstate                : type_fstate;
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
signal SRAM_data_i   : std_logic_vector(15 downto 0); -- 16 bits, Into Controller
signal SRAM_data_o   : std_logic_vector(15 downto 0); -- 16 bits, From Controller
signal SRAM_addr_i   : std_logic_vector(19  downto 0); -- 20 bits, Into controller
signal SRAM_addr_o   : std_logic_vector(19  downto 0); -- 20 bits, From controller, into other blocks
signal SRAM_RW       : std_logic;
signal SRAM_busy_flag: std_logic;
-- Reset
signal sys_reset_n   : std_logic;
signal power_reset_n : std_logic;
-- ROM
signal ROM_output    : std_logic_vector(15 downto 0) := (others => '0');
signal ROM_done      : std_logic;
-- LCD/PWM --
signal selectMode    : std_logic_vector(1 downto 0):=  "00";
signal selectPWM     : std_logic_vector(1 downto 0) := "00";
signal pwm_addr_o    : std_logic_vector(7 downto 0);
-- Operations --

signal KEY1          : std_logic;
signal KEY2          : std_logic;
signal KEY3          : std_logic; 


begin

    rising_edge0 : edge_detector
    generic map(edge => '1') -- Rising
    PORT map(
        clk_i  => clk_i,
        data_i => op_modes(0),
        data_o => KEY1
	);	
    rising_edge1 : edge_detector
    generic map(edge => '1') -- Rising
    PORT map(
        clk_i  => clk_i,
        data_i => op_modes(1),
        data_o => KEY2
	);
    rising_edge2 : edge_detector
    generic map(edge => '1') -- Rising
    PORT map(
        clk_i  => clk_i,
        data_i => op_modes(2),
        data_o => KEY3
	);
    
    power_on_reset : reset_delay
    port map(
        iclk   => clk_i,
        oreset => power_reset_n
    );
    
    sys_reset_n <= reset_n AND power_reset_n; -- 0 to reset system

    en_1hz : clk_enabler
    GENERIC MAP (
		cnt_max => 49999999)      --  1.0 Hz 
    port map(
        clock    => clk_i,
        clk_en => clk_en_1hz
    );

    en_60ns : clk_enabler
    GENERIC MAP (
		cnt_max => 3)      --  60 ns
    port map(
        clock    => clk_i,
        clk_en => clk_en_60ns
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
        reset_n    => '1',
        data_i     => SRAM_data_o,
        addr_i     => SRAM_addr_o(7 downto 0),
        selectPWM  => selectPWM,
		  selectMode => selectMode,
        data_o     => lcd_data_o,
        RS         => lcd_RS,
        EN         => lcd_EN
    );

    pwm_entity : pwm
    port map(
        clk         => clk_i,
	    SRAM_in     => SRAM_data_o,
	    frequency   => selectPWM,
	    reset_n     => sys_reset_n,
	    address_out => pwm_addr_o,
        output      => pwm_data_o
    );

    i2c_entity : i2c_user
    port map(
        clk      => clk_i,
        reset_n  => sys_reset_n,
        data_i   => SRAM_data_o,
        SDA      => i2c_SDA,
        SCL      => i2c_SCL
    );
    
    SRAM :  SRAM_Controller 
        generic map(DataSize => 16, AddrSize => 20) --DataSize = Data Size, AddrSize = Address Size
        port map( 
           -- InOuts
           sram_io     => sram_io,
           
           -- Inputs
           data_i      => SRAM_data_i,
           addr_i      => SRAM_addr_i,
           RW          => SRAM_RW,
           RW_en       => clk_en_60ns,
           clk         => clk_i,
           
           -- Outputs
           data_o              => SRAM_data_o,
           addr_o              => SRAM_addr_o,
           WE_n                => SRAM_WE_n,
           OE_n                => SRAM_OE_n,
           CE_n                => SRAM_CE_n,
           LB_n                => SRAM_LB_n,
           UB_n                => SRAM_UB_n,
           busy                => SRAM_busy_flag
         
        );
    
    SRAM_addr  <= SRAM_addr_o;





SRAM_addr_i(19 downto 0) 	<=  "000000000000" & count_increment_60ns when fstate = INIT   else -- For Writing from ROM
                                "000000000000" & count_increment_1hz  when fstate = TEST   else -- Grabbing Data
                                "000000000000" & count_increment_1hz  when fstate = PAUSE  else -- Grabbing Data
                                "000000000000" & pwm_addr_o           when fstate = HZ60   else 
                                "000000000000" & pwm_addr_o           when fstate = HZ120  else 
                                "000000000000" & pwm_addr_o           when fstate = HZ1000 else 
                                (others => '0');

SRAM_data_i(15 downto 0) <= ROM_output when fstate = init else
                                (others => '0');                              

PROCESS(clk_i,sys_reset_n)
BEGIN
    if (sys_reset_n = '0') then
        ROM_done <= '0'; --ROM Not Done Writing
        SRAM_RW  <= '0'; --Write
        count_direction_60ns <= '1'; --Up
        count_direction_1hz <= '1';  --Up
        count_reset <= '1';  --Reset Counter
        count_enable <= '0'; --Turn off counter
        selectMode <= "00"; --Init Mode
        selectPWM <= "00"; --60hz
        fstate <= INIT;
    elsif rising_edge(clk_i) then
        case fstate is
            when INIT => --This needs to be worked on for proper key0 held for initialization: Probably only have the writing to ROM on reset, key0 different state. 
                fstate <= INIT;
                if ROM_done = '0' then
                    SRAM_RW     <= '0'; -- to write
                    count_reset <= '0';
                    count_enable<= '1';
                    selectMode  <= "00";
                    selectPWM   <= "00";
                    fstate <= INIT;
                    if count_increment_60ns = x"FF" then
                        ROM_done     <= '1';
                        count_reset  <= '1';
                        count_enable <= '0';
                    end if;
                elsif ROM_done = '1'  then --Progress only when KEY0 is let go and ROM is done
                    count_reset  <= '0';
                    count_enable <= '1';
                    SRAM_RW      <= '1'; -- to read
                    selectMode   <= "01"; --Test Mode
                    fstate <= TEST;
                end if; 

            when TEST => 
                
                selectMode <= "01";     --Test Mode
                fstate <= TEST;
                if KEY1 = '1' then --Key1
                    count_enable <= '0';
                    selectMode <= "10"; --Pause mode
                    fstate <= PAUSE;
                elsif KEY2 = '1' then--Key2
                    selectMode <= "11"; --PWM Mode
                    fstate <= HZ60;
                end if;
            
            when PAUSE => 
                
                selectMode <= "10"; --Pause mode
                fstate <= PAUSE;
                if KEY1 = '1' then--Key1
                    count_enable <= '1';
                    selectMode <= "01"; --Test Mode
                    fstate <= TEST;
                end if;
                
            when HZ60 =>
            
                selectPWM <= "00";
                fstate <= HZ60;
                
                if KEY2 = '1' then
                    selectMode <= "01"; --Test Mode
                    fstate     <= TEST;
                elsif KEY3 = '1' then
                    selectMode <= "11"; --PWM Mode
                    selectPWM  <= "01"; --120Hz
                    fstate     <= HZ120;
                end if;
            
            when HZ120 =>
            
                selectPWM <= "01";
                fstate <= HZ120;
            
                if KEY2 = '1' then
                    selectMode <= "01"; --Test Mode
                    fstate     <= TEST;
                elsif KEY3 = '1' then
                    selectMode <= "11"; --PWM Mode
                    selectPWM  <= "10"; -- 1000Hz
                    fstate     <= HZ1000;
                end if;
            
            when HZ1000 =>
            
                selectPWM <= "10";
                fstate <= HZ1000;
                
                if KEY2 = '1' then
                    selectMode <= "01"; --Test Mode
                    fstate     <= TEST;
                elsif KEY3 = '1' then
                    selectMode <= "11"; --PWM Mode
                    selectPWM  <= "00"; --60Hz
                    fstate     <= HZ60;
                end if;

            when others => NULL;
            -- do nothing
        end case; 
    end if;
 end process;
	 
                                

end Behavioral;