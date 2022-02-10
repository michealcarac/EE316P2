LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Mode_Control_Logic is
	PORT (
		clock : IN std_logic;
		
		KEY0 : IN std_logic;
		KEY1 : IN std_logic;
		KEY2 : IN std_logic;
		KEY3 : IN std_logic;
		
		LCD_Data : OUT std_logic(7 downto 0);
		
		
	);
END Mode_Control_Logic;

ARCHITECTURE behavior of Mode_Control_Logic is

	TYPE operation_modes is (INIT, TEST, PAUSE, HZ60, HZ120, HZ1000);
	SIGNAL operation_mode: operation_modes := INIT;
	
	SIGNAL clock 		: std_logic_vector;
	SIGNAL count_en 	: std_logic_vector;

	COMPONENT I2C is
	PORT(
		clk       : IN     STD_LOGIC;                    --system clock
		reset_n   : IN     STD_LOGIC;                    --active low reset
		ena       : IN     STD_LOGIC;                    --latch in command
		addr      : IN     STD_LOGIC_VECTOR(6 DOWNTO 0); --address of target slave
		rw        : IN     STD_LOGIC;                    --'0' is write, '1' is read
		data_wr   : IN     STD_LOGIC_VECTOR(7 DOWNTO 0); --data to write to slave
		busy      : OUT    STD_LOGIC;                    --indicates transaction in progress
		data_rd   : OUT    STD_LOGIC_VECTOR(7 DOWNTO 0); --data read from slave
		ack_error : BUFFER STD_LOGIC;                    --flag if improper acknowledge from slave
		sda       : INOUT  STD_LOGIC;                    --serial data output of i2c bus
		scl       : INOUT  STD_LOGIC);                   --serial clock output of i2c bus
	);
	END COMPONENT I2C;
	
	COMPONENT SRAM is
	PORT(
	   sram_io     : inout std_logic_vector(DataSize-1 downto 0); --DataSize bit data, To and From SRAM
	   data_i      : in  std_logic_vector(DataSize-1 downto 0); --DataSize bit data, From User Logic
	   addr_i      : in std_logic_vector(AddrSize-1 downto 0);  --AddrSize bit Address
	   RW          : in std_logic; --Read/Write, 0 = write, 1 = read 
	   RW_en       : in std_logic; --1 => enable read/write, pulse for 20ns then hold zero for desired time
	   clk         : in std_logic; --Clk in (50Mhz)
	   data_o      : out std_logic_vector(DataSize-1 downto 0); --DataSize bit data, To User Logic
	   addr_o      : out std_logic_vector(AddrSize-1 downto 0); --AddrSize bit Address
	   WE_n        : out std_logic; --Write Enable, Active Low
	   OE_n        : out std_logic; --Output Enable, Active Low
	   CE_n        : out std_logic; --Chip Enable, Active Low
      LB_n        : out std_logic; --Lower-Byte Control, Active Low
	   UB_n        : out std_logic; --Upper-Byte Control, Active Low
	   busy        : out std_logic;  --Busy back to user logic
	);
	END COMPONENT SRAM;
	
	COMPONENT ROM is
	PORT(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
	);
	END COMPONENT SRAM;
	
	COMPONENT LCD is
	PORT(
		clk       : IN     STD_LOGIC;                     --system clock
		reset_n   : IN     STD_LOGIC;
		oData     : OUT    STD_LOGIC_VECTOR(7 DOWNTO 0);  -- 8 bits, MSB is RS
		RS        : OUT    STD_LOGIC;
		EN        : OUT    STD_LOGIC
	);
	END COMPONENT LCD;

	COMPONENT PWM is
	PORT(
		clk : in std_logic;
		SRAM_in : in std_logic_vector(15 downto 0);
		frequency : in std_logic_vector(1 downto 0);
		reset : in std_logic;
		address_out : out std_logic_vector(7 downto 0);
		output : out std_logic
	);
	END COMPONENT PWM is
	
	BEGIN
	inst_sram : SRAM
		port map(
			
		);
	
	inst_rom : ROM
		port map(
		
		);
		
	inst_i2c : I2C
		port map(
		
		);
	
	inst_pwm : PWM
		port map(
		
		);
		
	inst_lcd : LCD
		port map(
		
		);
	
END ARCHITECTURE behavior;
	
PROCESS(clock)
BEGIN
	if rising_edge() then
		case operation_mode is
			when TEST => 
				
				LCD_Data = ;
				cnt_en 
				
				if KEY0 => 
					operation_mode <= INIT;
				elsif KEY1 => 
					operation_mode <= PAUSE;
				elsif KEY2 =>
					operation_mode <= HZ60;
				end if;
			
			when PAUSE => 
			
				LCD_Data = ;
				cnt_en = 
			
				if KEY0 => 
					operation_mode <= INIT;
				elsif KEY1 =>
					operation_mode <= TEST;
				end if;
				
			when HZ60 =>
			
				pwmFreq = "00";
				cnt_en = 
			
				if KEY0 =>
					operation_mode <= INIT;
				elsif KEY2 => 
					operation_mode <= TEST;
				elsif KEY3 => 
					operation_mode <= HZ120;
				end if;
			
			when HZ120 =>
			
				pwmFreq = "01";
			
				if KEY0 =>
					operation_mode <= INIT; 
				elsif KEY2 => 
					operation_mode <= TEST; 
				elsif KEY3 => 
					operation_mode <= HZ1000;
				end if;
			
			when HZ1000 =>
			
				pwmFreq = "10";
			
				if KEY0 =>
					operation_mode <= INIT; 
				elsif KEY2 => 
					operation_mode <= TEST;
				elsif KEY3 => 
					operation_mode <= HZ60;
				end if;
			when others =>
			-- do nothing
		end case; 
	end if;

PROCESS()
	begin
		if operation_mode = INIT then
		case sram_mode_reg is 
			when start =>
				cnt_reset <= '1';
				sram_mode <= cnt_advn;
			when cnt_advn =>
				cnt_reset <= '0';
				initStateCountEn <= '1';
				sram_mode <= send_addr;
			when send_addr =>
				initStateCountEn <= '0';
				sram_mode <= rw_data;
			when rw_data =>
				initWritePulse <= '1';
				sram_mode <= wait1;
			when wait1 =>
				initWritePulse <= '0';
				if sram_busy = '0' then
					sram_mode <= cnt_advn;
				end if;
		end case;
	end if;
	


