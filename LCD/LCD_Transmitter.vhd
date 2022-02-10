LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
--USE ieee.std_logic_unsigned.all;

ENTITY LCD_Transmitter IS
	GENERIC (
		CONSTANT cnt_max : integer := 208333/2); -- -- 5 ms for 3 states -> 1.677 ms, since there is a clock div by 2 in design, divide this by 2. 
  PORT(
    clk       : IN     STD_LOGIC;                     --system clock
    reset_n   : IN     STD_LOGIC;
    data_i    : IN     STD_LOGIC_VECTOR(15 DOWNTO 0);  -- 16 bits
    addr_i    : IN     STD_LOGIC_VECTOR(7 DOWNTO 0);
    selectMode: IN     STD_LOGIC_VECTOR(1 DOWNTO 0);  --00 = Initialization, 01 = TestMode, 10 = PauseMode, 11 = PWMMode
    data_o    : OUT    STD_LOGIC_VECTOR(7 DOWNTO 0);  -- 8 bits, MSB is RS
    RS        : OUT    STD_LOGIC;
    EN        : OUT    STD_LOGIC
    );                   
END LCD_Transmitter;

ARCHITECTURE user_logic OF LCD_Transmitter IS

TYPE LCD_FirstLine is array(0 to 3) of std_logic_vector(15 downto 0);
signal LCD_TestMode     : LCD_FirstLine(0);
signal LCD_PauseMode    : LCD_FirstLine(1);
signal LCD_InitMode     : LCD_FirstLine(2);
signal LCD_PWMMode      : LCD_FirstLine(3);

TYPE LCD_SecondLine is array(0 to 2) of std_logic_vector(15 downto 0);
signal LCD_EmptyLine    : LCD_SecondLine(0);
signal LCD_DataAddrLine : LCD_SecondLine(1);
signal LCD_PWMLine      : LCD_SecondLine(2);

signal LCD_addr   : std_logic_vector(15 downto 0);

signal 

TYPE state_type IS(start, enable, repeat); --needed states
signal state      : state_type;                   --state machine

signal data       : STD_LOGIC_VECTOR(8 DOWNTO 0); -- 9 bits, MSB is RS
signal clk_cnt    : integer range 0 to cnt_max;
signal clk_en     : STD_LOGIC;
signal count 	    : unsigned(27 DOWNTO 0):=X"000000F";
signal byteSel    : integer range 0 to 30:=0;
signal RS_sig     : std_logic;
signal EN_sig     : std_logic;

BEGIN

    RS    <= RS_sig;
    EN    <= EN_sig;
	
process(byteSel)
 begin
    case byteSel is
       when 0  => data  <= '0'&X"38"; --Initialization Start
       when 1  => data  <= '0'&X"38";
       when 2  => data  <= '0'&X"38";
       when 3  => data  <= '0'&X"38";
       when 4  => data  <= '0'&X"38";
       when 5  => data  <= '0'&X"38";
       when 6  => data  <= '0'&X"01";
       when 7  => data  <= '0'&X"0C";
       when 8  => data  <= '0'&X"06";
       when 9  => data  <= '0'&X"80"; --Initialization Stop
       when 10 => data  <= '1'&X"53"; --S--Data Send Start --
       when 11 => data  <= '1'&X"79"; --Y
       when 12 => data  <= '1'&X"73"; --S
       when 13 => data  <= '1'&X"74"; --T
       when 14 => data  <= '1'&X"65"; --E
       when 15 => data  <= '1'&X"6D"; --M
       when 16 => data  <= '1'&X"20"; --space 
       when 17 => data  <= '1'&X"52"; --R
       when 18 => data  <= '1'&X"65"; --E
       when 19 => data  <= '1'&X"61"; --A
       when 20 => data  <= '1'&X"64"; --D
       when 21 => data  <= '1'&X"79"; --Y
       when 22 => data  <= '0'&X"C0";--Change address to bottom left of screen--
       when 23 => data  <= '1'&X"3D";--=, Continue Sending
       when 24 => data  <= '1'&X"3D";--=
       when 25 => data  <= '1'&X"3E";-->
       when 26 => data  <= '1'&X"44";--D
       when 27 => data  <= '1'&X"45";--E
       when 28 => data  <= '1'&X"41";--A
       when 29 => data  <= '1'&X"44";--D,Done Sending--
       when others => data <= '0'&X"38"; -- what is the reset signal
   end case;
