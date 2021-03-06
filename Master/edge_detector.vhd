library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

-- use IEEE.STD_LOGIC_ARITH;
-- use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY edge_detector IS
    generic(edge: std_logic := '0'); -- 0 = falling, 1 = rising
    PORT (
        clk_i  : in  std_logic;
        data_i : in  std_logic;
        data_o : out std_logic
		);	
END edge_detector;


ARCHITECTURE Arch OF edge_detector IS
	
    signal reg_0 : std_logic;
    signal reg_1 : std_logic;

BEGIN


 PROCESS(clk_i)
 BEGIN
	  if rising_edge(clk_i) then
      reg_0 <= data_i;
      reg_1 <= reg_0;
	  end if;
 END PROCESS;

process(clk_i)
begin
    if(edge = '0') then
        data_o <= reg_1 AND NOT reg_0;  --Checks Falling
    elsif(edge = '1') then
        data_o <= reg_0 AND NOT reg_1;  --Checks Rising
    else
        data_o <= '0';
    end if;
end process;


END Arch;