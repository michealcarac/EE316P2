-- Source: http://academic.csuohio.edu/chu_p/rtl/fpga_vhdl.html
-- Listing 4.10
-- modified: added port "clk_en", Sept 5, 2013

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity univ_bin_counter is
   generic(NumOfBits: integer := 8; MaxCount: integer := 9; MinCount: integer := 0);
   port(
      clk, reset				: in std_logic;
      en, up        : in std_logic;
		  clk_en 					  : in std_logic := '1';
      q							      : out std_logic_vector(NumOfBits-1 downto 0)
   );
end univ_bin_counter;

architecture arch of univ_bin_counter is
   signal r_reg				           : unsigned(NumOfBits-1 downto 0);
   signal r_next				          : unsigned(NumOfBits-1 downto 0);
   signal r_1				             : unsigned(NumOfBits-1 downto 0);
   signal r_2				             : unsigned(NumOfBits-1 downto 0);
   signal max_tick, min_tick	 : std_logic;   
begin
   -- register
   process(clk,reset)
   begin
      if (reset='1') then
         r_reg <= (others=>'0');
      elsif rising_edge(clk) and clk_en = '1' then
         r_reg <= r_next;
      end if;
   end process;
   -- next-state logic
   r_next <= r_1     when en ='1' and up='1' else
             r_2     when en ='1' and up='0' else
             r_reg;
             
   r_1 <= to_unsigned(MinCount, r_reg'length) when r_reg = to_unsigned(MaxCount, r_reg'length) else
          r_reg + 1; 
   r_2 <= to_unsigned(MaxCount, r_reg'length) when r_reg = to_unsigned(MinCount, r_reg'length) else
          r_reg - 1;                        
             
   -- output logic
   q <= std_logic_vector(r_reg);
   max_tick <= '1' when r_reg=to_unsigned(MaxCount, r_reg'length) else '0';
   min_tick <= '1' when r_reg=to_unsigned(MinCount, r_reg'length) else '0';
end arch;

