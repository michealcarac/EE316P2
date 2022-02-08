----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/08/2022 12:34:17 AM
-- Design Name: 
-- Module Name: I2C_User_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity I2C_User_tb is
--  Port ( );
end I2C_User_tb;

architecture Behavioral of I2C_User_tb is

component I2C_User is
    GENERIC(
        delay     : unsigned := X"03FFF";
		input_clk : integer  := 50_000_000;
		bus_clk   : integer  := 400_000);
    port(
        clk         : in  std_logic; --Clock In
        reset_n     : in  std_logic; --Asynchronous Reset Active Low  
        data_i      : in  std_logic_vector(15 downto 0);  --To be transmitted off master
		data_o      : out std_logic_vector(7 downto 0); --Read over I2C
        SDA         : inout std_logic := 'Z';   --Data/Address Line
        SCL         : inout std_logic := 'Z'    --Clock Line
        -- If en is high at the conclsion of transaction, then a new address read/write command and data is latched
        );
end component;
signal clk     : std_logic := '0';
signal reset_n : std_logic := '1';
signal data_i  : std_logic_vector(15 downto 0) := x"ABCD";
signal data_o  : std_logic_vector(7 downto 0);
signal SDA     : std_logic;
signal SCL     : std_logic;
begin

DUT: i2c_User
  GENERIC MAP(
            delay     =>  X"0000F",
			input_clk =>  500_000, --input clock speed from user logic in Hz
			bus_clk   =>  100_000) 
  PORT MAP(clk => clk, 
  reset_n => reset_n, 
  data_i => data_i, 
  data_o => data_o,
  SDA    => SDA,
  SCL    => SCL); 
 	clk <= not clk after 1 us; --2us clock
 	
process
begin
    reset_n <= '0';
    data_i  <= x"ABCD";
    wait for 200us;
    reset_n <= '1';
    wait;
end process;

end Behavioral;
