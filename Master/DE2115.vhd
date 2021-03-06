LIBRARY ieee;
   USE ieee.std_logic_1164.all;

ENTITY DE2115 IS
   PORT (
 -- 			Clock Input	 	     
      CLOCK_50    : IN STD_LOGIC;								-- On Board 50 MHz
      --EXT_CLOCK   : IN STD_LOGIC;								-- External Clock
-- 			Push Button		      
      KEY         : IN STD_LOGIC_VECTOR(3 DOWNTO 0);		-- Pushbutton[3:0]
-- 			DPDT Switch		      
--      SW          : IN STD_LOGIC_VECTOR(17 DOWNTO 0);		-- Toggle Switch[17:0]
-- 			7-SEG Dispaly	      
--		HEX0 			: out std_logic_vector(6 downto 0) :=  "1111111";
--		HEX1 			: out std_logic_vector(6 downto 0) :=  "1111111";
--		HEX2 			: out std_logic_vector(6 downto 0) :=  "1111111";
--		HEX3 			: out std_logic_vector(6 downto 0) :=  "1111111";
--		HEX4 			: out std_logic_vector(6 downto 0) :=  "1111111";
--		HEX5 			: out std_logic_vector(6 downto 0) :=  "1111111";
--		HEX6 			: out std_logic_vector(6 downto 0) :=  "1111111";
--		HEX7 			: out std_logic_vector(6 downto 0) :=  "1111111";
-- 			LED		      
--      LEDG        : OUT STD_LOGIC_VECTOR(8 DOWNTO 0) := (others => '0');		-- LED Green[8:0]
--      LEDR        : OUT STD_LOGIC_VECTOR(17 DOWNTO 0) := (others => '0');		-- LED Red[17:0]
-- 			UART	      
--      UART_TXD    : OUT STD_LOGIC;								-- UART Transmitter
--      UART_RXD    : IN STD_LOGIC;								-- UART Receiver
-- 			IRDA	      
--      IRDA_TXD    : OUT STD_LOGIC;							-- IRDA Transmitter
--      IRDA_RXD    : IN STD_LOGIC;								-- IRDA Receiver
-- 			SDRAM Interface		      
--      DRAM_DQ     : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);	-- SDRAM Data bus 16 Bits
--      DRAM_ADDR   : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);		-- SDRAM Address bus 12 Bits
--      DRAM_LDQM   : OUT STD_LOGIC;								-- SDRAM Low-byte Data Mask
--      DRAM_UDQM   : OUT STD_LOGIC;								-- SDRAM High-byte Data Mask
--      DRAM_WE_N   : OUT STD_LOGIC;								-- SDRAM Write Enable
--      DRAM_CAS_N  : OUT STD_LOGIC;								-- SDRAM Column Address Strobe
--      DRAM_RAS_N  : OUT STD_LOGIC;								-- SDRAM Row Address Strobe
--      DRAM_CS_N   : OUT STD_LOGIC;								-- SDRAM Chip Select
--      DRAM_BA_0   : OUT STD_LOGIC;								-- SDRAM Bank Address 0
--      DRAM_BA_1   : OUT STD_LOGIC;								-- SDRAM Bank Address 1
--      DRAM_CLK    : OUT STD_LOGIC;								-- SDRAM Clock
--      DRAM_CKE    : OUT STD_LOGIC;								-- SDRAM Clock Enable
---- 			Flash Interface		      
--      FL_DQ       : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);	-- FLASH Data bus 8 Bits
--      FL_ADDR     : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);	-- FLASH Address bus 20 Bits
--      FL_WE_N     : OUT STD_LOGIC;								-- FLASH Write Enable
--      FL_RST_N    : OUT STD_LOGIC;								-- FLASH Reset
--      FL_OE_N     : OUT STD_LOGIC;								-- FLASH Output Enable
--      FL_CE_N     : OUT STD_LOGIC;								-- FLASH Chip Enable
---- 			SRAM Interface		      
     SRAM_DQ     : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);	-- SRAM Data bus 16 Bits
     SRAM_ADDR   : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);	-- SRAM Address bus 18 Bits
     SRAM_UB_N   : OUT STD_LOGIC;								-- SRAM High-byte Data Mask
     SRAM_LB_N   : OUT STD_LOGIC;								-- SRAM Low-byte Data Mask
     SRAM_WE_N   : OUT STD_LOGIC;								-- SRAM Write Enable
     SRAM_CE_N   : OUT STD_LOGIC;								-- SRAM Chip Enable
     SRAM_OE_N   : OUT STD_LOGIC;								-- SRAM Output Enable
