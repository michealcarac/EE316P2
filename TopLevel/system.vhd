library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity system is
    generic(DataSize: integer := 16 ;AddrSize: integer := 20);
    port (
        -- In Ports
        reset_n         : in std_logic;
        clk_i           : in std_logic := '1';
        kp_value        : in std_logic_vector(4 downto 0);
        kp_valid        : in std_logic;
        SRAM_rx         : in std_logic_vector(DataSize-1 downto 0);
        SRAM_busy       : in std_logic;
        clk_en_60ns     : in std_logic; --60ns for sending rom into SRAM
        clk_en_1hz      : in std_logic; --1hz for grabbing sram data to send to 7 seg
        kp_en           : in std_logic; --200ms en from keypad to validate presses 
        
        -- Out Ports
        SRAM_tx         : out std_logic_vector(DataSize-1 downto 0);
        SRAM_RW         : out std_logic;
        SRAM_en         : out std_logic;
        SRAM_addr       : out std_logic_vector(AddrSize-1 downto 0) := (others => '0');
        data_o          : out std_logic_vector(23 downto 0) -- Will go to 7 segs
        
    );
end system;

architecture Behavioral of system is
    component SinglePortROM is
    port (
        signal address	   : in  std_logic_vector(7 downto 0);
        signal clock       : in  std_logic  := '1';
	    signal q		      : out std_logic_vector(15 downto 0)
	);
    end component;
    
	component univ_bin_counter is
	    generic(NumOfBits: integer:=8;MaxCount: integer:=9;MinCount: integer:=0);
    port(
        signal clk, reset	  : in std_logic;
        signal en, up        : in std_logic;
		signal clk_en 		  : in std_logic := '1';
        signal q	           : out std_logic_vector(NumOfBits-1 downto 0)
    );
    end component;
  
-- FSM Signals --            
type type_fstate is (INIT,TEST,PAUSE,HZ60,HZ120,HZ1000);
signal fstate           : type_fstate;
-- Data Handling --
signal data_reg         : std_logic_vector(23 downto 0):= (others => '0');
-- ROM --
signal ROM_addr         : std_logic_vector(7 downto 0) := (others => '0');
signal ROM_output       : std_logic_vector(DataSize-1 downto 0):= (others => '0');
signal ROM_done         : std_logic := '0';
-- 60ns Counter  --
signal count_direction_60ns  : std_logic := '1'; --1 = forward, 0 = backward
signal count_increment_60ns  : std_logic_vector(7 downto 0) := (others => '0'); --Max: 0xFF
-- 1hz Counter   --
signal count_direction_1hz   : std_logic := '1'; --1 = forward, 0 = backward
signal count_increment_1hz   : std_logic_vector(7 downto 0):= (others => '0'); --Max: 0xFF
-- Both Counters --
signal count_reset      : std_logic;
signal count_enable     : std_logic;
-- mux --
signal mux_sel : std_logic_vector(1 downto 0);
    
begin
                    
    ROM_1port_0 : SinglePortROM
    port map(
        address => ROM_addr(7 downto 0),
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
          
	SRAM_addr(19 downto 0) 	<= "000000000000" & count_increment_60ns when fstate = init else	 
										"000000000000" & count_increment_1hz when fstate = OP_enabled else
										"000000000000" & data_reg(23 downto 16) when fstate = PR_data else
										(others => '0');
	SRAM_tx(15 downto 0) <= ROM_output when fstate = init else
									    data_reg(15 downto 0)  when fstate = PR_data else
									    (others => '0');
	ROM_addr     				<= count_increment_60ns;
											
    user_operation_fsm : process(clk_i,reset_n)
    begin
        if (reset_n = '0') then
            data_reg <= (others => '0');
            --ROM_addr <= (others => '0');
            ROM_done <= '0'; --ROM Not Done Writing
            SRAM_RW  <= '0'; --Write
            --SRAM_addr <= (others => '0');
            count_direction_60ns <= '1'; --Up
            count_direction_1hz <= '1';  --Up
            count_reset <= '1';  --Reset Counter
            count_enable <= '0'; --Turn off counter
            fstate <= init;
        elsif rising_edge(clk_i) then
            case fstate is
                when INIT =>
                    if clk_en_60ns = '1' AND ROM_done = '0' then -- This will run EVERY 60ns
                        fstate <= init;
                        if count_increment_60ns = x"FF" then
                            ROM_done     <= '1';
                            count_reset  <= '1';
                            count_enable <= '0';
                            fstate <= init;
                        end if;
                    elsif ROM_done = '1' then
						count_reset  <= '0';
						count_enable <= '1';
					    SRAM_RW <= '1'; -- to read
                        fstate <= OP_enabled;
                    else
						SRAM_RW <= '0';
						count_reset <= '0';
						count_enable<= '1';
                        fstate <= init;
                    end if;
                        
                when TEST =>
                    if clk_en_1hz = '1' then
						data_reg(23 downto 16) <= count_increment_1hz;--Send Address to 7 seg
						data_reg(15 downto 0) <= SRAM_rx;
                        SRAM_RW <= '1'; --To read
                        fstate <= OP_enabled;
                    elsif kp_valid = '1' and kp_en = '1' then
                        if kp_value = "10011" then --if L
                            count_direction_1hz <= NOT count_direction_1hz;
                            fstate <= OP_enabled;
                        elsif kp_value = "10010" then  --if H
                            count_enable <= '0';
							fstate <= OP_disabled; --Disable the counter
                        elsif kp_value = "10001" then  --if Shift
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

                when PAUSE =>
                    if kp_valid = '1' and kp_en = '1' AND kp_value = "10010" then --If H
                        count_enable <= '1'; --Enable Counter
						count_reset  <= '0'; --Dont reset
						fstate <= OP_enabled;  --Enable the Counter
                    else
                        fstate <= OP_disabled;
                    end if;
                        
                    when HZ60 =>
                    if kp_valid = '1' and kp_en = '1' then --If keypress is valid (0-F), then put it in data registers
                        if kp_value = "10010" then --if H
                            count_reset  <= '1'; --Reset Counter when programming
							count_enable <= '0'; --Disable counter
							fstate <= PR_data;
                        elsif kp_value = "10001" then --if Shift
							count_reset  <= '0';								count_enable <= '1';
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
                            
                    when HZ120 =>
                        -- PROGRAM DATA -- 
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
                    
                    when HZ1000 => 
                    


                    when others =>
                        fstate <= init;
                end case;
            end if;
        end process;
        
      

data_o <= data_reg;
SRAM_en <= clk_en_60ns;
end Behavioral;