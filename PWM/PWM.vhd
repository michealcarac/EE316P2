LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PWM is
	generic(N : integer := 32);
	port (
		clk : in std_logic;
		SRAM_in : in std_logic_vector(15 downto 0);
		frequency : in std_logic_vector(1 downto 0);
		reset_n : in std_logic;
		
		address_out : out std_logic_vector(7 downto 0);
		output : out std_logic
	
	);
end PWM;

architecture arch of PWM is
	signal M : unsigned(31 downto 0);
	signal count32 : unsigned(31 downto 0);
	signal num : unsigned(7 downto 0);
	signal count8 : unsigned(7 downto 0);

	begin
	
	process(clk, frequency, reset_n)
	begin
		
		if frequency = "00" then
			M <= to_unsigned(5154, 32);
		elsif frequency = "01" then
			M <= to_unsigned(10308, 32);
		else
			M <= to_unsigned(85900, 32);
		end if;

		if rising_edge(clk) and reset_n = '1' then
			count32 <= count32 + M;	
			address_out <= std_logic_vector(count32(31 downto 24));
			num <= unsigned(SRAM_in(15 downto 8));
			count8 <= count8 + 1;
			
			if count8 <= num then	
				output <= '1';
			else
					output <= '0';
			end if;
		end if;
		
		if reset_n = '0' then
			count32 <= to_unsigned(0, 32);
			count8 <= to_unsigned(0, 8);
			address_out <= X"00";
			num <= to_unsigned(0, 8);
			output <= '0';
		end if;

	end process;

end arch;