-- 			ISP1362 Interface	      
--      OTG_DATA    : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);	-- ISP1362 Data bus 16 Bits
--      OTG_ADDR    : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);		-- ISP1362 Address 2 Bits
--      OTG_CS_N    : OUT STD_LOGIC;								-- ISP1362 Chip Select
--      OTG_RD_N    : OUT STD_LOGIC;								-- ISP1362 Read
--      OTG_WR_N    : OUT STD_LOGIC;								-- ISP1362 Write
--      OTG_RST_N   : OUT STD_LOGIC;								-- ISP1362 Reset
--      OTG_FSPEED  : OUT STD_LOGIC;								-- USB Full Speed,	0 = Enable, Z = Disable
--      OTG_LSPEED   : OUT STD_LOGIC;								-- USB Low Speed, 	0 = Enable, Z = Disable
--      OTG_INT0     : IN STD_LOGIC;								-- ISP1362 Interrupt 0
--      OTG_INT1     : IN STD_LOGIC;								-- ISP1362 Interrupt 1
--      OTG_DREQ0    : IN STD_LOGIC;								-- ISP1362 DMA Request 0
--      OTG_DREQ1    : IN STD_LOGIC;								-- ISP1362 DMA Request 1
--      OTG_DACK0_N  : OUT STD_LOGIC;								-- ISP1362 DMA Acknowledge 0
--      OTG_DACK1_N  : OUT STD_LOGIC;								-- ISP1362 DMA Acknowledge 1
---- 			LCD Module 16X2		            
     LCD_ON      : OUT STD_LOGIC := '1';								-- LCD Power ON/OFF
     LCD_BLON    : OUT STD_LOGIC := '1';								-- LCD Back Light ON/OFF
     LCD_RW      : OUT STD_LOGIC := '0';								-- LCD Read/Write Select, 0 = Write, 1 = Read
     LCD_EN      : OUT STD_LOGIC;								-- LCD Enable
     LCD_RS      : OUT STD_LOGIC;								-- LCD Command/Data Select, 0 = Command, 1 = Data
     LCD_DATA    : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);	-- LCD Data bus 8 bits
