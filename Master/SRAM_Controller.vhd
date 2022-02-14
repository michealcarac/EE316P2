library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.ALL;

entity SRAM_Controller is 
    generic(DataSize: integer := 16 ;AddrSize: integer := 20); --DataSize = Data Size, AddrSize = Address Size
	port ( 
	   -- InOuts
	   sram_io     : inout std_logic_vector(DataSize-1 downto 0); --DataSize bit data, To and From SRAM
	   
	   -- Inputs
	   data_i      : in  std_logic_vector(DataSize-1 downto 0); --DataSize bit data, From User Logic
	   addr_i      : in std_logic_vector(AddrSize-1 downto 0);  --AddrSize bit Address
	   RW          : in std_logic; --Read/Write, 0 = write, 1 = read 
	   RW_en       : in std_logic; --1 => enable read/write, pulse for 20ns then hold zero for desired time
	   clk         : in std_logic; --Clk in (50Mhz)
	   
	   -- Outputs
	   data_o      : out std_logic_vector(DataSize-1 downto 0); --DataSize bit data, To User Logic
	   addr_o      : out std_logic_vector(AddrSize-1 downto 0); --AddrSize bit Address
	   WE_n        : out std_logic; --Write Enable, Active Low
	   OE_n        : out std_logic; --Output Enable, Active Low
	   CE_n        : out std_logic; --Chip Enable, Active Low
       LB_n        : out std_logic; --Lower-Byte Control, Active Low
	   UB_n        : out std_logic; --Upper-Byte Control, Active Low
	   busy        : out std_logic  --Busy back to user logic
		
	);
end SRAM_Controller;

architecture behv of SRAM_Controller is
type type_fstate is (ready, write1, write2, read1, read2);
-- State Machine Signals
signal fstate              : type_fstate;
signal tri_n               : std_logic;

signal CE_n_reg 					: std_logic := '0';
signal UB_n_reg                : std_logic := '0';
signal LB_n_reg                : std_logic := '0';
signal WE_n_reg                : std_logic := '1';
signal OE_n_reg                : std_logic := '1';


begin

		
		-- Establish Continous outputs --
		sram_io <= data_i when tri_n = '0' else (others => 'Z');
		
		UB_n <= UB_n_reg;
		CE_n <= CE_n_reg;
		LB_n <= LB_n_reg;
		WE_n <= WE_n_reg;
		OE_n <= OE_n_reg;
		addr_o <= addr_i; 
    
		state_machine : process(clk)
		begin
		  if rising_edge(clk) then
				  -- Establish Registers -- 
				   -- 20ns after May not be needed, for timing, else put it outside of rising edge conditional
              -- Case Statement --
				  case fstate is 
                  when ready =>
                      if (RW = '1' and RW_en = '1') then -- Read
								busy <= '1';
								OE_n_reg <= '0';
								tri_n <= '1'; -- Disable Tristate for reading
                        fstate <= read1;
                      elsif (RW = '0' and RW_en = '1') then -- Write
								busy <= '1';
								WE_n_reg <= '0';
								tri_n <= '0'; -- Enable Tristate for writing
                        fstate <= write1;
						    else
								busy <= '0';
                      end if;
                  when write1 =>
                      WE_n_reg <= '0';
                      fstate <= write2;   --Switch to next state
                  when write2 =>
							 busy <= '0';
							 WE_n_reg <= '1';
                      fstate <= ready;    --Switch to next state
                  when read1 =>
							 data_o <= sram_io;
                      fstate <= read2;
                  when read2 =>
							 OE_n_reg <= '1';
							 busy <= '0';
                      fstate <= ready;
              end case;        
		  end if;	
		end process;
end behv;
		