end process;


clk_en_inst: process(clk)
	begin
	if rising_edge(clk) then
		if (clk_cnt = cnt_max) then
			clk_cnt <= 0;
			clk_en <= '1';
		else
			clk_cnt <= clk_cnt + 1;
			clk_en <= '0';
		end if;
	end if;
end process;
 
LCD_addr(15 downto 8)  <= 0x"3" & addr_i(7 downto 4) ;
LCD_addr(7 downto 0)   <= 0x"3" & addr_i(3 downto 0);
LCD_data(31 downto 24) <= 0x"3" & data_i(15 downto 12);
LCD_data(23 downto 16) <= 0x"3" & data_i(11 downto 8);
LCD_data(15 downto 8)  <= 0x"3" & data_i(7 downto 4);
LCD_data(7 downto 0)   <= 0x"3" & data_i(3 downto 0);
-- First Line  --
-- Text: "---Test-Mode----", - = space
LCD_TestMode     <= x"20" & x"20" & x"20" & x"54" & x"65" & x"73" & x"74" & x"20" & x"4D" & x"6F" & x"64" & x"65" & x"20" & x"20" & x"20" & x"20";
-- Text: "---Pause-Mode---", - = space
LCD_PauseMode    <= x"20" & x"20" & x"20" & x"50" & x"61" & x"75" & x"73" & x"65" & x"20" & x"4D" & x"6F" & x"64" & x"65" & x"20" & x"20" & x"20";
-- Text: "-Initializing.--", - = space
LCD_InitMode     <= x"20" & x"49" & x"6E" & x"69" & x"74" & x"69" & x"61" & x"6C" & x"69" & x"7A" & x"69" & x"6E" & x"67" & x"2E" & x"20" & x"20";
-- Text: "----PWM-Mode----", - = space
LCD_PWMMode      <= x"20" & x"20" & x"20" & x"20" & x"50" & x"57" & x"4D" & x"20" & x"4D" & x"6F" & x"64" & x"65" & x"20" & x"20" & x"20" & x"20";
-- Second Line --
-- Text: "----------------", - = space
LCD_EmptyLine    <= x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20";
-- Text: "--0xZZ--0xZZZZ--", - = space
LCD_DataAddrLine <= x"20" & x"20" & x"30" & x"78" & LCD_addr(15 downto 8) & LCD_addr(7 downto 0) & x"20" & x"20" &  x"30" & x"78" & LCD_data(31 downto 24) & LCD_data(23 downto 16) & LCD_data(15 downto 8) & LCD_data(7 downto 0) & x"20" & x"20";

-- Text: "----ZZZZ--Hz----", - = space
LCD_PWMLine      <= x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20";

process(clk)
begin
  if 
end process;

process(clk_en,reset_n)
begin  
  if reset_n = '0' then 
    EN_sig   <= '0';
    RS_sig   <= '0';
  elsif rising_edge(clk_en) then
    case state is
    when start => 
        EN_sig <= '0';
        RS_sig <= data(8);
        data_o <= data(7 downto 0);
        state <= enable;
    
    when enable =>
        EN_sig <= '1';
        state <= repeat;
    when repeat =>
        EN_sig <= '0';
        if byteSel < 29 then
            byteSel <= byteSel + 1;
        else	 
           byteSel <= 22;           
        end if;
        state <= start; 	
    end case;     	  
  end if;
end process;

end user_logic;  
 