-- 			SD_Card Interface	
--      SD_DAT       : INOUT STD_LOGIC;							-- SD Card Data
--      SD_DAT3      : INOUT STD_LOGIC;							-- SD Card Data 3
--      SD_CMD       : INOUT STD_LOGIC;							-- SD Card Command Signal
--      SD_CLK       : OUT STD_LOGIC;								-- SD Card Clock
----			USB JTAG link	      
--      TDI          : IN STD_LOGIC;								-- CPLD -> FPGA (Data in)
--      TCK          : IN STD_LOGIC;								-- CPLD -> FPGA (Clock)
--      TCS          : IN STD_LOGIC;								-- CPLD -> FPGA (CS)
--      TDO          : OUT STD_LOGIC;								-- FPGA -> CPLD (Data out)      
---- 			I2C		      
--      I2C_SDAT     : INOUT STD_LOGIC;							-- I2C Data
--      I2C_SCLK     : OUT STD_LOGIC;								-- I2C Clock
---- 			PS2		      
--      PS2_DAT      : IN STD_LOGIC;								-- PS2 Data
--      PS2_CLK      : IN STD_LOGIC;								-- PS2 Clock
---- 			VGA		      
--      VGA_CLK      : OUT STD_LOGIC;								-- VGA Clock
--      VGA_HS       : OUT STD_LOGIC;								-- VGA H_SYNC
--      VGA_VS       : OUT STD_LOGIC;								-- VGA V_SYNC
--      VGA_BLANK    : OUT STD_LOGIC;								-- VGA BLANK
--      VGA_SYNC     : OUT STD_LOGIC;								-- VGA SYNC
--      VGA_R        : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);	-- VGA Red[9:0]
--      VGA_G        : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);	-- VGA Green[9:0]
--      VGA_B        : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);	-- VGA Blue[9:0]
---- 			Ethernet Interface	      
--      ENET_DATA    : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);-- DM9000A DATA bus 16Bits
--      ENET_CMD     : OUT STD_LOGIC;								-- DM9000A Command/Data Select, 0 = Command, 1 = Data
--      ENET_CS_N    : OUT STD_LOGIC;								-- DM9000A Chip Select
--      ENET_WR_N    : OUT STD_LOGIC;								-- DM9000A Write
--      ENET_RD_N    : OUT STD_LOGIC;								-- DM9000A Read
--      ENET_RST_N   : OUT STD_LOGIC;								-- DM9000A Reset
--      ENET_INT     : IN STD_LOGIC;								-- DM9000A Interrupt
--      ENET_CLK     : OUT STD_LOGIC;								-- DM9000A Clock 25 MHz
---- 			Audio CODEC		      
--      AUD_ADCLRCK  : INOUT STD_LOGIC;							-- Audio CODEC ADC LR Clock
--      AUD_ADCDAT   : IN STD_LOGIC;								-- Audio CODEC ADC Data
--      AUD_DACLRCK  : INOUT STD_LOGIC;							-- Audio CODEC DAC LR Clock
--      AUD_DACDAT   : OUT STD_LOGIC;								-- Audio CODEC DAC Data
--      AUD_BCLK     : INOUT STD_LOGIC;							-- Audio CODEC Bit-Stream Clock
--      AUD_XCK      : OUT STD_LOGIC;								-- Audio CODEC Chip Clock
---- 			TV Decoder		      
--      TD_DATA      : IN STD_LOGIC_VECTOR(7 DOWNTO 0);		-- TV Decoder Data bus 8 bits
--      TD_HS        : IN STD_LOGIC;								-- TV Decoder H_SYNC
--      TD_VS        : IN STD_LOGIC;								-- TV Decoder V_SYNC
--      TD_RESET     : OUT STD_LOGIC;								-- TV Decoder Reset
-- 			GPIO	      
      GPIO         : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0)-- GPIO Connection 0                                                                                              
   );
END DE2115;

ARCHITECTURE structural OF DE2115 IS

-- TOP LEVEL COMPONENT

COMPONENT top_level is
	port (
		reset_n    : in    std_logic;
		clk_i      : in    std_logic;
		op_modes   : in    std_logic_vector(2 downto 0);

        sram_io    : inout  std_logic_vector(15 downto 0);
        sram_addr  : out    std_logic_vector(19 downto 0);
        sram_WE_n  : out    std_logic;
        sram_OE_n  : out    std_logic;
        sram_CE_n  : out    std_logic;
        sram_LB_n  : out    std_logic;
        sram_UB_n  : out    std_logic;

        pwm_data_o : out    std_logic;

        lcd_data_o     : inout  std_logic_vector(7 downto 0);
        lcd_EN     : out    std_logic;
        lcd_RS     : out    std_logic;

        i2c_SDA    : inout  std_logic;
        i2c_SCL    : inout  std_logic
	);
end COMPONENT;

BEGIN
   
-- INSTANTIATION OF THE TOP LEVEL COMPONENT

Inst_top_level: top_level
    port map (
        reset_n    => KEY(0),
        clk_i      => CLOCK_50,
        op_modes   => KEY(3 downto 1),
        
        sram_io    => SRAM_DQ,
        sram_addr  => SRAM_ADDR,
        sram_WE_n  => SRAM_WE_N,
        sram_OE_n  => SRAM_OE_N,
        sram_CE_n  => SRAM_CE_N,
        sram_LB_n  => SRAM_LB_N,
        sram_UB_n  => SRAM_UB_N,

        pwm_data_o => GPIO(2),

        lcd_data_o     => LCD_DATA,
        lcd_EN     => LCD_EN,
        lcd_RS     => LCD_RS,

        i2c_SDA    => GPIO(0),
        i2c_SCL    => GPIO(1)
    );

END structural;



