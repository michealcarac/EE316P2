-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "02/14/2022 17:15:39"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DE2115 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	SRAM_ADDR : OUT std_logic_vector(19 DOWNTO 0);
	SRAM_UB_N : OUT std_logic;
	SRAM_LB_N : OUT std_logic;
	SRAM_WE_N : OUT std_logic;
	SRAM_CE_N : OUT std_logic;
	SRAM_OE_N : OUT std_logic;
	LCD_ON : OUT std_logic;
	LCD_BLON : OUT std_logic;
	LCD_RW : OUT std_logic;
	LCD_EN : OUT std_logic;
	LCD_RS : OUT std_logic;
	LCD_DATA : INOUT std_logic_vector(7 DOWNTO 0);
	GPIO : INOUT std_logic_vector(35 DOWNTO 0)
	);
END DE2115;

-- Design Ports Information
-- SRAM_ADDR[0]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[1]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[2]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[3]	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[4]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[5]	=>  Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[6]	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[7]	=>  Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[8]	=>  Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[9]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[10]	=>  Location: PIN_AF2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[11]	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[12]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[13]	=>  Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[14]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[15]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[16]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[17]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[18]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[19]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_UB_N	=>  Location: PIN_AC4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_LB_N	=>  Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_WE_N	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_CE_N	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_OE_N	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_ON	=>  Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_BLON	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_EN	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[3]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[4]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[5]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[7]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[8]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[9]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[10]	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[11]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[12]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[13]	=>  Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[14]	=>  Location: PIN_AF24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[15]	=>  Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[16]	=>  Location: PIN_AF25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[17]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[18]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[19]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[20]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[21]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[22]	=>  Location: PIN_AG25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[23]	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[24]	=>  Location: PIN_AH25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[25]	=>  Location: PIN_AE25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[26]	=>  Location: PIN_AG22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[27]	=>  Location: PIN_AE24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[28]	=>  Location: PIN_AH22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[29]	=>  Location: PIN_AF26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[30]	=>  Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[31]	=>  Location: PIN_AG23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[32]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[33]	=>  Location: PIN_AH26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[34]	=>  Location: PIN_AH23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[35]	=>  Location: PIN_AG26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[0]	=>  Location: PIN_AH3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[1]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[2]	=>  Location: PIN_AG4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[3]	=>  Location: PIN_AH4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[4]	=>  Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[5]	=>  Location: PIN_AG6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[6]	=>  Location: PIN_AH6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[7]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[8]	=>  Location: PIN_AD1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[9]	=>  Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[10]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[11]	=>  Location: PIN_AE1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[12]	=>  Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[13]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[14]	=>  Location: PIN_AF3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[15]	=>  Location: PIN_AG3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[1]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[2]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[3]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[4]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[5]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[6]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[7]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[0]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[1]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DE2115 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SRAM_ADDR : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_SRAM_UB_N : std_logic;
SIGNAL ww_SRAM_LB_N : std_logic;
SIGNAL ww_SRAM_WE_N : std_logic;
SIGNAL ww_SRAM_CE_N : std_logic;
SIGNAL ww_SRAM_OE_N : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_LCD_BLON : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_top_level|lcd_entity|clk_en~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_top_level|count_1hz|r_reg[0]~8_combout\ : std_logic;
SIGNAL \Inst_top_level|count_1hz|r_reg[0]~9\ : std_logic;
SIGNAL \Inst_top_level|count_1hz|r_reg[1]~11_combout\ : std_logic;
SIGNAL \Inst_top_level|count_1hz|r_reg[1]~12\ : std_logic;
SIGNAL \Inst_top_level|count_1hz|r_reg[2]~13_combout\ : std_logic;
SIGNAL \Inst_top_level|count_1hz|r_reg[2]~14\ : std_logic;
SIGNAL \Inst_top_level|count_1hz|r_reg[3]~15_combout\ : std_logic;
SIGNAL \Inst_top_level|count_1hz|r_reg[3]~16\ : std_logic;
SIGNAL \Inst_top_level|count_1hz|r_reg[4]~17_combout\ : std_logic;
SIGNAL \Inst_top_level|count_1hz|r_reg[4]~18\ : std_logic;
SIGNAL \Inst_top_level|count_1hz|r_reg[5]~19_combout\ : std_logic;
SIGNAL \Inst_top_level|count_1hz|r_reg[5]~20\ : std_logic;
SIGNAL \Inst_top_level|count_1hz|r_reg[6]~21_combout\ : std_logic;
SIGNAL \Inst_top_level|count_1hz|r_reg[6]~22\ : std_logic;
SIGNAL \Inst_top_level|count_1hz|r_reg[7]~23_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[1]~31_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[2]~33_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[3]~35_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[5]~39_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[7]~43_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[8]~45_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[9]~47_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[11]~51_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[12]~53_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[14]~57_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[15]~59_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[16]~61_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[19]~67_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[21]~71_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[22]~73_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~1\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~3\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~5\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~6_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~7\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~8_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~9\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~10_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~11\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~12_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~13\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~14_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~15\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~16_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~17\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~18_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~19\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~20_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~21\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~22_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~23\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~24_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~25\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~26_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~27\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~28_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~29\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~30_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~31\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~32_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~33\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~34_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~35\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~36_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~37\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~38_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~39\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~40_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~41\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~42_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~43\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~44_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~45\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~46_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~47\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Add0~48_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[5]~27_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[9]~35_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[15]~47_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[16]~49_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~12_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~22_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~26_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count8[4]~13_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count8[6]~17_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[5]~29_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[13]~45_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[15]~49_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[16]~51_combout\ : std_logic;
SIGNAL \Inst_top_level|count_enable~q\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|clk_en~q\ : std_logic;
SIGNAL \Inst_top_level|count_1hz|r_reg[0]~10_combout\ : std_logic;
SIGNAL \Inst_top_level|Selector2~1_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM|fstate.write2~q\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux62~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Selector5~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Selector5~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Selector5~2_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Equal0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Equal0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Equal0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Equal0~3_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Equal0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Equal0~5_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Equal0~6_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Equal0~7_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|Equal0~8_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Equal0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM|fstate.write1~q\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|clk_cnt~0_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|clk_cnt~1_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|clk_cnt~2_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|clk_cnt~3_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|clk_cnt~4_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|clk_cnt~5_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|clk_cnt~6_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|clk_cnt~7_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|clk_cnt~8_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|clk_cnt~9_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|clk_cnt~10_combout\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|clk_cnt~11_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[0]~57_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM|fstate~13_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|clk_cnt~6_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|clk_cnt~10_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|second_line[2][40]~2_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|second_line[2][16]~4_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux66~13_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|second_line[2][33]~7_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~8_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~10_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux67~3_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux37~2_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~62_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~63_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~68_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux65~2_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~80_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|stretch~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux5~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~3_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.rd~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Selector7~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~8_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~9_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|stretch~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Equal0~5_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector21~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux37~3_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~88_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~90_combout\ : std_logic;
SIGNAL \Inst_top_level|Selector6~6_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~91_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux66~8_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux66~20_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count8[0]~21_combout\ : std_logic;
SIGNAL \GPIO[3]~input_o\ : std_logic;
SIGNAL \GPIO[4]~input_o\ : std_logic;
SIGNAL \GPIO[5]~input_o\ : std_logic;
SIGNAL \GPIO[6]~input_o\ : std_logic;
SIGNAL \GPIO[7]~input_o\ : std_logic;
SIGNAL \GPIO[8]~input_o\ : std_logic;
SIGNAL \GPIO[9]~input_o\ : std_logic;
SIGNAL \GPIO[10]~input_o\ : std_logic;
SIGNAL \GPIO[11]~input_o\ : std_logic;
SIGNAL \GPIO[12]~input_o\ : std_logic;
SIGNAL \GPIO[13]~input_o\ : std_logic;
SIGNAL \GPIO[14]~input_o\ : std_logic;
SIGNAL \GPIO[15]~input_o\ : std_logic;
SIGNAL \GPIO[16]~input_o\ : std_logic;
SIGNAL \GPIO[17]~input_o\ : std_logic;
SIGNAL \GPIO[18]~input_o\ : std_logic;
SIGNAL \GPIO[19]~input_o\ : std_logic;
SIGNAL \GPIO[20]~input_o\ : std_logic;
SIGNAL \GPIO[21]~input_o\ : std_logic;
SIGNAL \GPIO[22]~input_o\ : std_logic;
SIGNAL \GPIO[23]~input_o\ : std_logic;
SIGNAL \GPIO[24]~input_o\ : std_logic;
SIGNAL \GPIO[25]~input_o\ : std_logic;
SIGNAL \GPIO[26]~input_o\ : std_logic;
SIGNAL \GPIO[27]~input_o\ : std_logic;
SIGNAL \GPIO[28]~input_o\ : std_logic;
SIGNAL \GPIO[29]~input_o\ : std_logic;
SIGNAL \GPIO[30]~input_o\ : std_logic;
SIGNAL \GPIO[31]~input_o\ : std_logic;
SIGNAL \GPIO[32]~input_o\ : std_logic;
SIGNAL \GPIO[33]~input_o\ : std_logic;
SIGNAL \GPIO[34]~input_o\ : std_logic;
SIGNAL \GPIO[35]~input_o\ : std_logic;
SIGNAL \LCD_DATA[0]~input_o\ : std_logic;
SIGNAL \LCD_DATA[1]~input_o\ : std_logic;
SIGNAL \LCD_DATA[2]~input_o\ : std_logic;
SIGNAL \LCD_DATA[3]~input_o\ : std_logic;
SIGNAL \LCD_DATA[4]~input_o\ : std_logic;
SIGNAL \LCD_DATA[5]~input_o\ : std_logic;
SIGNAL \LCD_DATA[6]~input_o\ : std_logic;
SIGNAL \LCD_DATA[7]~input_o\ : std_logic;
SIGNAL \GPIO[0]~input_o\ : std_logic;
SIGNAL \GPIO[1]~input_o\ : std_logic;
SIGNAL \GPIO[2]~input_o\ : std_logic;
SIGNAL \Inst_top_level|en_1hz|clk_en~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM|fstate.write2~feeder_combout\ : std_logic;
SIGNAL \GPIO[3]~output_o\ : std_logic;
SIGNAL \GPIO[4]~output_o\ : std_logic;
SIGNAL \GPIO[5]~output_o\ : std_logic;
SIGNAL \GPIO[6]~output_o\ : std_logic;
SIGNAL \GPIO[7]~output_o\ : std_logic;
SIGNAL \GPIO[8]~output_o\ : std_logic;
SIGNAL \GPIO[9]~output_o\ : std_logic;
SIGNAL \GPIO[10]~output_o\ : std_logic;
SIGNAL \GPIO[11]~output_o\ : std_logic;
SIGNAL \GPIO[12]~output_o\ : std_logic;
SIGNAL \GPIO[13]~output_o\ : std_logic;
SIGNAL \GPIO[14]~output_o\ : std_logic;
SIGNAL \GPIO[15]~output_o\ : std_logic;
SIGNAL \GPIO[16]~output_o\ : std_logic;
SIGNAL \GPIO[17]~output_o\ : std_logic;
SIGNAL \GPIO[18]~output_o\ : std_logic;
SIGNAL \GPIO[19]~output_o\ : std_logic;
SIGNAL \GPIO[20]~output_o\ : std_logic;
SIGNAL \GPIO[21]~output_o\ : std_logic;
SIGNAL \GPIO[22]~output_o\ : std_logic;
SIGNAL \GPIO[23]~output_o\ : std_logic;
SIGNAL \GPIO[24]~output_o\ : std_logic;
SIGNAL \GPIO[25]~output_o\ : std_logic;
SIGNAL \GPIO[26]~output_o\ : std_logic;
SIGNAL \GPIO[27]~output_o\ : std_logic;
SIGNAL \GPIO[28]~output_o\ : std_logic;
SIGNAL \GPIO[29]~output_o\ : std_logic;
SIGNAL \GPIO[30]~output_o\ : std_logic;
SIGNAL \GPIO[31]~output_o\ : std_logic;
SIGNAL \GPIO[32]~output_o\ : std_logic;
SIGNAL \GPIO[33]~output_o\ : std_logic;
SIGNAL \GPIO[34]~output_o\ : std_logic;
SIGNAL \GPIO[35]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[0]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[1]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[2]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[3]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[4]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[5]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[6]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[7]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[8]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[9]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[10]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[11]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[12]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[13]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[14]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[15]~output_o\ : std_logic;
SIGNAL \LCD_DATA[0]~output_o\ : std_logic;
SIGNAL \LCD_DATA[1]~output_o\ : std_logic;
SIGNAL \LCD_DATA[2]~output_o\ : std_logic;
SIGNAL \LCD_DATA[3]~output_o\ : std_logic;
SIGNAL \LCD_DATA[4]~output_o\ : std_logic;
SIGNAL \LCD_DATA[5]~output_o\ : std_logic;
SIGNAL \LCD_DATA[6]~output_o\ : std_logic;
SIGNAL \LCD_DATA[7]~output_o\ : std_logic;
SIGNAL \GPIO[0]~output_o\ : std_logic;
SIGNAL \GPIO[1]~output_o\ : std_logic;
SIGNAL \GPIO[2]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[0]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[1]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[2]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[3]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[4]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[5]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[6]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[7]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[8]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[9]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[10]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[11]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[12]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[13]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[14]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[15]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[16]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[17]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[18]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[19]~output_o\ : std_logic;
SIGNAL \SRAM_UB_N~output_o\ : std_logic;
SIGNAL \SRAM_LB_N~output_o\ : std_logic;
SIGNAL \SRAM_WE_N~output_o\ : std_logic;
SIGNAL \SRAM_CE_N~output_o\ : std_logic;
SIGNAL \SRAM_OE_N~output_o\ : std_logic;
SIGNAL \LCD_ON~output_o\ : std_logic;
SIGNAL \LCD_BLON~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \LCD_EN~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \Inst_top_level|count_60ns|r_reg[0]~8_combout\ : std_logic;
SIGNAL \Inst_top_level|count_60ns|r_reg[2]~14\ : std_logic;
SIGNAL \Inst_top_level|count_60ns|r_reg[3]~16\ : std_logic;
SIGNAL \Inst_top_level|count_60ns|r_reg[4]~17_combout\ : std_logic;
SIGNAL \Inst_top_level|en_60ns|clk_cnt[0]~1_combout\ : std_logic;
SIGNAL \Inst_top_level|en_60ns|clk_cnt[1]~0_combout\ : std_logic;
SIGNAL \Inst_top_level|en_60ns|Equal0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|en_60ns|clk_en~q\ : std_logic;
SIGNAL \Inst_top_level|count_60ns|r_reg[0]~10_combout\ : std_logic;
SIGNAL \Inst_top_level|count_60ns|r_reg[4]~18\ : std_logic;
SIGNAL \Inst_top_level|count_60ns|r_reg[5]~19_combout\ : std_logic;
SIGNAL \Inst_top_level|count_60ns|r_reg[5]~20\ : std_logic;
SIGNAL \Inst_top_level|count_60ns|r_reg[6]~22\ : std_logic;
SIGNAL \Inst_top_level|count_60ns|r_reg[7]~23_combout\ : std_logic;
SIGNAL \Inst_top_level|count_60ns|Equal0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|count_reset~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[1]~19_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[1]~20\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[2]~21_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[2]~22\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[3]~23_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[3]~24\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[4]~25_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[4]~26\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[5]~28\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[6]~29_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[6]~30\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[7]~32\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[8]~33_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[8]~34\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[9]~36\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[10]~37_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[10]~38\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[11]~39_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[11]~40\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[12]~41_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[12]~42\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[13]~44\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[14]~45_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[14]~46\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[15]~48\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[16]~50\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[17]~51_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[17]~52\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[18]~53_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[18]~54\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[19]~55_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Equal0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[7]~31_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Equal0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Equal0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Equal0~3_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Cont[13]~43_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Equal0~5_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Equal0~6_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|Equal0~6_wirecell_combout\ : std_logic;
SIGNAL \Inst_top_level|power_on_reset|oRESET~q\ : std_logic;
SIGNAL \Inst_top_level|sys_reset_n~combout\ : std_logic;
SIGNAL \Inst_top_level|count_reset~q\ : std_logic;
SIGNAL \Inst_top_level|count_60ns|r_reg[0]~9\ : std_logic;
SIGNAL \Inst_top_level|count_60ns|r_reg[1]~11_combout\ : std_logic;
SIGNAL \Inst_top_level|count_60ns|r_reg[1]~12\ : std_logic;
SIGNAL \Inst_top_level|count_60ns|r_reg[2]~13_combout\ : std_logic;
SIGNAL \Inst_top_level|count_60ns|r_reg[3]~15_combout\ : std_logic;
SIGNAL \Inst_top_level|count_60ns|Equal0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|ROM_done~0_combout\ : std_logic;
SIGNAL \Inst_top_level|ROM_done~q\ : std_logic;
SIGNAL \Inst_top_level|fstate.INIT~0_combout\ : std_logic;
SIGNAL \Inst_top_level|fstate.INIT~q\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Inst_top_level|count_60ns|r_reg[6]~21_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_data_i[0]~0_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_RW~q\ : std_logic;
SIGNAL \Inst_top_level|SRAM|tri_n~0_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM|tri_n~q\ : std_logic;
SIGNAL \Inst_top_level|SRAM_data_i[1]~1_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_data_i[2]~2_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_data_i[3]~3_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_data_i[4]~4_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_data_i[5]~5_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_data_i[6]~6_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_data_i[7]~7_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_data_i[8]~8_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_data_i[9]~9_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_data_i[10]~10_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_data_i[11]~11_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_data_i[12]~12_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_data_i[13]~13_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_data_i[14]~14_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_data_i[15]~15_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~1\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|clk_cnt~9_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~3\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|clk_cnt~8_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~5\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~7\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~8_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~9\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~10_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|clk_cnt~7_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~11\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~13\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~15\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~16_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~14_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|clk_cnt~5_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Equal39~3_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~6_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Equal39~4_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~17\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~19\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~20_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|clk_cnt~3_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~21\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~23\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~24_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|clk_cnt~2_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~25\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~27\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~29\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~30_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|clk_cnt~1_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~31\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~32_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|clk_cnt~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~28_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Equal39~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Add0~18_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|clk_cnt~4_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Equal39~1_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Equal39~2_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Equal39~5_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|clk_en~q\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|byteSel[0]~8\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|byteSel[1]~10\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|byteSel[2]~11_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|LessThan6~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|LessThan6~1_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|state.start~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|state.start~q\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|state.enable~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|state.enable~q\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|state.repeat~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|state.repeat~q\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|byteSel[2]~12\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|byteSel[3]~13_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|byteSel[3]~14\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|byteSel[4]~15_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|byteSel[4]~16\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|byteSel[5]~17_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|byteSel[1]~9_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|byteSel[0]~7_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Inst_top_level|rising_edge0|reg_0~q\ : std_logic;
SIGNAL \Inst_top_level|rising_edge0|reg_1~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \Inst_top_level|rising_edge1|reg_0~q\ : std_logic;
SIGNAL \Inst_top_level|rising_edge1|reg_1~q\ : std_logic;
SIGNAL \Inst_top_level|Selector3~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \Inst_top_level|rising_edge2|reg_0~q\ : std_logic;
SIGNAL \Inst_top_level|rising_edge2|reg_1~q\ : std_logic;
SIGNAL \Inst_top_level|Selector3~1_combout\ : std_logic;
SIGNAL \Inst_top_level|fstate.HZ120~q\ : std_logic;
SIGNAL \Inst_top_level|Selector4~0_combout\ : std_logic;
SIGNAL \Inst_top_level|fstate.HZ1000~q\ : std_logic;
SIGNAL \Inst_top_level|rising_edge1|data_o~combout\ : std_logic;
SIGNAL \Inst_top_level|rising_edge2|data_o~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Selector2~2_combout\ : std_logic;
SIGNAL \Inst_top_level|fstate.HZ60~q\ : std_logic;
SIGNAL \Inst_top_level|SRAM_addr_i[4]~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Selector0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|fstate.TEST~q\ : std_logic;
SIGNAL \Inst_top_level|fstate.PAUSE~0_combout\ : std_logic;
SIGNAL \Inst_top_level|fstate.PAUSE~q\ : std_logic;
SIGNAL \Inst_top_level|rising_edge0|data_o~combout\ : std_logic;
SIGNAL \Inst_top_level|Selector0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Selector2~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Selector7~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Selector6~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Selector6~5_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~84_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux33~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~34_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~33_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~35_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~37_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~28_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~93_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~38_combout\ : std_logic;
SIGNAL \Inst_top_level|fstate~10_combout\ : std_logic;
SIGNAL \Inst_top_level|Selector8~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Selector8~1_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~40_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~39_combout\ : std_logic;
SIGNAL \Inst_top_level|Selector9~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Selector9~1_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|Equal0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[1]~32\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[2]~34\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[3]~36\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[4]~37_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[4]~38\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[5]~40\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[6]~41_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[6]~42\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[7]~44\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[8]~46\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[9]~48\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[10]~49_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[10]~50\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[11]~52\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[12]~54\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[13]~55_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[13]~56\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[14]~58\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[15]~60\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[16]~62\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[17]~63_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[17]~64\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[18]~65_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[18]~66\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[19]~68\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[20]~69_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[20]~70\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[21]~72\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[22]~74\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[23]~75_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[23]~76\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[24]~77_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[24]~78\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[25]~79_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[25]~80\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[26]~81_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[26]~82\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[27]~84\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[28]~85_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[28]~86\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[29]~87_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_addr_i[4]~6_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_addr_i[5]~17_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_addr_i[5]~18_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[29]~88\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[30]~89_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[30]~90\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[31]~91_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_addr_i[7]~21_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_addr_i[7]~22_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_addr_i[6]~19_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_addr_i[6]~20_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|second_line[2][88]~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~41_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~43_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|Equal0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~86_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux64~0_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_addr_i[2]~11_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_addr_i[2]~12_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_addr_i[1]~9_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_addr_i[1]~10_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_addr_i[0]~7_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_addr_i[0]~8_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|second_line[2][80]~5_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~45_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~46_combout\ : std_logic;
SIGNAL \SRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \Inst_top_level|SRAM|fstate.read2~q\ : std_logic;
SIGNAL \Inst_top_level|SRAM|Selector2~0_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM|fstate.ready~q\ : std_logic;
SIGNAL \Inst_top_level|SRAM|fstate~12_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM|fstate.read1~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM|fstate.read1~q\ : std_logic;
SIGNAL \SRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|second_line[2][32]~3_combout\ : std_logic;
SIGNAL \SRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|second_line[2][24]~1_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~44_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~85_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~47_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~48_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux69~15_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~51_combout\ : std_logic;
SIGNAL \SRAM_DQ[12]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[14]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[13]~input_o\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|second_line[2][41]~9_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|second_line[2][25]~8_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux69~6_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux69~7_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~52_combout\ : std_logic;
SIGNAL \SRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux69~9_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux69~10_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux69~11_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux69~8_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux69~16_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux69~12_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux69~13_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~49_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~3_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~1_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~2_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux69~4_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~6_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~50_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~4_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~36_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_addr_i[4]~15_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_addr_i[4]~16_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|second_line[2][89]~6_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~5_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~7_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux69~5_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux69~14_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~53_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~17_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~18_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~9_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~11_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~12_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~13_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count32[27]~83_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_addr_i[3]~13_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM_addr_i[3]~14_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~14_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~15_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~16_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~19_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~20_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~21_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~22_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~23_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~24_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~32_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~42_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~25_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~54_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~55_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~26_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~27_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux68~28_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux64~1_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux51~0_combout\ : std_logic;
SIGNAL \SRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux44~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux44~1_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~60_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~61_combout\ : std_logic;
SIGNAL \SRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux67~2_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux67~4_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux67~5_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~87_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~56_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux67~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~31_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~94_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~57_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~58_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~59_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux67~1_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux67~6_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~64_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux66~14_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux15~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~65_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux66~15_combout\ : std_logic;
SIGNAL \SRAM_DQ[15]~input_o\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|LessThan2~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~66_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~89_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~67_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|LessThan5~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|LessThan1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux66~16_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux66~19_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux66~17_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux66~18_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|LessThan4~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|LessThan3~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux65~3_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux65~4_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~74_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux14~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~75_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~73_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~76_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux65~5_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~69_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~70_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~71_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux65~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~72_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux65~1_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux65~6_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux64~4_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux41~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~83_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~95_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~96_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux64~5_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~77_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~78_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~79_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~92_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux64~2_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~81_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux70~82_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux64~3_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux64~6_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux63~0_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux63~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~6_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~1\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~5_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~3\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~5\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~6_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~3_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~7\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~8_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~2_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~4_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~9\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~11\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~13\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~14_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~7_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~15\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~17\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~18_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~16_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~12_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|LessThan2~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~5_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~6_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~10_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~3_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[0]~60_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[1]~20_cout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[1]~21_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[1]~22\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[2]~23_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[2]~24\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[3]~25_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[3]~26\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[4]~27_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[4]~28\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[5]~30\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[6]~31_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[6]~32\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[7]~34\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[8]~35_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[8]~36\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[9]~38\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[10]~39_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[10]~40\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[11]~41_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[9]~37_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Equal0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[11]~42\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[12]~43_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[12]~44\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[13]~46\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[14]~47_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[14]~48\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[15]~50\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[16]~52\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[17]~54_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[17]~55\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[18]~56_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[18]~57\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[19]~58_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Equal0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[7]~33_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Equal0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Equal0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Equal0~3_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Equal0~6_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|count[19]~53_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|state.start~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|ena~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|ena~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt[0]~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector19~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk_prev~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.command~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|state~14_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack1~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|state~13_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack2~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector20~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector20~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.wr~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector25~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|state~15_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.mstr_ack~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector22~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.stop~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector17~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.ready~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector18~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.start~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~6_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~9_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|byteSel~2_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|state~8_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|state.write_data~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|busy~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|byteSel[3]~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|byteSel~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|byteSel~4_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|byteSel~3_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[7]~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[7]~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~7_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux6~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux5~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux5~2_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux5~3_combout\ : std_logic;
SIGNAL \SRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux6~2_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux6~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux6~3_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux6~4_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux6~5_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux2~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux2~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~8_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~10_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux3~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux3~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~2_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux4~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux4~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux4~2_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux4~3_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux7~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux7~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux7~2_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|Mux7~3_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux4~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux4~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~4_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~11_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|sda_int~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector29~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_clk~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_clk~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena~0_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena~1_combout\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl~1_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count8[1]~7_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count8[1]~8\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count8[2]~9_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count8[2]~10\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count8[3]~11_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count8[3]~12\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count8[4]~14\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count8[5]~15_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count8[5]~16\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count8[6]~18\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|count8[7]~19_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|LessThan0~1_cout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|LessThan0~3_cout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|LessThan0~5_cout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|LessThan0~7_cout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|LessThan0~9_cout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|LessThan0~11_cout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|LessThan0~13_cout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|LessThan0~14_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|output~0_combout\ : std_logic;
SIGNAL \Inst_top_level|pwm_entity|output~q\ : std_logic;
SIGNAL \Inst_top_level|SRAM|Selector5~0_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM|Selector5~1_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM|WE_n_reg~q\ : std_logic;
SIGNAL \Inst_top_level|SRAM|Selector1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM|OE_n_reg~q\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|EN_sig~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|EN_sig~q\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|Mux62~1_combout\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|RS_sig~q\ : std_logic;
SIGNAL \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Inst_top_level|count_60ns|r_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Inst_top_level|lcd_entity|data_o\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Inst_top_level|lcd_entity|clk_cnt\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \Inst_top_level|lcd_entity|byteSel\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Inst_top_level|pwm_entity|num\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Inst_top_level|pwm_entity|count8\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Inst_top_level|pwm_entity|count32\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Inst_top_level|pwm_entity|address_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Inst_top_level|i2c_entity|count\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Inst_top_level|i2c_entity|byteSel\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Inst_top_level|SRAM|data_o\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Inst_top_level|count_1hz|r_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Inst_top_level|selectPWM\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Inst_top_level|selectMode\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Inst_top_level|power_on_reset|Cont\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Inst_top_level|en_1hz|clk_cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \Inst_top_level|en_60ns|clk_cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Inst_top_level|SRAM|ALT_INV_tri_n~q\ : std_logic;
SIGNAL \Inst_top_level|lcd_entity|ALT_INV_state.start~q\ : std_logic;
SIGNAL \Inst_top_level|ALT_INV_sys_reset_n~combout\ : std_logic;
SIGNAL \Inst_top_level|SRAM|ALT_INV_OE_n_reg~q\ : std_logic;
SIGNAL \Inst_top_level|SRAM|ALT_INV_WE_n_reg~q\ : std_logic;
SIGNAL \Inst_top_level|ALT_INV_fstate.INIT~q\ : std_logic;
SIGNAL \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
SRAM_ADDR <= ww_SRAM_ADDR;
SRAM_UB_N <= ww_SRAM_UB_N;
SRAM_LB_N <= ww_SRAM_LB_N;
SRAM_WE_N <= ww_SRAM_WE_N;
SRAM_CE_N <= ww_SRAM_CE_N;
SRAM_OE_N <= ww_SRAM_OE_N;
LCD_ON <= ww_LCD_ON;
LCD_BLON <= ww_LCD_BLON;
LCD_RW <= ww_LCD_RW;
LCD_EN <= ww_LCD_EN;
LCD_RS <= ww_LCD_RS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Inst_top_level|count_60ns|r_reg\(7) & \Inst_top_level|count_60ns|r_reg\(6) & \Inst_top_level|count_60ns|r_reg\(5) & 
\Inst_top_level|count_60ns|r_reg\(4) & \Inst_top_level|count_60ns|r_reg\(3) & \Inst_top_level|count_60ns|r_reg\(2) & \Inst_top_level|count_60ns|r_reg\(1) & \Inst_top_level|count_60ns|r_reg\(0));

\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(0) <= \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(1) <= \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(2) <= \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(3) <= \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(4) <= \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(5) <= \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(6) <= \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(7) <= \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(8) <= \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(9) <= \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(10) <= \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(11) <= \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(12) <= \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(13) <= \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(14) <= \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(15) <= \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\Inst_top_level|lcd_entity|clk_en~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Inst_top_level|lcd_entity|clk_en~q\);
\Inst_top_level|SRAM|ALT_INV_tri_n~q\ <= NOT \Inst_top_level|SRAM|tri_n~q\;
\Inst_top_level|lcd_entity|ALT_INV_state.start~q\ <= NOT \Inst_top_level|lcd_entity|state.start~q\;
\Inst_top_level|ALT_INV_sys_reset_n~combout\ <= NOT \Inst_top_level|sys_reset_n~combout\;
\Inst_top_level|SRAM|ALT_INV_OE_n_reg~q\ <= NOT \Inst_top_level|SRAM|OE_n_reg~q\;
\Inst_top_level|SRAM|ALT_INV_WE_n_reg~q\ <= NOT \Inst_top_level|SRAM|WE_n_reg~q\;
\Inst_top_level|ALT_INV_fstate.INIT~q\ <= NOT \Inst_top_level|fstate.INIT~q\;
\Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\ <= NOT \Inst_top_level|i2c_entity|count[19]~53_combout\;

-- Location: FF_X16_Y13_N17
\Inst_top_level|count_1hz|r_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count_1hz|r_reg[0]~8_combout\,
	clrn => \Inst_top_level|count_reset~q\,
	ena => \Inst_top_level|count_1hz|r_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count_1hz|r_reg\(0));

-- Location: FF_X16_Y13_N19
\Inst_top_level|count_1hz|r_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count_1hz|r_reg[1]~11_combout\,
	clrn => \Inst_top_level|count_reset~q\,
	ena => \Inst_top_level|count_1hz|r_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count_1hz|r_reg\(1));

-- Location: FF_X16_Y13_N21
\Inst_top_level|count_1hz|r_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count_1hz|r_reg[2]~13_combout\,
	clrn => \Inst_top_level|count_reset~q\,
	ena => \Inst_top_level|count_1hz|r_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count_1hz|r_reg\(2));

-- Location: FF_X16_Y13_N23
\Inst_top_level|count_1hz|r_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count_1hz|r_reg[3]~15_combout\,
	clrn => \Inst_top_level|count_reset~q\,
	ena => \Inst_top_level|count_1hz|r_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count_1hz|r_reg\(3));

-- Location: FF_X16_Y13_N25
\Inst_top_level|count_1hz|r_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count_1hz|r_reg[4]~17_combout\,
	clrn => \Inst_top_level|count_reset~q\,
	ena => \Inst_top_level|count_1hz|r_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count_1hz|r_reg\(4));

-- Location: FF_X16_Y13_N27
\Inst_top_level|count_1hz|r_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count_1hz|r_reg[5]~19_combout\,
	clrn => \Inst_top_level|count_reset~q\,
	ena => \Inst_top_level|count_1hz|r_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count_1hz|r_reg\(5));

-- Location: FF_X16_Y13_N29
\Inst_top_level|count_1hz|r_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count_1hz|r_reg[6]~21_combout\,
	clrn => \Inst_top_level|count_reset~q\,
	ena => \Inst_top_level|count_1hz|r_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count_1hz|r_reg\(6));

-- Location: FF_X16_Y13_N31
\Inst_top_level|count_1hz|r_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count_1hz|r_reg[7]~23_combout\,
	clrn => \Inst_top_level|count_reset~q\,
	ena => \Inst_top_level|count_1hz|r_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count_1hz|r_reg\(7));

-- Location: LCCOMB_X16_Y13_N16
\Inst_top_level|count_1hz|r_reg[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_1hz|r_reg[0]~8_combout\ = \Inst_top_level|count_1hz|r_reg\(0) $ (VCC)
-- \Inst_top_level|count_1hz|r_reg[0]~9\ = CARRY(\Inst_top_level|count_1hz|r_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count_1hz|r_reg\(0),
	datad => VCC,
	combout => \Inst_top_level|count_1hz|r_reg[0]~8_combout\,
	cout => \Inst_top_level|count_1hz|r_reg[0]~9\);

-- Location: LCCOMB_X16_Y13_N18
\Inst_top_level|count_1hz|r_reg[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_1hz|r_reg[1]~11_combout\ = (\Inst_top_level|count_1hz|r_reg\(1) & (!\Inst_top_level|count_1hz|r_reg[0]~9\)) # (!\Inst_top_level|count_1hz|r_reg\(1) & ((\Inst_top_level|count_1hz|r_reg[0]~9\) # (GND)))
-- \Inst_top_level|count_1hz|r_reg[1]~12\ = CARRY((!\Inst_top_level|count_1hz|r_reg[0]~9\) # (!\Inst_top_level|count_1hz|r_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count_1hz|r_reg\(1),
	datad => VCC,
	cin => \Inst_top_level|count_1hz|r_reg[0]~9\,
	combout => \Inst_top_level|count_1hz|r_reg[1]~11_combout\,
	cout => \Inst_top_level|count_1hz|r_reg[1]~12\);

-- Location: LCCOMB_X16_Y13_N20
\Inst_top_level|count_1hz|r_reg[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_1hz|r_reg[2]~13_combout\ = (\Inst_top_level|count_1hz|r_reg\(2) & (\Inst_top_level|count_1hz|r_reg[1]~12\ $ (GND))) # (!\Inst_top_level|count_1hz|r_reg\(2) & (!\Inst_top_level|count_1hz|r_reg[1]~12\ & VCC))
-- \Inst_top_level|count_1hz|r_reg[2]~14\ = CARRY((\Inst_top_level|count_1hz|r_reg\(2) & !\Inst_top_level|count_1hz|r_reg[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count_1hz|r_reg\(2),
	datad => VCC,
	cin => \Inst_top_level|count_1hz|r_reg[1]~12\,
	combout => \Inst_top_level|count_1hz|r_reg[2]~13_combout\,
	cout => \Inst_top_level|count_1hz|r_reg[2]~14\);

-- Location: LCCOMB_X16_Y13_N22
\Inst_top_level|count_1hz|r_reg[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_1hz|r_reg[3]~15_combout\ = (\Inst_top_level|count_1hz|r_reg\(3) & (!\Inst_top_level|count_1hz|r_reg[2]~14\)) # (!\Inst_top_level|count_1hz|r_reg\(3) & ((\Inst_top_level|count_1hz|r_reg[2]~14\) # (GND)))
-- \Inst_top_level|count_1hz|r_reg[3]~16\ = CARRY((!\Inst_top_level|count_1hz|r_reg[2]~14\) # (!\Inst_top_level|count_1hz|r_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_1hz|r_reg\(3),
	datad => VCC,
	cin => \Inst_top_level|count_1hz|r_reg[2]~14\,
	combout => \Inst_top_level|count_1hz|r_reg[3]~15_combout\,
	cout => \Inst_top_level|count_1hz|r_reg[3]~16\);

-- Location: LCCOMB_X16_Y13_N24
\Inst_top_level|count_1hz|r_reg[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_1hz|r_reg[4]~17_combout\ = (\Inst_top_level|count_1hz|r_reg\(4) & (\Inst_top_level|count_1hz|r_reg[3]~16\ $ (GND))) # (!\Inst_top_level|count_1hz|r_reg\(4) & (!\Inst_top_level|count_1hz|r_reg[3]~16\ & VCC))
-- \Inst_top_level|count_1hz|r_reg[4]~18\ = CARRY((\Inst_top_level|count_1hz|r_reg\(4) & !\Inst_top_level|count_1hz|r_reg[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count_1hz|r_reg\(4),
	datad => VCC,
	cin => \Inst_top_level|count_1hz|r_reg[3]~16\,
	combout => \Inst_top_level|count_1hz|r_reg[4]~17_combout\,
	cout => \Inst_top_level|count_1hz|r_reg[4]~18\);

-- Location: LCCOMB_X16_Y13_N26
\Inst_top_level|count_1hz|r_reg[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_1hz|r_reg[5]~19_combout\ = (\Inst_top_level|count_1hz|r_reg\(5) & (!\Inst_top_level|count_1hz|r_reg[4]~18\)) # (!\Inst_top_level|count_1hz|r_reg\(5) & ((\Inst_top_level|count_1hz|r_reg[4]~18\) # (GND)))
-- \Inst_top_level|count_1hz|r_reg[5]~20\ = CARRY((!\Inst_top_level|count_1hz|r_reg[4]~18\) # (!\Inst_top_level|count_1hz|r_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_1hz|r_reg\(5),
	datad => VCC,
	cin => \Inst_top_level|count_1hz|r_reg[4]~18\,
	combout => \Inst_top_level|count_1hz|r_reg[5]~19_combout\,
	cout => \Inst_top_level|count_1hz|r_reg[5]~20\);

-- Location: LCCOMB_X16_Y13_N28
\Inst_top_level|count_1hz|r_reg[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_1hz|r_reg[6]~21_combout\ = (\Inst_top_level|count_1hz|r_reg\(6) & (\Inst_top_level|count_1hz|r_reg[5]~20\ $ (GND))) # (!\Inst_top_level|count_1hz|r_reg\(6) & (!\Inst_top_level|count_1hz|r_reg[5]~20\ & VCC))
-- \Inst_top_level|count_1hz|r_reg[6]~22\ = CARRY((\Inst_top_level|count_1hz|r_reg\(6) & !\Inst_top_level|count_1hz|r_reg[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count_1hz|r_reg\(6),
	datad => VCC,
	cin => \Inst_top_level|count_1hz|r_reg[5]~20\,
	combout => \Inst_top_level|count_1hz|r_reg[6]~21_combout\,
	cout => \Inst_top_level|count_1hz|r_reg[6]~22\);

-- Location: LCCOMB_X16_Y13_N30
\Inst_top_level|count_1hz|r_reg[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_1hz|r_reg[7]~23_combout\ = \Inst_top_level|count_1hz|r_reg\(7) $ (\Inst_top_level|count_1hz|r_reg[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_1hz|r_reg\(7),
	cin => \Inst_top_level|count_1hz|r_reg[6]~22\,
	combout => \Inst_top_level|count_1hz|r_reg[7]~23_combout\);

-- Location: FF_X17_Y11_N13
\Inst_top_level|pwm_entity|count32[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[22]~73_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(22));

-- Location: FF_X17_Y11_N11
\Inst_top_level|pwm_entity|count32[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[21]~71_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(21));

-- Location: FF_X17_Y11_N7
\Inst_top_level|pwm_entity|count32[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[19]~67_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(19));

-- Location: FF_X17_Y11_N1
\Inst_top_level|pwm_entity|count32[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[16]~61_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(16));

-- Location: FF_X17_Y12_N31
\Inst_top_level|pwm_entity|count32[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[15]~59_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(15));

-- Location: FF_X17_Y12_N29
\Inst_top_level|pwm_entity|count32[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[14]~57_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(14));

-- Location: FF_X17_Y12_N25
\Inst_top_level|pwm_entity|count32[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[12]~53_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(12));

-- Location: FF_X17_Y12_N23
\Inst_top_level|pwm_entity|count32[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[11]~51_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(11));

-- Location: FF_X17_Y12_N19
\Inst_top_level|pwm_entity|count32[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[9]~47_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(9));

-- Location: FF_X17_Y12_N17
\Inst_top_level|pwm_entity|count32[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[8]~45_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(8));

-- Location: FF_X17_Y12_N15
\Inst_top_level|pwm_entity|count32[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[7]~43_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(7));

-- Location: FF_X17_Y12_N11
\Inst_top_level|pwm_entity|count32[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[5]~39_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(5));

-- Location: FF_X17_Y12_N7
\Inst_top_level|pwm_entity|count32[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[3]~35_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(3));

-- Location: FF_X17_Y12_N5
\Inst_top_level|pwm_entity|count32[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[2]~33_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(2));

-- Location: FF_X17_Y12_N3
\Inst_top_level|pwm_entity|count32[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[1]~31_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(1));

-- Location: LCCOMB_X17_Y12_N2
\Inst_top_level|pwm_entity|count32[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[1]~31_combout\ = (\Inst_top_level|pwm_entity|count32\(1) & (\Inst_top_level|pwm_entity|Equal0~1_combout\ $ (GND))) # (!\Inst_top_level|pwm_entity|count32\(1) & (!\Inst_top_level|pwm_entity|Equal0~1_combout\ & VCC))
-- \Inst_top_level|pwm_entity|count32[1]~32\ = CARRY((\Inst_top_level|pwm_entity|count32\(1) & !\Inst_top_level|pwm_entity|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count32\(1),
	datab => \Inst_top_level|pwm_entity|Equal0~1_combout\,
	datad => VCC,
	combout => \Inst_top_level|pwm_entity|count32[1]~31_combout\,
	cout => \Inst_top_level|pwm_entity|count32[1]~32\);

-- Location: LCCOMB_X17_Y12_N4
\Inst_top_level|pwm_entity|count32[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[2]~33_combout\ = (\Inst_top_level|pwm_entity|count32\(2) & ((\Inst_top_level|pwm_entity|Equal0~1_combout\ & (\Inst_top_level|pwm_entity|count32[1]~32\ & VCC)) # (!\Inst_top_level|pwm_entity|Equal0~1_combout\ & 
-- (!\Inst_top_level|pwm_entity|count32[1]~32\)))) # (!\Inst_top_level|pwm_entity|count32\(2) & ((\Inst_top_level|pwm_entity|Equal0~1_combout\ & (!\Inst_top_level|pwm_entity|count32[1]~32\)) # (!\Inst_top_level|pwm_entity|Equal0~1_combout\ & 
-- ((\Inst_top_level|pwm_entity|count32[1]~32\) # (GND)))))
-- \Inst_top_level|pwm_entity|count32[2]~34\ = CARRY((\Inst_top_level|pwm_entity|count32\(2) & (!\Inst_top_level|pwm_entity|Equal0~1_combout\ & !\Inst_top_level|pwm_entity|count32[1]~32\)) # (!\Inst_top_level|pwm_entity|count32\(2) & 
-- ((!\Inst_top_level|pwm_entity|count32[1]~32\) # (!\Inst_top_level|pwm_entity|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count32\(2),
	datab => \Inst_top_level|pwm_entity|Equal0~1_combout\,
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[1]~32\,
	combout => \Inst_top_level|pwm_entity|count32[2]~33_combout\,
	cout => \Inst_top_level|pwm_entity|count32[2]~34\);

-- Location: LCCOMB_X17_Y12_N6
\Inst_top_level|pwm_entity|count32[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[3]~35_combout\ = ((\Inst_top_level|pwm_entity|count32\(3) $ (\Inst_top_level|selectPWM\(1) $ (!\Inst_top_level|pwm_entity|count32[2]~34\)))) # (GND)
-- \Inst_top_level|pwm_entity|count32[3]~36\ = CARRY((\Inst_top_level|pwm_entity|count32\(3) & ((\Inst_top_level|selectPWM\(1)) # (!\Inst_top_level|pwm_entity|count32[2]~34\))) # (!\Inst_top_level|pwm_entity|count32\(3) & (\Inst_top_level|selectPWM\(1) & 
-- !\Inst_top_level|pwm_entity|count32[2]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count32\(3),
	datab => \Inst_top_level|selectPWM\(1),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[2]~34\,
	combout => \Inst_top_level|pwm_entity|count32[3]~35_combout\,
	cout => \Inst_top_level|pwm_entity|count32[3]~36\);

-- Location: LCCOMB_X17_Y12_N10
\Inst_top_level|pwm_entity|count32[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[5]~39_combout\ = ((\Inst_top_level|pwm_entity|count32\(5) $ (\Inst_top_level|pwm_entity|Equal0~1_combout\ $ (\Inst_top_level|pwm_entity|count32[4]~38\)))) # (GND)
-- \Inst_top_level|pwm_entity|count32[5]~40\ = CARRY((\Inst_top_level|pwm_entity|count32\(5) & ((!\Inst_top_level|pwm_entity|count32[4]~38\) # (!\Inst_top_level|pwm_entity|Equal0~1_combout\))) # (!\Inst_top_level|pwm_entity|count32\(5) & 
-- (!\Inst_top_level|pwm_entity|Equal0~1_combout\ & !\Inst_top_level|pwm_entity|count32[4]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count32\(5),
	datab => \Inst_top_level|pwm_entity|Equal0~1_combout\,
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[4]~38\,
	combout => \Inst_top_level|pwm_entity|count32[5]~39_combout\,
	cout => \Inst_top_level|pwm_entity|count32[5]~40\);

-- Location: LCCOMB_X17_Y12_N14
\Inst_top_level|pwm_entity|count32[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[7]~43_combout\ = ((\Inst_top_level|pwm_entity|count32\(7) $ (\Inst_top_level|selectPWM\(1) $ (!\Inst_top_level|pwm_entity|count32[6]~42\)))) # (GND)
-- \Inst_top_level|pwm_entity|count32[7]~44\ = CARRY((\Inst_top_level|pwm_entity|count32\(7) & ((\Inst_top_level|selectPWM\(1)) # (!\Inst_top_level|pwm_entity|count32[6]~42\))) # (!\Inst_top_level|pwm_entity|count32\(7) & (\Inst_top_level|selectPWM\(1) & 
-- !\Inst_top_level|pwm_entity|count32[6]~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count32\(7),
	datab => \Inst_top_level|selectPWM\(1),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[6]~42\,
	combout => \Inst_top_level|pwm_entity|count32[7]~43_combout\,
	cout => \Inst_top_level|pwm_entity|count32[7]~44\);

-- Location: LCCOMB_X17_Y12_N16
\Inst_top_level|pwm_entity|count32[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[8]~45_combout\ = (\Inst_top_level|pwm_entity|count32\(8) & ((\Inst_top_level|selectPWM\(1) & (\Inst_top_level|pwm_entity|count32[7]~44\ & VCC)) # (!\Inst_top_level|selectPWM\(1) & 
-- (!\Inst_top_level|pwm_entity|count32[7]~44\)))) # (!\Inst_top_level|pwm_entity|count32\(8) & ((\Inst_top_level|selectPWM\(1) & (!\Inst_top_level|pwm_entity|count32[7]~44\)) # (!\Inst_top_level|selectPWM\(1) & ((\Inst_top_level|pwm_entity|count32[7]~44\) # 
-- (GND)))))
-- \Inst_top_level|pwm_entity|count32[8]~46\ = CARRY((\Inst_top_level|pwm_entity|count32\(8) & (!\Inst_top_level|selectPWM\(1) & !\Inst_top_level|pwm_entity|count32[7]~44\)) # (!\Inst_top_level|pwm_entity|count32\(8) & 
-- ((!\Inst_top_level|pwm_entity|count32[7]~44\) # (!\Inst_top_level|selectPWM\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count32\(8),
	datab => \Inst_top_level|selectPWM\(1),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[7]~44\,
	combout => \Inst_top_level|pwm_entity|count32[8]~45_combout\,
	cout => \Inst_top_level|pwm_entity|count32[8]~46\);

-- Location: LCCOMB_X17_Y12_N18
\Inst_top_level|pwm_entity|count32[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[9]~47_combout\ = ((\Inst_top_level|pwm_entity|count32\(9) $ (\Inst_top_level|selectPWM\(1) $ (!\Inst_top_level|pwm_entity|count32[8]~46\)))) # (GND)
-- \Inst_top_level|pwm_entity|count32[9]~48\ = CARRY((\Inst_top_level|pwm_entity|count32\(9) & ((\Inst_top_level|selectPWM\(1)) # (!\Inst_top_level|pwm_entity|count32[8]~46\))) # (!\Inst_top_level|pwm_entity|count32\(9) & (\Inst_top_level|selectPWM\(1) & 
-- !\Inst_top_level|pwm_entity|count32[8]~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count32\(9),
	datab => \Inst_top_level|selectPWM\(1),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[8]~46\,
	combout => \Inst_top_level|pwm_entity|count32[9]~47_combout\,
	cout => \Inst_top_level|pwm_entity|count32[9]~48\);

-- Location: LCCOMB_X17_Y12_N22
\Inst_top_level|pwm_entity|count32[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[11]~51_combout\ = ((\Inst_top_level|pwm_entity|count32\(11) $ (\Inst_top_level|pwm_entity|Equal0~1_combout\ $ (!\Inst_top_level|pwm_entity|count32[10]~50\)))) # (GND)
-- \Inst_top_level|pwm_entity|count32[11]~52\ = CARRY((\Inst_top_level|pwm_entity|count32\(11) & ((\Inst_top_level|pwm_entity|Equal0~1_combout\) # (!\Inst_top_level|pwm_entity|count32[10]~50\))) # (!\Inst_top_level|pwm_entity|count32\(11) & 
-- (\Inst_top_level|pwm_entity|Equal0~1_combout\ & !\Inst_top_level|pwm_entity|count32[10]~50\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count32\(11),
	datab => \Inst_top_level|pwm_entity|Equal0~1_combout\,
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[10]~50\,
	combout => \Inst_top_level|pwm_entity|count32[11]~51_combout\,
	cout => \Inst_top_level|pwm_entity|count32[11]~52\);

-- Location: LCCOMB_X17_Y12_N24
\Inst_top_level|pwm_entity|count32[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[12]~53_combout\ = (\Inst_top_level|pwm_entity|count32\(12) & ((\Inst_top_level|pwm_entity|Equal0~1_combout\ & (!\Inst_top_level|pwm_entity|count32[11]~52\)) # (!\Inst_top_level|pwm_entity|Equal0~1_combout\ & 
-- (\Inst_top_level|pwm_entity|count32[11]~52\ & VCC)))) # (!\Inst_top_level|pwm_entity|count32\(12) & ((\Inst_top_level|pwm_entity|Equal0~1_combout\ & ((\Inst_top_level|pwm_entity|count32[11]~52\) # (GND))) # (!\Inst_top_level|pwm_entity|Equal0~1_combout\ & 
-- (!\Inst_top_level|pwm_entity|count32[11]~52\))))
-- \Inst_top_level|pwm_entity|count32[12]~54\ = CARRY((\Inst_top_level|pwm_entity|count32\(12) & (\Inst_top_level|pwm_entity|Equal0~1_combout\ & !\Inst_top_level|pwm_entity|count32[11]~52\)) # (!\Inst_top_level|pwm_entity|count32\(12) & 
-- ((\Inst_top_level|pwm_entity|Equal0~1_combout\) # (!\Inst_top_level|pwm_entity|count32[11]~52\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count32\(12),
	datab => \Inst_top_level|pwm_entity|Equal0~1_combout\,
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[11]~52\,
	combout => \Inst_top_level|pwm_entity|count32[12]~53_combout\,
	cout => \Inst_top_level|pwm_entity|count32[12]~54\);

-- Location: LCCOMB_X17_Y12_N28
\Inst_top_level|pwm_entity|count32[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[14]~57_combout\ = (\Inst_top_level|pwm_entity|count32\(14) & ((\Inst_top_level|selectPWM\(1) & (\Inst_top_level|pwm_entity|count32[13]~56\ & VCC)) # (!\Inst_top_level|selectPWM\(1) & 
-- (!\Inst_top_level|pwm_entity|count32[13]~56\)))) # (!\Inst_top_level|pwm_entity|count32\(14) & ((\Inst_top_level|selectPWM\(1) & (!\Inst_top_level|pwm_entity|count32[13]~56\)) # (!\Inst_top_level|selectPWM\(1) & 
-- ((\Inst_top_level|pwm_entity|count32[13]~56\) # (GND)))))
-- \Inst_top_level|pwm_entity|count32[14]~58\ = CARRY((\Inst_top_level|pwm_entity|count32\(14) & (!\Inst_top_level|selectPWM\(1) & !\Inst_top_level|pwm_entity|count32[13]~56\)) # (!\Inst_top_level|pwm_entity|count32\(14) & 
-- ((!\Inst_top_level|pwm_entity|count32[13]~56\) # (!\Inst_top_level|selectPWM\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count32\(14),
	datab => \Inst_top_level|selectPWM\(1),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[13]~56\,
	combout => \Inst_top_level|pwm_entity|count32[14]~57_combout\,
	cout => \Inst_top_level|pwm_entity|count32[14]~58\);

-- Location: LCCOMB_X17_Y12_N30
\Inst_top_level|pwm_entity|count32[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[15]~59_combout\ = (\Inst_top_level|pwm_entity|count32\(15) & (\Inst_top_level|pwm_entity|count32[14]~58\ $ (GND))) # (!\Inst_top_level|pwm_entity|count32\(15) & (!\Inst_top_level|pwm_entity|count32[14]~58\ & VCC))
-- \Inst_top_level|pwm_entity|count32[15]~60\ = CARRY((\Inst_top_level|pwm_entity|count32\(15) & !\Inst_top_level|pwm_entity|count32[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count32\(15),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[14]~58\,
	combout => \Inst_top_level|pwm_entity|count32[15]~59_combout\,
	cout => \Inst_top_level|pwm_entity|count32[15]~60\);

-- Location: LCCOMB_X17_Y11_N0
\Inst_top_level|pwm_entity|count32[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[16]~61_combout\ = (\Inst_top_level|pwm_entity|count32\(16) & ((\Inst_top_level|selectPWM\(1) & (\Inst_top_level|pwm_entity|count32[15]~60\ & VCC)) # (!\Inst_top_level|selectPWM\(1) & 
-- (!\Inst_top_level|pwm_entity|count32[15]~60\)))) # (!\Inst_top_level|pwm_entity|count32\(16) & ((\Inst_top_level|selectPWM\(1) & (!\Inst_top_level|pwm_entity|count32[15]~60\)) # (!\Inst_top_level|selectPWM\(1) & 
-- ((\Inst_top_level|pwm_entity|count32[15]~60\) # (GND)))))
-- \Inst_top_level|pwm_entity|count32[16]~62\ = CARRY((\Inst_top_level|pwm_entity|count32\(16) & (!\Inst_top_level|selectPWM\(1) & !\Inst_top_level|pwm_entity|count32[15]~60\)) # (!\Inst_top_level|pwm_entity|count32\(16) & 
-- ((!\Inst_top_level|pwm_entity|count32[15]~60\) # (!\Inst_top_level|selectPWM\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count32\(16),
	datab => \Inst_top_level|selectPWM\(1),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[15]~60\,
	combout => \Inst_top_level|pwm_entity|count32[16]~61_combout\,
	cout => \Inst_top_level|pwm_entity|count32[16]~62\);

-- Location: LCCOMB_X17_Y11_N6
\Inst_top_level|pwm_entity|count32[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[19]~67_combout\ = (\Inst_top_level|pwm_entity|count32\(19) & (\Inst_top_level|pwm_entity|count32[18]~66\ $ (GND))) # (!\Inst_top_level|pwm_entity|count32\(19) & (!\Inst_top_level|pwm_entity|count32[18]~66\ & VCC))
-- \Inst_top_level|pwm_entity|count32[19]~68\ = CARRY((\Inst_top_level|pwm_entity|count32\(19) & !\Inst_top_level|pwm_entity|count32[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count32\(19),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[18]~66\,
	combout => \Inst_top_level|pwm_entity|count32[19]~67_combout\,
	cout => \Inst_top_level|pwm_entity|count32[19]~68\);

-- Location: LCCOMB_X17_Y11_N10
\Inst_top_level|pwm_entity|count32[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[21]~71_combout\ = (\Inst_top_level|pwm_entity|count32\(21) & (\Inst_top_level|pwm_entity|count32[20]~70\ $ (GND))) # (!\Inst_top_level|pwm_entity|count32\(21) & (!\Inst_top_level|pwm_entity|count32[20]~70\ & VCC))
-- \Inst_top_level|pwm_entity|count32[21]~72\ = CARRY((\Inst_top_level|pwm_entity|count32\(21) & !\Inst_top_level|pwm_entity|count32[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count32\(21),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[20]~70\,
	combout => \Inst_top_level|pwm_entity|count32[21]~71_combout\,
	cout => \Inst_top_level|pwm_entity|count32[21]~72\);

-- Location: LCCOMB_X17_Y11_N12
\Inst_top_level|pwm_entity|count32[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[22]~73_combout\ = (\Inst_top_level|pwm_entity|count32\(22) & (!\Inst_top_level|pwm_entity|count32[21]~72\)) # (!\Inst_top_level|pwm_entity|count32\(22) & ((\Inst_top_level|pwm_entity|count32[21]~72\) # (GND)))
-- \Inst_top_level|pwm_entity|count32[22]~74\ = CARRY((!\Inst_top_level|pwm_entity|count32[21]~72\) # (!\Inst_top_level|pwm_entity|count32\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count32\(22),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[21]~72\,
	combout => \Inst_top_level|pwm_entity|count32[22]~73_combout\,
	cout => \Inst_top_level|pwm_entity|count32[22]~74\);

-- Location: FF_X18_Y12_N13
\Inst_top_level|power_on_reset|Cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[16]~49_combout\,
	ena => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(16));

-- Location: FF_X18_Y13_N23
\Inst_top_level|power_on_reset|Cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[5]~27_combout\,
	ena => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(5));

-- Location: FF_X18_Y13_N31
\Inst_top_level|power_on_reset|Cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[9]~35_combout\,
	ena => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(9));

-- Location: FF_X18_Y12_N11
\Inst_top_level|power_on_reset|Cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[15]~47_combout\,
	ena => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(15));

-- Location: LCCOMB_X17_Y24_N8
\Inst_top_level|en_1hz|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~0_combout\ = (\Inst_top_level|en_60ns|clk_cnt\(0) & (\Inst_top_level|en_1hz|clk_cnt\(1) $ (VCC))) # (!\Inst_top_level|en_60ns|clk_cnt\(0) & (\Inst_top_level|en_1hz|clk_cnt\(1) & VCC))
-- \Inst_top_level|en_1hz|Add0~1\ = CARRY((\Inst_top_level|en_60ns|clk_cnt\(0) & \Inst_top_level|en_1hz|clk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_60ns|clk_cnt\(0),
	datab => \Inst_top_level|en_1hz|clk_cnt\(1),
	datad => VCC,
	combout => \Inst_top_level|en_1hz|Add0~0_combout\,
	cout => \Inst_top_level|en_1hz|Add0~1\);

-- Location: LCCOMB_X17_Y24_N10
\Inst_top_level|en_1hz|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~2_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(2) & (!\Inst_top_level|en_1hz|Add0~1\)) # (!\Inst_top_level|en_1hz|clk_cnt\(2) & ((\Inst_top_level|en_1hz|Add0~1\) # (GND)))
-- \Inst_top_level|en_1hz|Add0~3\ = CARRY((!\Inst_top_level|en_1hz|Add0~1\) # (!\Inst_top_level|en_1hz|clk_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|clk_cnt\(2),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~1\,
	combout => \Inst_top_level|en_1hz|Add0~2_combout\,
	cout => \Inst_top_level|en_1hz|Add0~3\);

-- Location: LCCOMB_X17_Y24_N12
\Inst_top_level|en_1hz|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~4_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(3) & (\Inst_top_level|en_1hz|Add0~3\ $ (GND))) # (!\Inst_top_level|en_1hz|clk_cnt\(3) & (!\Inst_top_level|en_1hz|Add0~3\ & VCC))
-- \Inst_top_level|en_1hz|Add0~5\ = CARRY((\Inst_top_level|en_1hz|clk_cnt\(3) & !\Inst_top_level|en_1hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|clk_cnt\(3),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~3\,
	combout => \Inst_top_level|en_1hz|Add0~4_combout\,
	cout => \Inst_top_level|en_1hz|Add0~5\);

-- Location: LCCOMB_X17_Y24_N14
\Inst_top_level|en_1hz|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~6_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(4) & (!\Inst_top_level|en_1hz|Add0~5\)) # (!\Inst_top_level|en_1hz|clk_cnt\(4) & ((\Inst_top_level|en_1hz|Add0~5\) # (GND)))
-- \Inst_top_level|en_1hz|Add0~7\ = CARRY((!\Inst_top_level|en_1hz|Add0~5\) # (!\Inst_top_level|en_1hz|clk_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|en_1hz|clk_cnt\(4),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~5\,
	combout => \Inst_top_level|en_1hz|Add0~6_combout\,
	cout => \Inst_top_level|en_1hz|Add0~7\);

-- Location: LCCOMB_X17_Y24_N16
\Inst_top_level|en_1hz|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~8_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(5) & (\Inst_top_level|en_1hz|Add0~7\ $ (GND))) # (!\Inst_top_level|en_1hz|clk_cnt\(5) & (!\Inst_top_level|en_1hz|Add0~7\ & VCC))
-- \Inst_top_level|en_1hz|Add0~9\ = CARRY((\Inst_top_level|en_1hz|clk_cnt\(5) & !\Inst_top_level|en_1hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|en_1hz|clk_cnt\(5),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~7\,
	combout => \Inst_top_level|en_1hz|Add0~8_combout\,
	cout => \Inst_top_level|en_1hz|Add0~9\);

-- Location: LCCOMB_X17_Y24_N18
\Inst_top_level|en_1hz|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~10_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(6) & (!\Inst_top_level|en_1hz|Add0~9\)) # (!\Inst_top_level|en_1hz|clk_cnt\(6) & ((\Inst_top_level|en_1hz|Add0~9\) # (GND)))
-- \Inst_top_level|en_1hz|Add0~11\ = CARRY((!\Inst_top_level|en_1hz|Add0~9\) # (!\Inst_top_level|en_1hz|clk_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|en_1hz|clk_cnt\(6),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~9\,
	combout => \Inst_top_level|en_1hz|Add0~10_combout\,
	cout => \Inst_top_level|en_1hz|Add0~11\);

-- Location: LCCOMB_X17_Y24_N20
\Inst_top_level|en_1hz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~12_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(7) & (\Inst_top_level|en_1hz|Add0~11\ $ (GND))) # (!\Inst_top_level|en_1hz|clk_cnt\(7) & (!\Inst_top_level|en_1hz|Add0~11\ & VCC))
-- \Inst_top_level|en_1hz|Add0~13\ = CARRY((\Inst_top_level|en_1hz|clk_cnt\(7) & !\Inst_top_level|en_1hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|en_1hz|clk_cnt\(7),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~11\,
	combout => \Inst_top_level|en_1hz|Add0~12_combout\,
	cout => \Inst_top_level|en_1hz|Add0~13\);

-- Location: LCCOMB_X17_Y24_N22
\Inst_top_level|en_1hz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~14_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(8) & (!\Inst_top_level|en_1hz|Add0~13\)) # (!\Inst_top_level|en_1hz|clk_cnt\(8) & ((\Inst_top_level|en_1hz|Add0~13\) # (GND)))
-- \Inst_top_level|en_1hz|Add0~15\ = CARRY((!\Inst_top_level|en_1hz|Add0~13\) # (!\Inst_top_level|en_1hz|clk_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|clk_cnt\(8),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~13\,
	combout => \Inst_top_level|en_1hz|Add0~14_combout\,
	cout => \Inst_top_level|en_1hz|Add0~15\);

-- Location: LCCOMB_X17_Y24_N24
\Inst_top_level|en_1hz|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~16_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(9) & (\Inst_top_level|en_1hz|Add0~15\ $ (GND))) # (!\Inst_top_level|en_1hz|clk_cnt\(9) & (!\Inst_top_level|en_1hz|Add0~15\ & VCC))
-- \Inst_top_level|en_1hz|Add0~17\ = CARRY((\Inst_top_level|en_1hz|clk_cnt\(9) & !\Inst_top_level|en_1hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|en_1hz|clk_cnt\(9),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~15\,
	combout => \Inst_top_level|en_1hz|Add0~16_combout\,
	cout => \Inst_top_level|en_1hz|Add0~17\);

-- Location: LCCOMB_X17_Y24_N26
\Inst_top_level|en_1hz|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~18_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(10) & (!\Inst_top_level|en_1hz|Add0~17\)) # (!\Inst_top_level|en_1hz|clk_cnt\(10) & ((\Inst_top_level|en_1hz|Add0~17\) # (GND)))
-- \Inst_top_level|en_1hz|Add0~19\ = CARRY((!\Inst_top_level|en_1hz|Add0~17\) # (!\Inst_top_level|en_1hz|clk_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|clk_cnt\(10),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~17\,
	combout => \Inst_top_level|en_1hz|Add0~18_combout\,
	cout => \Inst_top_level|en_1hz|Add0~19\);

-- Location: LCCOMB_X17_Y24_N28
\Inst_top_level|en_1hz|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~20_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(11) & (\Inst_top_level|en_1hz|Add0~19\ $ (GND))) # (!\Inst_top_level|en_1hz|clk_cnt\(11) & (!\Inst_top_level|en_1hz|Add0~19\ & VCC))
-- \Inst_top_level|en_1hz|Add0~21\ = CARRY((\Inst_top_level|en_1hz|clk_cnt\(11) & !\Inst_top_level|en_1hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|en_1hz|clk_cnt\(11),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~19\,
	combout => \Inst_top_level|en_1hz|Add0~20_combout\,
	cout => \Inst_top_level|en_1hz|Add0~21\);

-- Location: LCCOMB_X17_Y24_N30
\Inst_top_level|en_1hz|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~22_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(12) & (!\Inst_top_level|en_1hz|Add0~21\)) # (!\Inst_top_level|en_1hz|clk_cnt\(12) & ((\Inst_top_level|en_1hz|Add0~21\) # (GND)))
-- \Inst_top_level|en_1hz|Add0~23\ = CARRY((!\Inst_top_level|en_1hz|Add0~21\) # (!\Inst_top_level|en_1hz|clk_cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|en_1hz|clk_cnt\(12),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~21\,
	combout => \Inst_top_level|en_1hz|Add0~22_combout\,
	cout => \Inst_top_level|en_1hz|Add0~23\);

-- Location: LCCOMB_X17_Y23_N0
\Inst_top_level|en_1hz|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~24_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(13) & (\Inst_top_level|en_1hz|Add0~23\ $ (GND))) # (!\Inst_top_level|en_1hz|clk_cnt\(13) & (!\Inst_top_level|en_1hz|Add0~23\ & VCC))
-- \Inst_top_level|en_1hz|Add0~25\ = CARRY((\Inst_top_level|en_1hz|clk_cnt\(13) & !\Inst_top_level|en_1hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|clk_cnt\(13),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~23\,
	combout => \Inst_top_level|en_1hz|Add0~24_combout\,
	cout => \Inst_top_level|en_1hz|Add0~25\);

-- Location: LCCOMB_X17_Y23_N2
\Inst_top_level|en_1hz|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~26_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(14) & (!\Inst_top_level|en_1hz|Add0~25\)) # (!\Inst_top_level|en_1hz|clk_cnt\(14) & ((\Inst_top_level|en_1hz|Add0~25\) # (GND)))
-- \Inst_top_level|en_1hz|Add0~27\ = CARRY((!\Inst_top_level|en_1hz|Add0~25\) # (!\Inst_top_level|en_1hz|clk_cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|en_1hz|clk_cnt\(14),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~25\,
	combout => \Inst_top_level|en_1hz|Add0~26_combout\,
	cout => \Inst_top_level|en_1hz|Add0~27\);

-- Location: LCCOMB_X17_Y23_N4
\Inst_top_level|en_1hz|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~28_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(15) & (\Inst_top_level|en_1hz|Add0~27\ $ (GND))) # (!\Inst_top_level|en_1hz|clk_cnt\(15) & (!\Inst_top_level|en_1hz|Add0~27\ & VCC))
-- \Inst_top_level|en_1hz|Add0~29\ = CARRY((\Inst_top_level|en_1hz|clk_cnt\(15) & !\Inst_top_level|en_1hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|en_1hz|clk_cnt\(15),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~27\,
	combout => \Inst_top_level|en_1hz|Add0~28_combout\,
	cout => \Inst_top_level|en_1hz|Add0~29\);

-- Location: LCCOMB_X17_Y23_N6
\Inst_top_level|en_1hz|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~30_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(16) & (!\Inst_top_level|en_1hz|Add0~29\)) # (!\Inst_top_level|en_1hz|clk_cnt\(16) & ((\Inst_top_level|en_1hz|Add0~29\) # (GND)))
-- \Inst_top_level|en_1hz|Add0~31\ = CARRY((!\Inst_top_level|en_1hz|Add0~29\) # (!\Inst_top_level|en_1hz|clk_cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|clk_cnt\(16),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~29\,
	combout => \Inst_top_level|en_1hz|Add0~30_combout\,
	cout => \Inst_top_level|en_1hz|Add0~31\);

-- Location: LCCOMB_X17_Y23_N8
\Inst_top_level|en_1hz|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~32_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(17) & (\Inst_top_level|en_1hz|Add0~31\ $ (GND))) # (!\Inst_top_level|en_1hz|clk_cnt\(17) & (!\Inst_top_level|en_1hz|Add0~31\ & VCC))
-- \Inst_top_level|en_1hz|Add0~33\ = CARRY((\Inst_top_level|en_1hz|clk_cnt\(17) & !\Inst_top_level|en_1hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|clk_cnt\(17),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~31\,
	combout => \Inst_top_level|en_1hz|Add0~32_combout\,
	cout => \Inst_top_level|en_1hz|Add0~33\);

-- Location: LCCOMB_X17_Y23_N10
\Inst_top_level|en_1hz|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~34_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(18) & (!\Inst_top_level|en_1hz|Add0~33\)) # (!\Inst_top_level|en_1hz|clk_cnt\(18) & ((\Inst_top_level|en_1hz|Add0~33\) # (GND)))
-- \Inst_top_level|en_1hz|Add0~35\ = CARRY((!\Inst_top_level|en_1hz|Add0~33\) # (!\Inst_top_level|en_1hz|clk_cnt\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|clk_cnt\(18),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~33\,
	combout => \Inst_top_level|en_1hz|Add0~34_combout\,
	cout => \Inst_top_level|en_1hz|Add0~35\);

-- Location: LCCOMB_X17_Y23_N12
\Inst_top_level|en_1hz|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~36_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(19) & (\Inst_top_level|en_1hz|Add0~35\ $ (GND))) # (!\Inst_top_level|en_1hz|clk_cnt\(19) & (!\Inst_top_level|en_1hz|Add0~35\ & VCC))
-- \Inst_top_level|en_1hz|Add0~37\ = CARRY((\Inst_top_level|en_1hz|clk_cnt\(19) & !\Inst_top_level|en_1hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|en_1hz|clk_cnt\(19),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~35\,
	combout => \Inst_top_level|en_1hz|Add0~36_combout\,
	cout => \Inst_top_level|en_1hz|Add0~37\);

-- Location: LCCOMB_X17_Y23_N14
\Inst_top_level|en_1hz|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~38_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(20) & (!\Inst_top_level|en_1hz|Add0~37\)) # (!\Inst_top_level|en_1hz|clk_cnt\(20) & ((\Inst_top_level|en_1hz|Add0~37\) # (GND)))
-- \Inst_top_level|en_1hz|Add0~39\ = CARRY((!\Inst_top_level|en_1hz|Add0~37\) # (!\Inst_top_level|en_1hz|clk_cnt\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|clk_cnt\(20),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~37\,
	combout => \Inst_top_level|en_1hz|Add0~38_combout\,
	cout => \Inst_top_level|en_1hz|Add0~39\);

-- Location: LCCOMB_X17_Y23_N16
\Inst_top_level|en_1hz|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~40_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(21) & (\Inst_top_level|en_1hz|Add0~39\ $ (GND))) # (!\Inst_top_level|en_1hz|clk_cnt\(21) & (!\Inst_top_level|en_1hz|Add0~39\ & VCC))
-- \Inst_top_level|en_1hz|Add0~41\ = CARRY((\Inst_top_level|en_1hz|clk_cnt\(21) & !\Inst_top_level|en_1hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|clk_cnt\(21),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~39\,
	combout => \Inst_top_level|en_1hz|Add0~40_combout\,
	cout => \Inst_top_level|en_1hz|Add0~41\);

-- Location: LCCOMB_X17_Y23_N18
\Inst_top_level|en_1hz|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~42_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(22) & (!\Inst_top_level|en_1hz|Add0~41\)) # (!\Inst_top_level|en_1hz|clk_cnt\(22) & ((\Inst_top_level|en_1hz|Add0~41\) # (GND)))
-- \Inst_top_level|en_1hz|Add0~43\ = CARRY((!\Inst_top_level|en_1hz|Add0~41\) # (!\Inst_top_level|en_1hz|clk_cnt\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|en_1hz|clk_cnt\(22),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~41\,
	combout => \Inst_top_level|en_1hz|Add0~42_combout\,
	cout => \Inst_top_level|en_1hz|Add0~43\);

-- Location: LCCOMB_X17_Y23_N20
\Inst_top_level|en_1hz|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~44_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(23) & (\Inst_top_level|en_1hz|Add0~43\ $ (GND))) # (!\Inst_top_level|en_1hz|clk_cnt\(23) & (!\Inst_top_level|en_1hz|Add0~43\ & VCC))
-- \Inst_top_level|en_1hz|Add0~45\ = CARRY((\Inst_top_level|en_1hz|clk_cnt\(23) & !\Inst_top_level|en_1hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|clk_cnt\(23),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~43\,
	combout => \Inst_top_level|en_1hz|Add0~44_combout\,
	cout => \Inst_top_level|en_1hz|Add0~45\);

-- Location: LCCOMB_X17_Y23_N22
\Inst_top_level|en_1hz|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~46_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(24) & (!\Inst_top_level|en_1hz|Add0~45\)) # (!\Inst_top_level|en_1hz|clk_cnt\(24) & ((\Inst_top_level|en_1hz|Add0~45\) # (GND)))
-- \Inst_top_level|en_1hz|Add0~47\ = CARRY((!\Inst_top_level|en_1hz|Add0~45\) # (!\Inst_top_level|en_1hz|clk_cnt\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|clk_cnt\(24),
	datad => VCC,
	cin => \Inst_top_level|en_1hz|Add0~45\,
	combout => \Inst_top_level|en_1hz|Add0~46_combout\,
	cout => \Inst_top_level|en_1hz|Add0~47\);

-- Location: LCCOMB_X17_Y23_N24
\Inst_top_level|en_1hz|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Add0~48_combout\ = \Inst_top_level|en_1hz|clk_cnt\(25) $ (!\Inst_top_level|en_1hz|Add0~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|en_1hz|clk_cnt\(25),
	cin => \Inst_top_level|en_1hz|Add0~47\,
	combout => \Inst_top_level|en_1hz|Add0~48_combout\);

-- Location: LCCOMB_X18_Y13_N22
\Inst_top_level|power_on_reset|Cont[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[5]~27_combout\ = (\Inst_top_level|power_on_reset|Cont\(5) & (\Inst_top_level|power_on_reset|Cont[4]~26\ $ (GND))) # (!\Inst_top_level|power_on_reset|Cont\(5) & (!\Inst_top_level|power_on_reset|Cont[4]~26\ & VCC))
-- \Inst_top_level|power_on_reset|Cont[5]~28\ = CARRY((\Inst_top_level|power_on_reset|Cont\(5) & !\Inst_top_level|power_on_reset|Cont[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|power_on_reset|Cont\(5),
	datad => VCC,
	cin => \Inst_top_level|power_on_reset|Cont[4]~26\,
	combout => \Inst_top_level|power_on_reset|Cont[5]~27_combout\,
	cout => \Inst_top_level|power_on_reset|Cont[5]~28\);

-- Location: LCCOMB_X18_Y13_N30
\Inst_top_level|power_on_reset|Cont[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[9]~35_combout\ = (\Inst_top_level|power_on_reset|Cont\(9) & (\Inst_top_level|power_on_reset|Cont[8]~34\ $ (GND))) # (!\Inst_top_level|power_on_reset|Cont\(9) & (!\Inst_top_level|power_on_reset|Cont[8]~34\ & VCC))
-- \Inst_top_level|power_on_reset|Cont[9]~36\ = CARRY((\Inst_top_level|power_on_reset|Cont\(9) & !\Inst_top_level|power_on_reset|Cont[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|power_on_reset|Cont\(9),
	datad => VCC,
	cin => \Inst_top_level|power_on_reset|Cont[8]~34\,
	combout => \Inst_top_level|power_on_reset|Cont[9]~35_combout\,
	cout => \Inst_top_level|power_on_reset|Cont[9]~36\);

-- Location: LCCOMB_X18_Y12_N10
\Inst_top_level|power_on_reset|Cont[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[15]~47_combout\ = (\Inst_top_level|power_on_reset|Cont\(15) & (\Inst_top_level|power_on_reset|Cont[14]~46\ $ (GND))) # (!\Inst_top_level|power_on_reset|Cont\(15) & (!\Inst_top_level|power_on_reset|Cont[14]~46\ & VCC))
-- \Inst_top_level|power_on_reset|Cont[15]~48\ = CARRY((\Inst_top_level|power_on_reset|Cont\(15) & !\Inst_top_level|power_on_reset|Cont[14]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|power_on_reset|Cont\(15),
	datad => VCC,
	cin => \Inst_top_level|power_on_reset|Cont[14]~46\,
	combout => \Inst_top_level|power_on_reset|Cont[15]~47_combout\,
	cout => \Inst_top_level|power_on_reset|Cont[15]~48\);

-- Location: LCCOMB_X18_Y12_N12
\Inst_top_level|power_on_reset|Cont[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[16]~49_combout\ = (\Inst_top_level|power_on_reset|Cont\(16) & (!\Inst_top_level|power_on_reset|Cont[15]~48\)) # (!\Inst_top_level|power_on_reset|Cont\(16) & ((\Inst_top_level|power_on_reset|Cont[15]~48\) # (GND)))
-- \Inst_top_level|power_on_reset|Cont[16]~50\ = CARRY((!\Inst_top_level|power_on_reset|Cont[15]~48\) # (!\Inst_top_level|power_on_reset|Cont\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|power_on_reset|Cont\(16),
	datad => VCC,
	cin => \Inst_top_level|power_on_reset|Cont[15]~48\,
	combout => \Inst_top_level|power_on_reset|Cont[16]~49_combout\,
	cout => \Inst_top_level|power_on_reset|Cont[16]~50\);

-- Location: LCCOMB_X1_Y36_N16
\Inst_top_level|lcd_entity|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Add0~0_combout\ = \Inst_top_level|lcd_entity|clk_cnt\(0) $ (VCC)
-- \Inst_top_level|lcd_entity|Add0~1\ = CARRY(\Inst_top_level|lcd_entity|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|clk_cnt\(0),
	datad => VCC,
	combout => \Inst_top_level|lcd_entity|Add0~0_combout\,
	cout => \Inst_top_level|lcd_entity|Add0~1\);

-- Location: LCCOMB_X1_Y36_N28
\Inst_top_level|lcd_entity|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Add0~12_combout\ = (\Inst_top_level|lcd_entity|clk_cnt\(6) & (\Inst_top_level|lcd_entity|Add0~11\ $ (GND))) # (!\Inst_top_level|lcd_entity|clk_cnt\(6) & (!\Inst_top_level|lcd_entity|Add0~11\ & VCC))
-- \Inst_top_level|lcd_entity|Add0~13\ = CARRY((\Inst_top_level|lcd_entity|clk_cnt\(6) & !\Inst_top_level|lcd_entity|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|clk_cnt\(6),
	datad => VCC,
	cin => \Inst_top_level|lcd_entity|Add0~11\,
	combout => \Inst_top_level|lcd_entity|Add0~12_combout\,
	cout => \Inst_top_level|lcd_entity|Add0~13\);

-- Location: LCCOMB_X1_Y35_N6
\Inst_top_level|lcd_entity|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Add0~22_combout\ = (\Inst_top_level|lcd_entity|clk_cnt\(11) & (!\Inst_top_level|lcd_entity|Add0~21\)) # (!\Inst_top_level|lcd_entity|clk_cnt\(11) & ((\Inst_top_level|lcd_entity|Add0~21\) # (GND)))
-- \Inst_top_level|lcd_entity|Add0~23\ = CARRY((!\Inst_top_level|lcd_entity|Add0~21\) # (!\Inst_top_level|lcd_entity|clk_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|clk_cnt\(11),
	datad => VCC,
	cin => \Inst_top_level|lcd_entity|Add0~21\,
	combout => \Inst_top_level|lcd_entity|Add0~22_combout\,
	cout => \Inst_top_level|lcd_entity|Add0~23\);

-- Location: LCCOMB_X1_Y35_N10
\Inst_top_level|lcd_entity|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Add0~26_combout\ = (\Inst_top_level|lcd_entity|clk_cnt\(13) & (!\Inst_top_level|lcd_entity|Add0~25\)) # (!\Inst_top_level|lcd_entity|clk_cnt\(13) & ((\Inst_top_level|lcd_entity|Add0~25\) # (GND)))
-- \Inst_top_level|lcd_entity|Add0~27\ = CARRY((!\Inst_top_level|lcd_entity|Add0~25\) # (!\Inst_top_level|lcd_entity|clk_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|clk_cnt\(13),
	datad => VCC,
	cin => \Inst_top_level|lcd_entity|Add0~25\,
	combout => \Inst_top_level|lcd_entity|Add0~26_combout\,
	cout => \Inst_top_level|lcd_entity|Add0~27\);

-- Location: FF_X17_Y13_N27
\Inst_top_level|pwm_entity|count8[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count8[6]~17_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count8\(6));

-- Location: FF_X17_Y13_N23
\Inst_top_level|pwm_entity|count8[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count8[4]~13_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count8\(4));

-- Location: FF_X19_Y11_N13
\Inst_top_level|i2c_entity|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[16]~51_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(16));

-- Location: FF_X19_Y12_N23
\Inst_top_level|i2c_entity|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[5]~29_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(5));

-- Location: FF_X19_Y11_N7
\Inst_top_level|i2c_entity|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[13]~45_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(13));

-- Location: FF_X19_Y11_N11
\Inst_top_level|i2c_entity|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[15]~49_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(15));

-- Location: LCCOMB_X17_Y13_N22
\Inst_top_level|pwm_entity|count8[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count8[4]~13_combout\ = (\Inst_top_level|pwm_entity|count8\(4) & (!\Inst_top_level|pwm_entity|count8[3]~12\)) # (!\Inst_top_level|pwm_entity|count8\(4) & ((\Inst_top_level|pwm_entity|count8[3]~12\) # (GND)))
-- \Inst_top_level|pwm_entity|count8[4]~14\ = CARRY((!\Inst_top_level|pwm_entity|count8[3]~12\) # (!\Inst_top_level|pwm_entity|count8\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count8\(4),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count8[3]~12\,
	combout => \Inst_top_level|pwm_entity|count8[4]~13_combout\,
	cout => \Inst_top_level|pwm_entity|count8[4]~14\);

-- Location: LCCOMB_X17_Y13_N26
\Inst_top_level|pwm_entity|count8[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count8[6]~17_combout\ = (\Inst_top_level|pwm_entity|count8\(6) & (!\Inst_top_level|pwm_entity|count8[5]~16\)) # (!\Inst_top_level|pwm_entity|count8\(6) & ((\Inst_top_level|pwm_entity|count8[5]~16\) # (GND)))
-- \Inst_top_level|pwm_entity|count8[6]~18\ = CARRY((!\Inst_top_level|pwm_entity|count8[5]~16\) # (!\Inst_top_level|pwm_entity|count8\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count8\(6),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count8[5]~16\,
	combout => \Inst_top_level|pwm_entity|count8[6]~17_combout\,
	cout => \Inst_top_level|pwm_entity|count8[6]~18\);

-- Location: LCCOMB_X19_Y12_N22
\Inst_top_level|i2c_entity|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[5]~29_combout\ = (\Inst_top_level|i2c_entity|count\(5) & (\Inst_top_level|i2c_entity|count[4]~28\ $ (GND))) # (!\Inst_top_level|i2c_entity|count\(5) & (!\Inst_top_level|i2c_entity|count[4]~28\ & VCC))
-- \Inst_top_level|i2c_entity|count[5]~30\ = CARRY((\Inst_top_level|i2c_entity|count\(5) & !\Inst_top_level|i2c_entity|count[4]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|count\(5),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|count[4]~28\,
	combout => \Inst_top_level|i2c_entity|count[5]~29_combout\,
	cout => \Inst_top_level|i2c_entity|count[5]~30\);

-- Location: LCCOMB_X19_Y11_N6
\Inst_top_level|i2c_entity|count[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[13]~45_combout\ = (\Inst_top_level|i2c_entity|count\(13) & (\Inst_top_level|i2c_entity|count[12]~44\ & VCC)) # (!\Inst_top_level|i2c_entity|count\(13) & (!\Inst_top_level|i2c_entity|count[12]~44\))
-- \Inst_top_level|i2c_entity|count[13]~46\ = CARRY((!\Inst_top_level|i2c_entity|count\(13) & !\Inst_top_level|i2c_entity|count[12]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|count\(13),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|count[12]~44\,
	combout => \Inst_top_level|i2c_entity|count[13]~45_combout\,
	cout => \Inst_top_level|i2c_entity|count[13]~46\);

-- Location: LCCOMB_X19_Y11_N10
\Inst_top_level|i2c_entity|count[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[15]~49_combout\ = (\Inst_top_level|i2c_entity|count\(15) & (\Inst_top_level|i2c_entity|count[14]~48\ & VCC)) # (!\Inst_top_level|i2c_entity|count\(15) & (!\Inst_top_level|i2c_entity|count[14]~48\))
-- \Inst_top_level|i2c_entity|count[15]~50\ = CARRY((!\Inst_top_level|i2c_entity|count\(15) & !\Inst_top_level|i2c_entity|count[14]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|count\(15),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|count[14]~48\,
	combout => \Inst_top_level|i2c_entity|count[15]~49_combout\,
	cout => \Inst_top_level|i2c_entity|count[15]~50\);

-- Location: LCCOMB_X19_Y11_N12
\Inst_top_level|i2c_entity|count[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[16]~51_combout\ = (\Inst_top_level|i2c_entity|count\(16) & ((GND) # (!\Inst_top_level|i2c_entity|count[15]~50\))) # (!\Inst_top_level|i2c_entity|count\(16) & (\Inst_top_level|i2c_entity|count[15]~50\ $ (GND)))
-- \Inst_top_level|i2c_entity|count[16]~52\ = CARRY((\Inst_top_level|i2c_entity|count\(16)) # (!\Inst_top_level|i2c_entity|count[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|count\(16),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|count[15]~50\,
	combout => \Inst_top_level|i2c_entity|count[16]~51_combout\,
	cout => \Inst_top_level|i2c_entity|count[16]~52\);

-- Location: FF_X11_Y13_N7
\Inst_top_level|count_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Selector5~2_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count_enable~q\);

-- Location: FF_X18_Y23_N5
\Inst_top_level|en_1hz|clk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|clk_en~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_en~q\);

-- Location: LCCOMB_X14_Y13_N26
\Inst_top_level|count_1hz|r_reg[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_1hz|r_reg[0]~10_combout\ = (\Inst_top_level|en_1hz|clk_en~q\ & \Inst_top_level|count_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|en_1hz|clk_en~q\,
	datad => \Inst_top_level|count_enable~q\,
	combout => \Inst_top_level|count_1hz|r_reg[0]~10_combout\);

-- Location: LCCOMB_X13_Y13_N4
\Inst_top_level|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector2~1_combout\ = (\Inst_top_level|rising_edge1|data_o~combout\ & (\Inst_top_level|Selector2~0_combout\)) # (!\Inst_top_level|rising_edge1|data_o~combout\ & (((\Inst_top_level|fstate.HZ1000~q\ & 
-- \Inst_top_level|rising_edge2|data_o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Selector2~0_combout\,
	datab => \Inst_top_level|fstate.HZ1000~q\,
	datac => \Inst_top_level|rising_edge1|data_o~combout\,
	datad => \Inst_top_level|rising_edge2|data_o~0_combout\,
	combout => \Inst_top_level|Selector2~1_combout\);

-- Location: FF_X9_Y13_N11
\Inst_top_level|SRAM|fstate.write2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|SRAM|fstate.write2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|fstate.write2~q\);

-- Location: LCCOMB_X11_Y11_N26
\Inst_top_level|lcd_entity|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux62~0_combout\ = ((\Inst_top_level|lcd_entity|byteSel\(2)) # ((\Inst_top_level|lcd_entity|byteSel\(0)) # (!\Inst_top_level|lcd_entity|byteSel\(3)))) # (!\Inst_top_level|lcd_entity|byteSel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(1),
	datab => \Inst_top_level|lcd_entity|byteSel\(2),
	datac => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => \Inst_top_level|lcd_entity|byteSel\(3),
	combout => \Inst_top_level|lcd_entity|Mux62~0_combout\);

-- Location: LCCOMB_X11_Y13_N0
\Inst_top_level|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector5~0_combout\ = (!\Inst_top_level|rising_edge0|reg_1~q\ & (\Inst_top_level|fstate.PAUSE~q\ & \Inst_top_level|rising_edge0|reg_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|rising_edge0|reg_1~q\,
	datac => \Inst_top_level|fstate.PAUSE~q\,
	datad => \Inst_top_level|rising_edge0|reg_0~q\,
	combout => \Inst_top_level|Selector5~0_combout\);

-- Location: LCCOMB_X11_Y13_N2
\Inst_top_level|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector5~1_combout\ = (\Inst_top_level|count_enable~q\ & ((\Inst_top_level|fstate.PAUSE~q\) # ((\Inst_top_level|SRAM_addr_i[4]~5_combout\) # (\Inst_top_level|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|fstate.PAUSE~q\,
	datab => \Inst_top_level|SRAM_addr_i[4]~5_combout\,
	datac => \Inst_top_level|count_enable~q\,
	datad => \Inst_top_level|Selector2~0_combout\,
	combout => \Inst_top_level|Selector5~1_combout\);

-- Location: LCCOMB_X11_Y13_N6
\Inst_top_level|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector5~2_combout\ = (\Inst_top_level|Selector5~0_combout\) # ((\Inst_top_level|Selector5~1_combout\) # ((!\Inst_top_level|fstate.INIT~q\ & \Inst_top_level|count_reset~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|fstate.INIT~q\,
	datab => \Inst_top_level|Selector5~0_combout\,
	datac => \Inst_top_level|count_reset~0_combout\,
	datad => \Inst_top_level|Selector5~1_combout\,
	combout => \Inst_top_level|Selector5~2_combout\);

-- Location: FF_X18_Y23_N27
\Inst_top_level|en_1hz|clk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|clk_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(15));

-- Location: FF_X18_Y23_N13
\Inst_top_level|en_1hz|clk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|clk_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(14));

-- Location: FF_X18_Y23_N7
\Inst_top_level|en_1hz|clk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|clk_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(13));

-- Location: FF_X17_Y23_N7
\Inst_top_level|en_1hz|clk_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(16));

-- Location: LCCOMB_X18_Y23_N0
\Inst_top_level|en_1hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Equal0~0_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(14) & (!\Inst_top_level|en_1hz|clk_cnt\(16) & (\Inst_top_level|en_1hz|clk_cnt\(15) & \Inst_top_level|en_1hz|clk_cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|clk_cnt\(14),
	datab => \Inst_top_level|en_1hz|clk_cnt\(16),
	datac => \Inst_top_level|en_1hz|clk_cnt\(15),
	datad => \Inst_top_level|en_1hz|clk_cnt\(13),
	combout => \Inst_top_level|en_1hz|Equal0~0_combout\);

-- Location: FF_X18_Y23_N15
\Inst_top_level|en_1hz|clk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|clk_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(12));

-- Location: FF_X17_Y24_N29
\Inst_top_level|en_1hz|clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(11));

-- Location: FF_X17_Y24_N27
\Inst_top_level|en_1hz|clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(10));

-- Location: FF_X17_Y24_N25
\Inst_top_level|en_1hz|clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(9));

-- Location: LCCOMB_X18_Y23_N16
\Inst_top_level|en_1hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Equal0~1_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(12) & (!\Inst_top_level|en_1hz|clk_cnt\(10) & (!\Inst_top_level|en_1hz|clk_cnt\(11) & !\Inst_top_level|en_1hz|clk_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|clk_cnt\(12),
	datab => \Inst_top_level|en_1hz|clk_cnt\(10),
	datac => \Inst_top_level|en_1hz|clk_cnt\(11),
	datad => \Inst_top_level|en_1hz|clk_cnt\(9),
	combout => \Inst_top_level|en_1hz|Equal0~1_combout\);

-- Location: FF_X17_Y24_N19
\Inst_top_level|en_1hz|clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(6));

-- Location: FF_X17_Y24_N17
\Inst_top_level|en_1hz|clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(5));

-- Location: FF_X17_Y24_N23
\Inst_top_level|en_1hz|clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(8));

-- Location: FF_X17_Y24_N1
\Inst_top_level|en_1hz|clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|clk_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(7));

-- Location: LCCOMB_X17_Y24_N2
\Inst_top_level|en_1hz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Equal0~2_combout\ = (!\Inst_top_level|en_1hz|clk_cnt\(8) & (\Inst_top_level|en_1hz|clk_cnt\(6) & (!\Inst_top_level|en_1hz|clk_cnt\(7) & \Inst_top_level|en_1hz|clk_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|clk_cnt\(8),
	datab => \Inst_top_level|en_1hz|clk_cnt\(6),
	datac => \Inst_top_level|en_1hz|clk_cnt\(7),
	datad => \Inst_top_level|en_1hz|clk_cnt\(5),
	combout => \Inst_top_level|en_1hz|Equal0~2_combout\);

-- Location: FF_X17_Y24_N15
\Inst_top_level|en_1hz|clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(4));

-- Location: FF_X17_Y24_N13
\Inst_top_level|en_1hz|clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(3));

-- Location: FF_X17_Y24_N11
\Inst_top_level|en_1hz|clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(2));

-- Location: FF_X17_Y24_N9
\Inst_top_level|en_1hz|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(1));

-- Location: LCCOMB_X17_Y24_N4
\Inst_top_level|en_1hz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Equal0~3_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(2) & (\Inst_top_level|en_1hz|clk_cnt\(1) & (\Inst_top_level|en_1hz|clk_cnt\(4) & \Inst_top_level|en_1hz|clk_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|clk_cnt\(2),
	datab => \Inst_top_level|en_1hz|clk_cnt\(1),
	datac => \Inst_top_level|en_1hz|clk_cnt\(4),
	datad => \Inst_top_level|en_1hz|clk_cnt\(3),
	combout => \Inst_top_level|en_1hz|Equal0~3_combout\);

-- Location: LCCOMB_X18_Y23_N22
\Inst_top_level|en_1hz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Equal0~4_combout\ = (\Inst_top_level|en_1hz|Equal0~2_combout\ & (\Inst_top_level|en_1hz|Equal0~0_combout\ & (\Inst_top_level|en_1hz|Equal0~3_combout\ & \Inst_top_level|en_1hz|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|Equal0~2_combout\,
	datab => \Inst_top_level|en_1hz|Equal0~0_combout\,
	datac => \Inst_top_level|en_1hz|Equal0~3_combout\,
	datad => \Inst_top_level|en_1hz|Equal0~1_combout\,
	combout => \Inst_top_level|en_1hz|Equal0~4_combout\);

-- Location: FF_X18_Y23_N21
\Inst_top_level|en_1hz|clk_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|clk_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(17));

-- Location: FF_X18_Y23_N19
\Inst_top_level|en_1hz|clk_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|clk_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(19));

-- Location: FF_X17_Y23_N31
\Inst_top_level|en_1hz|clk_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|clk_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(20));

-- Location: FF_X17_Y23_N11
\Inst_top_level|en_1hz|clk_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(18));

-- Location: LCCOMB_X18_Y23_N28
\Inst_top_level|en_1hz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Equal0~5_combout\ = (!\Inst_top_level|en_1hz|clk_cnt\(18) & (\Inst_top_level|en_1hz|clk_cnt\(19) & (\Inst_top_level|en_1hz|clk_cnt\(20) & \Inst_top_level|en_1hz|clk_cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|clk_cnt\(18),
	datab => \Inst_top_level|en_1hz|clk_cnt\(19),
	datac => \Inst_top_level|en_1hz|clk_cnt\(20),
	datad => \Inst_top_level|en_1hz|clk_cnt\(17),
	combout => \Inst_top_level|en_1hz|Equal0~5_combout\);

-- Location: FF_X18_Y23_N31
\Inst_top_level|en_1hz|clk_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|clk_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(21));

-- Location: FF_X17_Y23_N29
\Inst_top_level|en_1hz|clk_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|clk_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(22));

-- Location: FF_X17_Y23_N27
\Inst_top_level|en_1hz|clk_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|clk_cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(23));

-- Location: FF_X17_Y23_N23
\Inst_top_level|en_1hz|clk_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(24));

-- Location: LCCOMB_X18_Y23_N8
\Inst_top_level|en_1hz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Equal0~6_combout\ = (\Inst_top_level|en_1hz|clk_cnt\(21) & (!\Inst_top_level|en_1hz|clk_cnt\(24) & (\Inst_top_level|en_1hz|clk_cnt\(23) & \Inst_top_level|en_1hz|clk_cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|clk_cnt\(21),
	datab => \Inst_top_level|en_1hz|clk_cnt\(24),
	datac => \Inst_top_level|en_1hz|clk_cnt\(23),
	datad => \Inst_top_level|en_1hz|clk_cnt\(22),
	combout => \Inst_top_level|en_1hz|Equal0~6_combout\);

-- Location: FF_X18_Y23_N11
\Inst_top_level|en_1hz|clk_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_1hz|clk_cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_1hz|clk_cnt\(25));

-- Location: LCCOMB_X18_Y23_N24
\Inst_top_level|en_1hz|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Equal0~7_combout\ = (\Inst_top_level|en_60ns|clk_cnt\(0) & \Inst_top_level|en_1hz|clk_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|en_60ns|clk_cnt\(0),
	datad => \Inst_top_level|en_1hz|clk_cnt\(25),
	combout => \Inst_top_level|en_1hz|Equal0~7_combout\);

-- Location: LCCOMB_X18_Y23_N2
\Inst_top_level|en_1hz|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|Equal0~8_combout\ = (\Inst_top_level|en_1hz|Equal0~4_combout\ & (\Inst_top_level|en_1hz|Equal0~7_combout\ & (\Inst_top_level|en_1hz|Equal0~6_combout\ & \Inst_top_level|en_1hz|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|Equal0~4_combout\,
	datab => \Inst_top_level|en_1hz|Equal0~7_combout\,
	datac => \Inst_top_level|en_1hz|Equal0~6_combout\,
	datad => \Inst_top_level|en_1hz|Equal0~5_combout\,
	combout => \Inst_top_level|en_1hz|Equal0~8_combout\);

-- Location: FF_X18_Y13_N9
\Inst_top_level|power_on_reset|Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(0));

-- Location: LCCOMB_X18_Y12_N22
\Inst_top_level|power_on_reset|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Equal0~4_combout\ = (\Inst_top_level|power_on_reset|Cont\(9) & (\Inst_top_level|power_on_reset|Cont\(10) & (\Inst_top_level|power_on_reset|Cont\(8) & \Inst_top_level|power_on_reset|Cont\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|power_on_reset|Cont\(9),
	datab => \Inst_top_level|power_on_reset|Cont\(10),
	datac => \Inst_top_level|power_on_reset|Cont\(8),
	datad => \Inst_top_level|power_on_reset|Cont\(11),
	combout => \Inst_top_level|power_on_reset|Equal0~4_combout\);

-- Location: FF_X9_Y13_N25
\Inst_top_level|SRAM|fstate.write1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|SRAM|fstate~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|fstate.write1~q\);

-- Location: FF_X1_Y35_N11
\Inst_top_level|lcd_entity|clk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|clk_cnt\(13));

-- Location: FF_X1_Y35_N7
\Inst_top_level|lcd_entity|clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|clk_cnt\(11));

-- Location: FF_X1_Y36_N13
\Inst_top_level|lcd_entity|clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|clk_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|clk_cnt\(6));

-- Location: FF_X1_Y36_N11
\Inst_top_level|lcd_entity|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|clk_cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|clk_cnt\(0));

-- Location: LCCOMB_X18_Y23_N26
\Inst_top_level|en_1hz|clk_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|clk_cnt~0_combout\ = (\Inst_top_level|en_1hz|Add0~28_combout\ & !\Inst_top_level|en_1hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|en_1hz|Add0~28_combout\,
	datad => \Inst_top_level|en_1hz|Equal0~8_combout\,
	combout => \Inst_top_level|en_1hz|clk_cnt~0_combout\);

-- Location: LCCOMB_X18_Y23_N12
\Inst_top_level|en_1hz|clk_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|clk_cnt~1_combout\ = (!\Inst_top_level|en_1hz|Equal0~8_combout\ & \Inst_top_level|en_1hz|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|en_1hz|Equal0~8_combout\,
	datad => \Inst_top_level|en_1hz|Add0~26_combout\,
	combout => \Inst_top_level|en_1hz|clk_cnt~1_combout\);

-- Location: LCCOMB_X18_Y23_N6
\Inst_top_level|en_1hz|clk_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|clk_cnt~2_combout\ = (\Inst_top_level|en_1hz|Add0~24_combout\ & !\Inst_top_level|en_1hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|en_1hz|Add0~24_combout\,
	datad => \Inst_top_level|en_1hz|Equal0~8_combout\,
	combout => \Inst_top_level|en_1hz|clk_cnt~2_combout\);

-- Location: LCCOMB_X18_Y23_N14
\Inst_top_level|en_1hz|clk_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|clk_cnt~3_combout\ = (\Inst_top_level|en_1hz|Add0~22_combout\ & !\Inst_top_level|en_1hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|en_1hz|Add0~22_combout\,
	datad => \Inst_top_level|en_1hz|Equal0~8_combout\,
	combout => \Inst_top_level|en_1hz|clk_cnt~3_combout\);

-- Location: LCCOMB_X17_Y24_N0
\Inst_top_level|en_1hz|clk_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|clk_cnt~4_combout\ = (\Inst_top_level|en_1hz|Add0~12_combout\ & !\Inst_top_level|en_1hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|en_1hz|Add0~12_combout\,
	datad => \Inst_top_level|en_1hz|Equal0~8_combout\,
	combout => \Inst_top_level|en_1hz|clk_cnt~4_combout\);

-- Location: LCCOMB_X18_Y23_N20
\Inst_top_level|en_1hz|clk_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|clk_cnt~5_combout\ = (!\Inst_top_level|en_1hz|Equal0~8_combout\ & \Inst_top_level|en_1hz|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|en_1hz|Equal0~8_combout\,
	datad => \Inst_top_level|en_1hz|Add0~32_combout\,
	combout => \Inst_top_level|en_1hz|clk_cnt~5_combout\);

-- Location: LCCOMB_X18_Y23_N18
\Inst_top_level|en_1hz|clk_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|clk_cnt~6_combout\ = (!\Inst_top_level|en_1hz|Equal0~8_combout\ & \Inst_top_level|en_1hz|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|en_1hz|Equal0~8_combout\,
	datad => \Inst_top_level|en_1hz|Add0~36_combout\,
	combout => \Inst_top_level|en_1hz|clk_cnt~6_combout\);

-- Location: LCCOMB_X17_Y23_N30
\Inst_top_level|en_1hz|clk_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|clk_cnt~7_combout\ = (\Inst_top_level|en_1hz|Add0~38_combout\ & !\Inst_top_level|en_1hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|en_1hz|Add0~38_combout\,
	datad => \Inst_top_level|en_1hz|Equal0~8_combout\,
	combout => \Inst_top_level|en_1hz|clk_cnt~7_combout\);

-- Location: LCCOMB_X18_Y23_N30
\Inst_top_level|en_1hz|clk_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|clk_cnt~8_combout\ = (\Inst_top_level|en_1hz|Add0~40_combout\ & !\Inst_top_level|en_1hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|en_1hz|Add0~40_combout\,
	datad => \Inst_top_level|en_1hz|Equal0~8_combout\,
	combout => \Inst_top_level|en_1hz|clk_cnt~8_combout\);

-- Location: LCCOMB_X17_Y23_N28
\Inst_top_level|en_1hz|clk_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|clk_cnt~9_combout\ = (!\Inst_top_level|en_1hz|Equal0~8_combout\ & \Inst_top_level|en_1hz|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|Equal0~8_combout\,
	datad => \Inst_top_level|en_1hz|Add0~42_combout\,
	combout => \Inst_top_level|en_1hz|clk_cnt~9_combout\);

-- Location: LCCOMB_X17_Y23_N26
\Inst_top_level|en_1hz|clk_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|clk_cnt~10_combout\ = (!\Inst_top_level|en_1hz|Equal0~8_combout\ & \Inst_top_level|en_1hz|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_1hz|Equal0~8_combout\,
	datad => \Inst_top_level|en_1hz|Add0~44_combout\,
	combout => \Inst_top_level|en_1hz|clk_cnt~10_combout\);

-- Location: LCCOMB_X18_Y23_N10
\Inst_top_level|en_1hz|clk_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|clk_cnt~11_combout\ = (!\Inst_top_level|en_1hz|Equal0~8_combout\ & \Inst_top_level|en_1hz|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|en_1hz|Equal0~8_combout\,
	datad => \Inst_top_level|en_1hz|Add0~48_combout\,
	combout => \Inst_top_level|en_1hz|clk_cnt~11_combout\);

-- Location: LCCOMB_X18_Y13_N8
\Inst_top_level|power_on_reset|Cont[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[0]~57_combout\ = (!\Inst_top_level|power_on_reset|Cont\(0)) # (!\Inst_top_level|power_on_reset|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	datac => \Inst_top_level|power_on_reset|Cont\(0),
	combout => \Inst_top_level|power_on_reset|Cont[0]~57_combout\);

-- Location: LCCOMB_X9_Y13_N24
\Inst_top_level|SRAM|fstate~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM|fstate~13_combout\ = (\Inst_top_level|en_60ns|clk_en~q\ & (!\Inst_top_level|SRAM|fstate.ready~q\ & !\Inst_top_level|SRAM_RW~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_60ns|clk_en~q\,
	datab => \Inst_top_level|SRAM|fstate.ready~q\,
	datad => \Inst_top_level|SRAM_RW~q\,
	combout => \Inst_top_level|SRAM|fstate~13_combout\);

-- Location: LCCOMB_X1_Y36_N12
\Inst_top_level|lcd_entity|clk_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|clk_cnt~6_combout\ = (!\Inst_top_level|lcd_entity|Equal39~5_combout\ & \Inst_top_level|lcd_entity|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|lcd_entity|Equal39~5_combout\,
	datad => \Inst_top_level|lcd_entity|Add0~12_combout\,
	combout => \Inst_top_level|lcd_entity|clk_cnt~6_combout\);

-- Location: LCCOMB_X1_Y36_N10
\Inst_top_level|lcd_entity|clk_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|clk_cnt~10_combout\ = (\Inst_top_level|lcd_entity|Add0~0_combout\ & !\Inst_top_level|lcd_entity|Equal39~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|lcd_entity|Add0~0_combout\,
	datac => \Inst_top_level|lcd_entity|Equal39~5_combout\,
	combout => \Inst_top_level|lcd_entity|clk_cnt~10_combout\);

-- Location: LCCOMB_X16_Y14_N8
\Inst_top_level|lcd_entity|second_line[2][40]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|second_line[2][40]~2_combout\ = \Inst_top_level|SRAM|data_o\(12) $ (((\Inst_top_level|SRAM|data_o\(15) & ((\Inst_top_level|SRAM|data_o\(13)) # (\Inst_top_level|SRAM|data_o\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(12),
	datab => \Inst_top_level|SRAM|data_o\(13),
	datac => \Inst_top_level|SRAM|data_o\(15),
	datad => \Inst_top_level|SRAM|data_o\(14),
	combout => \Inst_top_level|lcd_entity|second_line[2][40]~2_combout\);

-- Location: LCCOMB_X17_Y14_N28
\Inst_top_level|lcd_entity|second_line[2][16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|second_line[2][16]~4_combout\ = \Inst_top_level|SRAM|data_o\(0) $ (((\Inst_top_level|SRAM|data_o\(3) & ((\Inst_top_level|SRAM|data_o\(2)) # (\Inst_top_level|SRAM|data_o\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(0),
	datab => \Inst_top_level|SRAM|data_o\(2),
	datac => \Inst_top_level|SRAM|data_o\(3),
	datad => \Inst_top_level|SRAM|data_o\(1),
	combout => \Inst_top_level|lcd_entity|second_line[2][16]~4_combout\);

-- Location: LCCOMB_X12_Y12_N16
\Inst_top_level|lcd_entity|Mux66~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux66~13_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(0) & !\Inst_top_level|lcd_entity|byteSel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => \Inst_top_level|lcd_entity|byteSel\(1),
	combout => \Inst_top_level|lcd_entity|Mux66~13_combout\);

-- Location: LCCOMB_X16_Y14_N24
\Inst_top_level|lcd_entity|second_line[2][33]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|second_line[2][33]~7_combout\ = (\Inst_top_level|SRAM|data_o\(8) & (((\Inst_top_level|SRAM|data_o\(9))))) # (!\Inst_top_level|SRAM|data_o\(8) & ((\Inst_top_level|SRAM|data_o\(11) & (\Inst_top_level|SRAM|data_o\(10) & 
-- !\Inst_top_level|SRAM|data_o\(9))) # (!\Inst_top_level|SRAM|data_o\(11) & ((\Inst_top_level|SRAM|data_o\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(10),
	datab => \Inst_top_level|SRAM|data_o\(8),
	datac => \Inst_top_level|SRAM|data_o\(11),
	datad => \Inst_top_level|SRAM|data_o\(9),
	combout => \Inst_top_level|lcd_entity|second_line[2][33]~7_combout\);

-- Location: LCCOMB_X13_Y14_N22
\Inst_top_level|lcd_entity|Mux68~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~8_combout\ = (\Inst_top_level|SRAM|data_o\(14) & ((\Inst_top_level|SRAM|data_o\(12)) # ((\Inst_top_level|SRAM|data_o\(13)) # (!\Inst_top_level|SRAM|data_o\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(12),
	datab => \Inst_top_level|SRAM|data_o\(15),
	datac => \Inst_top_level|SRAM|data_o\(13),
	datad => \Inst_top_level|SRAM|data_o\(14),
	combout => \Inst_top_level|lcd_entity|Mux68~8_combout\);

-- Location: LCCOMB_X16_Y14_N16
\Inst_top_level|lcd_entity|Mux68~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~10_combout\ = (\Inst_top_level|SRAM|data_o\(10) & ((\Inst_top_level|SRAM|data_o\(9)) # ((\Inst_top_level|SRAM|data_o\(8)) # (!\Inst_top_level|SRAM|data_o\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(10),
	datab => \Inst_top_level|SRAM|data_o\(9),
	datac => \Inst_top_level|SRAM|data_o\(8),
	datad => \Inst_top_level|SRAM|data_o\(11),
	combout => \Inst_top_level|lcd_entity|Mux68~10_combout\);

-- Location: LCCOMB_X13_Y13_N28
\Inst_top_level|lcd_entity|Mux67~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux67~3_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(3) & ((\Inst_top_level|fstate.INIT~q\ & ((\Inst_top_level|SRAM_addr_i[3]~13_combout\))) # (!\Inst_top_level|fstate.INIT~q\ & (\Inst_top_level|count_60ns|r_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_60ns|r_reg\(3),
	datab => \Inst_top_level|fstate.INIT~q\,
	datac => \Inst_top_level|lcd_entity|byteSel\(3),
	datad => \Inst_top_level|SRAM_addr_i[3]~13_combout\,
	combout => \Inst_top_level|lcd_entity|Mux67~3_combout\);

-- Location: LCCOMB_X14_Y14_N2
\Inst_top_level|lcd_entity|Mux37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux37~2_combout\ = (\Inst_top_level|SRAM|data_o\(15) & !\Inst_top_level|SRAM|data_o\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(15),
	datad => \Inst_top_level|SRAM|data_o\(13),
	combout => \Inst_top_level|lcd_entity|Mux37~2_combout\);

-- Location: LCCOMB_X12_Y12_N0
\Inst_top_level|lcd_entity|Mux70~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~62_combout\ = (\Inst_top_level|selectMode\(1) & ((\Inst_top_level|lcd_entity|byteSel\(0)) # (\Inst_top_level|selectMode\(0)))) # (!\Inst_top_level|selectMode\(1) & (\Inst_top_level|lcd_entity|byteSel\(0) $ 
-- (!\Inst_top_level|selectMode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|selectMode\(1),
	datac => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => \Inst_top_level|selectMode\(0),
	combout => \Inst_top_level|lcd_entity|Mux70~62_combout\);

-- Location: LCCOMB_X12_Y12_N10
\Inst_top_level|lcd_entity|Mux70~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~63_combout\ = (\Inst_top_level|lcd_entity|byteSel\(3) & ((\Inst_top_level|lcd_entity|byteSel\(1) & ((\Inst_top_level|lcd_entity|Mux70~62_combout\))) # (!\Inst_top_level|lcd_entity|byteSel\(1) & 
-- (\Inst_top_level|lcd_entity|Mux70~51_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(3) & (!\Inst_top_level|lcd_entity|byteSel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(3),
	datab => \Inst_top_level|lcd_entity|byteSel\(1),
	datac => \Inst_top_level|lcd_entity|Mux70~51_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~62_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~63_combout\);

-- Location: LCCOMB_X13_Y11_N6
\Inst_top_level|lcd_entity|Mux70~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~68_combout\ = (\Inst_top_level|lcd_entity|byteSel\(1) & (\Inst_top_level|lcd_entity|byteSel\(0) $ ((\Inst_top_level|lcd_entity|Mux70~90_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(1) & 
-- ((\Inst_top_level|lcd_entity|byteSel\(0)) # ((\Inst_top_level|lcd_entity|Mux70~90_combout\) # (!\Inst_top_level|lcd_entity|Mux70~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(1),
	datab => \Inst_top_level|lcd_entity|byteSel\(0),
	datac => \Inst_top_level|lcd_entity|Mux70~90_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~53_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~68_combout\);

-- Location: LCCOMB_X13_Y14_N14
\Inst_top_level|lcd_entity|Mux65~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux65~2_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(1) & (((\Inst_top_level|lcd_entity|Mux33~0_combout\ & !\Inst_top_level|lcd_entity|LessThan2~0_combout\)) # (!\Inst_top_level|lcd_entity|byteSel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(0),
	datab => \Inst_top_level|lcd_entity|Mux33~0_combout\,
	datac => \Inst_top_level|lcd_entity|byteSel\(1),
	datad => \Inst_top_level|lcd_entity|LessThan2~0_combout\,
	combout => \Inst_top_level|lcd_entity|Mux65~2_combout\);

-- Location: LCCOMB_X11_Y11_N22
\Inst_top_level|lcd_entity|Mux70~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~80_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(3) & (((!\Inst_top_level|selectMode\(0) & !\Inst_top_level|lcd_entity|byteSel\(0))) # (!\Inst_top_level|lcd_entity|byteSel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(3),
	datab => \Inst_top_level|selectMode\(0),
	datac => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => \Inst_top_level|lcd_entity|byteSel\(1),
	combout => \Inst_top_level|lcd_entity|Mux70~80_combout\);

-- Location: FF_X19_Y13_N13
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~0_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(8));

-- Location: FF_X19_Y13_N1
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~8_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(6));

-- Location: LCCOMB_X19_Y13_N10
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~0_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(9) & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(7) & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(8) & 
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(9),
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(7),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(8),
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(6),
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~0_combout\);

-- Location: FF_X21_Y13_N5
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~9_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(5));

-- Location: FF_X20_Y13_N9
\Inst_top_level|i2c_entity|I2C_Transmit_Read|stretch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|stretch~0_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|stretch~q\);

-- Location: LCCOMB_X19_Y14_N12
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~0_combout\ = ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.ready~q\ & !\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.stop~q\)) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|sda_int~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.ready~q\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|sda_int~q\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.stop~q\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~0_combout\);

-- Location: LCCOMB_X19_Y14_N6
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~0_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0) & \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1),
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~0_combout\);

-- Location: FF_X18_Y14_N5
\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|Mux4~3_combout\,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(3));

-- Location: FF_X18_Y14_N3
\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|Mux7~3_combout\,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(0));

-- Location: LCCOMB_X17_Y14_N30
\Inst_top_level|i2c_entity|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux5~0_combout\ = (\Inst_top_level|i2c_entity|Mux6~2_combout\ & (((\Inst_top_level|SRAM|data_o\(2)) # (!\Inst_top_level|i2c_entity|Mux6~1_combout\)))) # (!\Inst_top_level|i2c_entity|Mux6~2_combout\ & 
-- (\Inst_top_level|SRAM|data_o\(14) & ((\Inst_top_level|i2c_entity|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(14),
	datab => \Inst_top_level|i2c_entity|Mux6~2_combout\,
	datac => \Inst_top_level|SRAM|data_o\(2),
	datad => \Inst_top_level|i2c_entity|Mux6~1_combout\,
	combout => \Inst_top_level|i2c_entity|Mux5~0_combout\);

-- Location: LCCOMB_X18_Y14_N12
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~3_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1) & (\Inst_top_level|i2c_entity|Mux1~0_combout\)) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1) & 
-- ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0) & (\Inst_top_level|i2c_entity|Mux1~0_combout\)) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0) & ((\Inst_top_level|i2c_entity|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|Mux1~0_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0),
	datad => \Inst_top_level|i2c_entity|Mux0~0_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~3_combout\);

-- Location: FF_X19_Y15_N23
\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector21~0_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.rd~q\);

-- Location: LCCOMB_X19_Y14_N18
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~5_combout\ = ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~1_combout\ & (!\Inst_top_level|i2c_entity|ena~q\)) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~1_combout\ & 
-- ((!\Inst_top_level|i2c_entity|I2C_Transmit_Read|sda_int~q\)))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.rd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|ena~q\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~1_combout\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|sda_int~q\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.rd~q\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~5_combout\);

-- Location: FF_X17_Y13_N11
\Inst_top_level|pwm_entity|num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|SRAM|data_o\(13),
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|num\(5));

-- Location: FF_X17_Y13_N7
\Inst_top_level|pwm_entity|num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|SRAM|data_o\(11),
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|num\(3));

-- Location: FF_X17_Y13_N5
\Inst_top_level|pwm_entity|num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|SRAM|data_o\(10),
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|num\(2));

-- Location: FF_X17_Y13_N31
\Inst_top_level|pwm_entity|count8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count8[0]~21_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count8\(0));

-- Location: LCCOMB_X13_Y13_N10
\Inst_top_level|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector7~0_combout\ = (\Inst_top_level|SRAM_addr_i[4]~5_combout\ & ((\Inst_top_level|selectMode\(0)) # ((\Inst_top_level|rising_edge1|data_o~combout\) # (\Inst_top_level|rising_edge2|data_o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(0),
	datab => \Inst_top_level|SRAM_addr_i[4]~5_combout\,
	datac => \Inst_top_level|rising_edge1|data_o~combout\,
	datad => \Inst_top_level|rising_edge2|data_o~0_combout\,
	combout => \Inst_top_level|Selector7~0_combout\);

-- Location: LCCOMB_X19_Y13_N0
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~8_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~12_combout\ & !\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~12_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~8_combout\);

-- Location: LCCOMB_X21_Y13_N4
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~9_combout\ = (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\ & \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~10_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~9_combout\);

-- Location: LCCOMB_X20_Y13_N8
\Inst_top_level|i2c_entity|I2C_Transmit_Read|stretch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|stretch~0_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~4_combout\ & ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|stretch~q\))) # 
-- (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~4_combout\ & (!\GPIO[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO[1]~input_o\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|stretch~q\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~4_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|stretch~0_combout\);

-- Location: LCCOMB_X19_Y11_N26
\Inst_top_level|i2c_entity|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Equal0~5_combout\ = (!\Inst_top_level|i2c_entity|count\(15) & (!\Inst_top_level|i2c_entity|count\(12) & (!\Inst_top_level|i2c_entity|count\(14) & !\Inst_top_level|i2c_entity|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|count\(15),
	datab => \Inst_top_level|i2c_entity|count\(12),
	datac => \Inst_top_level|i2c_entity|count\(14),
	datad => \Inst_top_level|i2c_entity|count\(13),
	combout => \Inst_top_level|i2c_entity|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y15_N22
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector21~0_combout\ = (\Inst_top_level|i2c_entity|ena~q\ & ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.mstr_ack~q\) # ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.rd~q\ & 
-- !\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~1_combout\)))) # (!\Inst_top_level|i2c_entity|ena~q\ & (((\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.rd~q\ & !\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|ena~q\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.mstr_ack~q\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.rd~q\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~1_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector21~0_combout\);

-- Location: LCCOMB_X14_Y14_N12
\Inst_top_level|lcd_entity|Mux37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux37~3_combout\ = (\Inst_top_level|selectMode\(1) & ((\Inst_top_level|selectMode\(0)) # ((!\Inst_top_level|SRAM|data_o\(14) & \Inst_top_level|lcd_entity|Mux37~2_combout\)))) # (!\Inst_top_level|selectMode\(1) & 
-- (\Inst_top_level|selectMode\(0) & (!\Inst_top_level|SRAM|data_o\(14) & \Inst_top_level|lcd_entity|Mux37~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(1),
	datab => \Inst_top_level|selectMode\(0),
	datac => \Inst_top_level|SRAM|data_o\(14),
	datad => \Inst_top_level|lcd_entity|Mux37~2_combout\,
	combout => \Inst_top_level|lcd_entity|Mux37~3_combout\);

-- Location: LCCOMB_X13_Y12_N22
\Inst_top_level|lcd_entity|Mux70~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~88_combout\ = (\Inst_top_level|lcd_entity|byteSel\(1) & ((\Inst_top_level|lcd_entity|byteSel\(0) & (\Inst_top_level|lcd_entity|Mux70~40_combout\)) # (!\Inst_top_level|lcd_entity|byteSel\(0) & 
-- ((\Inst_top_level|lcd_entity|Mux70~52_combout\))))) # (!\Inst_top_level|lcd_entity|byteSel\(1) & ((\Inst_top_level|lcd_entity|byteSel\(0) & ((\Inst_top_level|lcd_entity|Mux70~52_combout\))) # (!\Inst_top_level|lcd_entity|byteSel\(0) & 
-- (\Inst_top_level|lcd_entity|Mux70~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(1),
	datab => \Inst_top_level|lcd_entity|Mux70~40_combout\,
	datac => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => \Inst_top_level|lcd_entity|Mux70~52_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~88_combout\);

-- Location: LCCOMB_X14_Y11_N20
\Inst_top_level|lcd_entity|Mux70~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~90_combout\ = (\Inst_top_level|lcd_entity|Mux70~42_combout\ & ((\Inst_top_level|lcd_entity|byteSel\(0) & (\Inst_top_level|lcd_entity|Mux1~0_combout\)) # (!\Inst_top_level|lcd_entity|byteSel\(0) & 
-- ((\Inst_top_level|lcd_entity|byteSel\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(0),
	datab => \Inst_top_level|lcd_entity|Mux1~0_combout\,
	datac => \Inst_top_level|lcd_entity|Mux70~42_combout\,
	datad => \Inst_top_level|lcd_entity|byteSel\(1),
	combout => \Inst_top_level|lcd_entity|Mux70~90_combout\);

-- Location: LCCOMB_X11_Y13_N14
\Inst_top_level|Selector6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector6~6_combout\ = (\Inst_top_level|fstate.TEST~q\ & ((\Inst_top_level|rising_edge1|data_o~combout\) # ((\Inst_top_level|rising_edge0|reg_0~q\ & !\Inst_top_level|rising_edge0|reg_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|fstate.TEST~q\,
	datab => \Inst_top_level|rising_edge0|reg_0~q\,
	datac => \Inst_top_level|rising_edge0|reg_1~q\,
	datad => \Inst_top_level|rising_edge1|data_o~combout\,
	combout => \Inst_top_level|Selector6~6_combout\);

-- Location: LCCOMB_X12_Y11_N10
\Inst_top_level|lcd_entity|Mux70~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~91_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(3) & ((\Inst_top_level|selectMode\(0) & (!\Inst_top_level|lcd_entity|byteSel\(1) & \Inst_top_level|lcd_entity|byteSel\(0))) # (!\Inst_top_level|selectMode\(0) & 
-- ((!\Inst_top_level|lcd_entity|byteSel\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(3),
	datab => \Inst_top_level|selectMode\(0),
	datac => \Inst_top_level|lcd_entity|byteSel\(1),
	datad => \Inst_top_level|lcd_entity|byteSel\(0),
	combout => \Inst_top_level|lcd_entity|Mux70~91_combout\);

-- Location: LCCOMB_X12_Y12_N20
\Inst_top_level|lcd_entity|Mux66~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux66~8_combout\ = (\Inst_top_level|selectPWM\(0) & (!\Inst_top_level|selectPWM\(1) & ((!\Inst_top_level|lcd_entity|byteSel\(1)) # (!\Inst_top_level|lcd_entity|byteSel\(0))))) # (!\Inst_top_level|selectPWM\(0) & 
-- ((\Inst_top_level|lcd_entity|byteSel\(0) & ((!\Inst_top_level|lcd_entity|byteSel\(1)))) # (!\Inst_top_level|lcd_entity|byteSel\(0) & ((\Inst_top_level|selectPWM\(1)) # (\Inst_top_level|lcd_entity|byteSel\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectPWM\(0),
	datab => \Inst_top_level|selectPWM\(1),
	datac => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => \Inst_top_level|lcd_entity|byteSel\(1),
	combout => \Inst_top_level|lcd_entity|Mux66~8_combout\);

-- Location: LCCOMB_X12_Y12_N26
\Inst_top_level|lcd_entity|Mux66~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux66~20_combout\ = (\Inst_top_level|selectMode\(0) & (\Inst_top_level|selectMode\(1) & (!\Inst_top_level|lcd_entity|byteSel\(3) & \Inst_top_level|lcd_entity|Mux66~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(0),
	datab => \Inst_top_level|selectMode\(1),
	datac => \Inst_top_level|lcd_entity|byteSel\(3),
	datad => \Inst_top_level|lcd_entity|Mux66~8_combout\,
	combout => \Inst_top_level|lcd_entity|Mux66~20_combout\);

-- Location: LCCOMB_X17_Y13_N30
\Inst_top_level|pwm_entity|count8[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count8[0]~21_combout\ = !\Inst_top_level|pwm_entity|count8\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|pwm_entity|count8\(0),
	combout => \Inst_top_level|pwm_entity|count8[0]~21_combout\);

-- Location: IOIBUF_X60_Y0_N22
\GPIO[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(1),
	o => \GPIO[1]~input_o\);

-- Location: LCCOMB_X18_Y23_N4
\Inst_top_level|en_1hz|clk_en~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_1hz|clk_en~feeder_combout\ = \Inst_top_level|en_1hz|Equal0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|en_1hz|Equal0~8_combout\,
	combout => \Inst_top_level|en_1hz|clk_en~feeder_combout\);

-- Location: LCCOMB_X9_Y13_N10
\Inst_top_level|SRAM|fstate.write2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM|fstate.write2~feeder_combout\ = \Inst_top_level|SRAM|fstate.write1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|SRAM|fstate.write1~q\,
	combout => \Inst_top_level|SRAM|fstate.write2~feeder_combout\);

-- Location: IOOBUF_X96_Y0_N23
\GPIO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[3]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\GPIO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[4]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\GPIO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[5]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\GPIO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[6]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\GPIO[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[7]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\GPIO[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[8]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\GPIO[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[9]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\GPIO[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[10]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\GPIO[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[11]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\GPIO[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[12]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\GPIO[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[13]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\GPIO[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[14]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\GPIO[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[15]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\GPIO[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[16]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\GPIO[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[17]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\GPIO[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[18]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\GPIO[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[19]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\GPIO[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[20]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\GPIO[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[21]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\GPIO[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[22]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\GPIO[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[23]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\GPIO[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[24]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\GPIO[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[25]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\GPIO[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[26]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\GPIO[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[27]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\GPIO[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[28]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\GPIO[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[29]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\GPIO[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[30]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\GPIO[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[31]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\GPIO[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[32]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\GPIO[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[33]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\GPIO[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[34]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\GPIO[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[35]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\SRAM_DQ[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_data_i[0]~0_combout\,
	oe => \Inst_top_level|SRAM|ALT_INV_tri_n~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\SRAM_DQ[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_data_i[1]~1_combout\,
	oe => \Inst_top_level|SRAM|ALT_INV_tri_n~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\SRAM_DQ[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_data_i[2]~2_combout\,
	oe => \Inst_top_level|SRAM|ALT_INV_tri_n~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\SRAM_DQ[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_data_i[3]~3_combout\,
	oe => \Inst_top_level|SRAM|ALT_INV_tri_n~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\SRAM_DQ[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_data_i[4]~4_combout\,
	oe => \Inst_top_level|SRAM|ALT_INV_tri_n~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\SRAM_DQ[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_data_i[5]~5_combout\,
	oe => \Inst_top_level|SRAM|ALT_INV_tri_n~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\SRAM_DQ[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_data_i[6]~6_combout\,
	oe => \Inst_top_level|SRAM|ALT_INV_tri_n~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\SRAM_DQ[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_data_i[7]~7_combout\,
	oe => \Inst_top_level|SRAM|ALT_INV_tri_n~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\SRAM_DQ[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_data_i[8]~8_combout\,
	oe => \Inst_top_level|SRAM|ALT_INV_tri_n~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[8]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\SRAM_DQ[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_data_i[9]~9_combout\,
	oe => \Inst_top_level|SRAM|ALT_INV_tri_n~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[9]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\SRAM_DQ[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_data_i[10]~10_combout\,
	oe => \Inst_top_level|SRAM|ALT_INV_tri_n~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[10]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\SRAM_DQ[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_data_i[11]~11_combout\,
	oe => \Inst_top_level|SRAM|ALT_INV_tri_n~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[11]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\SRAM_DQ[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_data_i[12]~12_combout\,
	oe => \Inst_top_level|SRAM|ALT_INV_tri_n~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[12]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\SRAM_DQ[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_data_i[13]~13_combout\,
	oe => \Inst_top_level|SRAM|ALT_INV_tri_n~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[13]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\SRAM_DQ[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_data_i[14]~14_combout\,
	oe => \Inst_top_level|SRAM|ALT_INV_tri_n~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[14]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\SRAM_DQ[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_data_i[15]~15_combout\,
	oe => \Inst_top_level|SRAM|ALT_INV_tri_n~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[15]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\LCD_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|lcd_entity|data_o\(0),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\LCD_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|lcd_entity|data_o\(1),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\LCD_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|lcd_entity|data_o\(2),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\LCD_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|lcd_entity|data_o\(3),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\LCD_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|lcd_entity|data_o\(4),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\LCD_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|lcd_entity|data_o\(5),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\LCD_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|lcd_entity|data_o\(6),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\LCD_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|lcd_entity|data_o\(7),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[7]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\GPIO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector29~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO[0]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\GPIO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO[1]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\GPIO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|pwm_entity|output~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\SRAM_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_addr_i[0]~8_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\SRAM_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_addr_i[1]~10_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\SRAM_ADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_addr_i[2]~12_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\SRAM_ADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_addr_i[3]~14_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\SRAM_ADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_addr_i[4]~16_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\SRAM_ADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_addr_i[5]~18_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\SRAM_ADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_addr_i[6]~20_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\SRAM_ADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM_addr_i[7]~22_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\SRAM_ADDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[8]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\SRAM_ADDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[9]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\SRAM_ADDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\SRAM_ADDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[11]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\SRAM_ADDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\SRAM_ADDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[13]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\SRAM_ADDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[14]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\SRAM_ADDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\SRAM_ADDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\SRAM_ADDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[17]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\SRAM_ADDR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[18]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\SRAM_ADDR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[19]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\SRAM_UB_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_UB_N~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\SRAM_LB_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_LB_N~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\SRAM_WE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM|ALT_INV_WE_n_reg~q\,
	devoe => ww_devoe,
	o => \SRAM_WE_N~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\SRAM_CE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_CE_N~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\SRAM_OE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|SRAM|ALT_INV_OE_n_reg~q\,
	devoe => ww_devoe,
	o => \SRAM_OE_N~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\LCD_ON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_ON~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\LCD_BLON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_BLON~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_RW~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\LCD_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|lcd_entity|EN_sig~q\,
	devoe => ww_devoe,
	o => \LCD_EN~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|lcd_entity|RS_sig~q\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: LCCOMB_X16_Y13_N0
\Inst_top_level|count_60ns|r_reg[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_60ns|r_reg[0]~8_combout\ = \Inst_top_level|count_60ns|r_reg\(0) $ (VCC)
-- \Inst_top_level|count_60ns|r_reg[0]~9\ = CARRY(\Inst_top_level|count_60ns|r_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count_60ns|r_reg\(0),
	datad => VCC,
	combout => \Inst_top_level|count_60ns|r_reg[0]~8_combout\,
	cout => \Inst_top_level|count_60ns|r_reg[0]~9\);

-- Location: LCCOMB_X16_Y13_N4
\Inst_top_level|count_60ns|r_reg[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_60ns|r_reg[2]~13_combout\ = (\Inst_top_level|count_60ns|r_reg\(2) & (\Inst_top_level|count_60ns|r_reg[1]~12\ $ (GND))) # (!\Inst_top_level|count_60ns|r_reg\(2) & (!\Inst_top_level|count_60ns|r_reg[1]~12\ & VCC))
-- \Inst_top_level|count_60ns|r_reg[2]~14\ = CARRY((\Inst_top_level|count_60ns|r_reg\(2) & !\Inst_top_level|count_60ns|r_reg[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count_60ns|r_reg\(2),
	datad => VCC,
	cin => \Inst_top_level|count_60ns|r_reg[1]~12\,
	combout => \Inst_top_level|count_60ns|r_reg[2]~13_combout\,
	cout => \Inst_top_level|count_60ns|r_reg[2]~14\);

-- Location: LCCOMB_X16_Y13_N6
\Inst_top_level|count_60ns|r_reg[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_60ns|r_reg[3]~15_combout\ = (\Inst_top_level|count_60ns|r_reg\(3) & (!\Inst_top_level|count_60ns|r_reg[2]~14\)) # (!\Inst_top_level|count_60ns|r_reg\(3) & ((\Inst_top_level|count_60ns|r_reg[2]~14\) # (GND)))
-- \Inst_top_level|count_60ns|r_reg[3]~16\ = CARRY((!\Inst_top_level|count_60ns|r_reg[2]~14\) # (!\Inst_top_level|count_60ns|r_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_60ns|r_reg\(3),
	datad => VCC,
	cin => \Inst_top_level|count_60ns|r_reg[2]~14\,
	combout => \Inst_top_level|count_60ns|r_reg[3]~15_combout\,
	cout => \Inst_top_level|count_60ns|r_reg[3]~16\);

-- Location: LCCOMB_X16_Y13_N8
\Inst_top_level|count_60ns|r_reg[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_60ns|r_reg[4]~17_combout\ = (\Inst_top_level|count_60ns|r_reg\(4) & (\Inst_top_level|count_60ns|r_reg[3]~16\ $ (GND))) # (!\Inst_top_level|count_60ns|r_reg\(4) & (!\Inst_top_level|count_60ns|r_reg[3]~16\ & VCC))
-- \Inst_top_level|count_60ns|r_reg[4]~18\ = CARRY((\Inst_top_level|count_60ns|r_reg\(4) & !\Inst_top_level|count_60ns|r_reg[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count_60ns|r_reg\(4),
	datad => VCC,
	cin => \Inst_top_level|count_60ns|r_reg[3]~16\,
	combout => \Inst_top_level|count_60ns|r_reg[4]~17_combout\,
	cout => \Inst_top_level|count_60ns|r_reg[4]~18\);

-- Location: LCCOMB_X17_Y24_N6
\Inst_top_level|en_60ns|clk_cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_60ns|clk_cnt[0]~1_combout\ = !\Inst_top_level|en_60ns|clk_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|en_60ns|clk_cnt\(0),
	combout => \Inst_top_level|en_60ns|clk_cnt[0]~1_combout\);

-- Location: FF_X17_Y24_N7
\Inst_top_level|en_60ns|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_60ns|clk_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_60ns|clk_cnt\(0));

-- Location: LCCOMB_X9_Y13_N26
\Inst_top_level|en_60ns|clk_cnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_60ns|clk_cnt[1]~0_combout\ = \Inst_top_level|en_60ns|clk_cnt\(1) $ (\Inst_top_level|en_60ns|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|en_60ns|clk_cnt\(1),
	datad => \Inst_top_level|en_60ns|clk_cnt\(0),
	combout => \Inst_top_level|en_60ns|clk_cnt[1]~0_combout\);

-- Location: FF_X9_Y13_N27
\Inst_top_level|en_60ns|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_60ns|clk_cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_60ns|clk_cnt\(1));

-- Location: LCCOMB_X9_Y13_N12
\Inst_top_level|en_60ns|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|en_60ns|Equal0~0_combout\ = (\Inst_top_level|en_60ns|clk_cnt\(1) & \Inst_top_level|en_60ns|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|en_60ns|clk_cnt\(1),
	datad => \Inst_top_level|en_60ns|clk_cnt\(0),
	combout => \Inst_top_level|en_60ns|Equal0~0_combout\);

-- Location: FF_X9_Y13_N13
\Inst_top_level|en_60ns|clk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|en_60ns|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|en_60ns|clk_en~q\);

-- Location: LCCOMB_X11_Y13_N4
\Inst_top_level|count_60ns|r_reg[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_60ns|r_reg[0]~10_combout\ = (\Inst_top_level|count_enable~q\ & \Inst_top_level|en_60ns|clk_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_enable~q\,
	datad => \Inst_top_level|en_60ns|clk_en~q\,
	combout => \Inst_top_level|count_60ns|r_reg[0]~10_combout\);

-- Location: FF_X16_Y13_N9
\Inst_top_level|count_60ns|r_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count_60ns|r_reg[4]~17_combout\,
	clrn => \Inst_top_level|count_reset~q\,
	ena => \Inst_top_level|count_60ns|r_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count_60ns|r_reg\(4));

-- Location: LCCOMB_X16_Y13_N10
\Inst_top_level|count_60ns|r_reg[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_60ns|r_reg[5]~19_combout\ = (\Inst_top_level|count_60ns|r_reg\(5) & (!\Inst_top_level|count_60ns|r_reg[4]~18\)) # (!\Inst_top_level|count_60ns|r_reg\(5) & ((\Inst_top_level|count_60ns|r_reg[4]~18\) # (GND)))
-- \Inst_top_level|count_60ns|r_reg[5]~20\ = CARRY((!\Inst_top_level|count_60ns|r_reg[4]~18\) # (!\Inst_top_level|count_60ns|r_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_60ns|r_reg\(5),
	datad => VCC,
	cin => \Inst_top_level|count_60ns|r_reg[4]~18\,
	combout => \Inst_top_level|count_60ns|r_reg[5]~19_combout\,
	cout => \Inst_top_level|count_60ns|r_reg[5]~20\);

-- Location: FF_X16_Y13_N11
\Inst_top_level|count_60ns|r_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count_60ns|r_reg[5]~19_combout\,
	clrn => \Inst_top_level|count_reset~q\,
	ena => \Inst_top_level|count_60ns|r_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count_60ns|r_reg\(5));

-- Location: LCCOMB_X16_Y13_N12
\Inst_top_level|count_60ns|r_reg[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_60ns|r_reg[6]~21_combout\ = (\Inst_top_level|count_60ns|r_reg\(6) & (\Inst_top_level|count_60ns|r_reg[5]~20\ $ (GND))) # (!\Inst_top_level|count_60ns|r_reg\(6) & (!\Inst_top_level|count_60ns|r_reg[5]~20\ & VCC))
-- \Inst_top_level|count_60ns|r_reg[6]~22\ = CARRY((\Inst_top_level|count_60ns|r_reg\(6) & !\Inst_top_level|count_60ns|r_reg[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_60ns|r_reg\(6),
	datad => VCC,
	cin => \Inst_top_level|count_60ns|r_reg[5]~20\,
	combout => \Inst_top_level|count_60ns|r_reg[6]~21_combout\,
	cout => \Inst_top_level|count_60ns|r_reg[6]~22\);

-- Location: LCCOMB_X16_Y13_N14
\Inst_top_level|count_60ns|r_reg[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_60ns|r_reg[7]~23_combout\ = \Inst_top_level|count_60ns|r_reg\(7) $ (\Inst_top_level|count_60ns|r_reg[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count_60ns|r_reg\(7),
	cin => \Inst_top_level|count_60ns|r_reg[6]~22\,
	combout => \Inst_top_level|count_60ns|r_reg[7]~23_combout\);

-- Location: FF_X16_Y13_N15
\Inst_top_level|count_60ns|r_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count_60ns|r_reg[7]~23_combout\,
	clrn => \Inst_top_level|count_reset~q\,
	ena => \Inst_top_level|count_60ns|r_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count_60ns|r_reg\(7));

-- Location: LCCOMB_X14_Y13_N10
\Inst_top_level|count_60ns|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_60ns|Equal0~1_combout\ = (((!\Inst_top_level|count_60ns|r_reg\(7)) # (!\Inst_top_level|count_60ns|r_reg\(5))) # (!\Inst_top_level|count_60ns|r_reg\(4))) # (!\Inst_top_level|count_60ns|r_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_60ns|r_reg\(6),
	datab => \Inst_top_level|count_60ns|r_reg\(4),
	datac => \Inst_top_level|count_60ns|r_reg\(5),
	datad => \Inst_top_level|count_60ns|r_reg\(7),
	combout => \Inst_top_level|count_60ns|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y13_N22
\Inst_top_level|count_reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_reset~0_combout\ = (\Inst_top_level|ROM_done~q\) # ((\Inst_top_level|count_60ns|Equal0~0_combout\) # (\Inst_top_level|count_60ns|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|ROM_done~q\,
	datac => \Inst_top_level|count_60ns|Equal0~0_combout\,
	datad => \Inst_top_level|count_60ns|Equal0~1_combout\,
	combout => \Inst_top_level|count_reset~0_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X18_Y13_N14
\Inst_top_level|power_on_reset|Cont[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[1]~19_combout\ = (\Inst_top_level|power_on_reset|Cont\(0) & (\Inst_top_level|power_on_reset|Cont\(1) $ (VCC))) # (!\Inst_top_level|power_on_reset|Cont\(0) & (\Inst_top_level|power_on_reset|Cont\(1) & VCC))
-- \Inst_top_level|power_on_reset|Cont[1]~20\ = CARRY((\Inst_top_level|power_on_reset|Cont\(0) & \Inst_top_level|power_on_reset|Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|power_on_reset|Cont\(0),
	datab => \Inst_top_level|power_on_reset|Cont\(1),
	datad => VCC,
	combout => \Inst_top_level|power_on_reset|Cont[1]~19_combout\,
	cout => \Inst_top_level|power_on_reset|Cont[1]~20\);

-- Location: FF_X18_Y13_N15
\Inst_top_level|power_on_reset|Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[1]~19_combout\,
	ena => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(1));

-- Location: LCCOMB_X18_Y13_N16
\Inst_top_level|power_on_reset|Cont[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[2]~21_combout\ = (\Inst_top_level|power_on_reset|Cont\(2) & (!\Inst_top_level|power_on_reset|Cont[1]~20\)) # (!\Inst_top_level|power_on_reset|Cont\(2) & ((\Inst_top_level|power_on_reset|Cont[1]~20\) # (GND)))
-- \Inst_top_level|power_on_reset|Cont[2]~22\ = CARRY((!\Inst_top_level|power_on_reset|Cont[1]~20\) # (!\Inst_top_level|power_on_reset|Cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|power_on_reset|Cont\(2),
	datad => VCC,
	cin => \Inst_top_level|power_on_reset|Cont[1]~20\,
	combout => \Inst_top_level|power_on_reset|Cont[2]~21_combout\,
	cout => \Inst_top_level|power_on_reset|Cont[2]~22\);

-- Location: FF_X18_Y13_N17
\Inst_top_level|power_on_reset|Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[2]~21_combout\,
	ena => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(2));

-- Location: LCCOMB_X18_Y13_N18
\Inst_top_level|power_on_reset|Cont[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[3]~23_combout\ = (\Inst_top_level|power_on_reset|Cont\(3) & (\Inst_top_level|power_on_reset|Cont[2]~22\ $ (GND))) # (!\Inst_top_level|power_on_reset|Cont\(3) & (!\Inst_top_level|power_on_reset|Cont[2]~22\ & VCC))
-- \Inst_top_level|power_on_reset|Cont[3]~24\ = CARRY((\Inst_top_level|power_on_reset|Cont\(3) & !\Inst_top_level|power_on_reset|Cont[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|power_on_reset|Cont\(3),
	datad => VCC,
	cin => \Inst_top_level|power_on_reset|Cont[2]~22\,
	combout => \Inst_top_level|power_on_reset|Cont[3]~23_combout\,
	cout => \Inst_top_level|power_on_reset|Cont[3]~24\);

-- Location: FF_X18_Y13_N19
\Inst_top_level|power_on_reset|Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[3]~23_combout\,
	ena => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(3));

-- Location: LCCOMB_X18_Y13_N20
\Inst_top_level|power_on_reset|Cont[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[4]~25_combout\ = (\Inst_top_level|power_on_reset|Cont\(4) & (!\Inst_top_level|power_on_reset|Cont[3]~24\)) # (!\Inst_top_level|power_on_reset|Cont\(4) & ((\Inst_top_level|power_on_reset|Cont[3]~24\) # (GND)))
-- \Inst_top_level|power_on_reset|Cont[4]~26\ = CARRY((!\Inst_top_level|power_on_reset|Cont[3]~24\) # (!\Inst_top_level|power_on_reset|Cont\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|power_on_reset|Cont\(4),
	datad => VCC,
	cin => \Inst_top_level|power_on_reset|Cont[3]~24\,
	combout => \Inst_top_level|power_on_reset|Cont[4]~25_combout\,
	cout => \Inst_top_level|power_on_reset|Cont[4]~26\);

-- Location: FF_X18_Y13_N21
\Inst_top_level|power_on_reset|Cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[4]~25_combout\,
	ena => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(4));

-- Location: LCCOMB_X18_Y13_N24
\Inst_top_level|power_on_reset|Cont[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[6]~29_combout\ = (\Inst_top_level|power_on_reset|Cont\(6) & (!\Inst_top_level|power_on_reset|Cont[5]~28\)) # (!\Inst_top_level|power_on_reset|Cont\(6) & ((\Inst_top_level|power_on_reset|Cont[5]~28\) # (GND)))
-- \Inst_top_level|power_on_reset|Cont[6]~30\ = CARRY((!\Inst_top_level|power_on_reset|Cont[5]~28\) # (!\Inst_top_level|power_on_reset|Cont\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|power_on_reset|Cont\(6),
	datad => VCC,
	cin => \Inst_top_level|power_on_reset|Cont[5]~28\,
	combout => \Inst_top_level|power_on_reset|Cont[6]~29_combout\,
	cout => \Inst_top_level|power_on_reset|Cont[6]~30\);

-- Location: FF_X18_Y13_N25
\Inst_top_level|power_on_reset|Cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[6]~29_combout\,
	ena => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(6));

-- Location: LCCOMB_X18_Y13_N26
\Inst_top_level|power_on_reset|Cont[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[7]~31_combout\ = (\Inst_top_level|power_on_reset|Cont\(7) & (\Inst_top_level|power_on_reset|Cont[6]~30\ $ (GND))) # (!\Inst_top_level|power_on_reset|Cont\(7) & (!\Inst_top_level|power_on_reset|Cont[6]~30\ & VCC))
-- \Inst_top_level|power_on_reset|Cont[7]~32\ = CARRY((\Inst_top_level|power_on_reset|Cont\(7) & !\Inst_top_level|power_on_reset|Cont[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|power_on_reset|Cont\(7),
	datad => VCC,
	cin => \Inst_top_level|power_on_reset|Cont[6]~30\,
	combout => \Inst_top_level|power_on_reset|Cont[7]~31_combout\,
	cout => \Inst_top_level|power_on_reset|Cont[7]~32\);

-- Location: LCCOMB_X18_Y13_N28
\Inst_top_level|power_on_reset|Cont[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[8]~33_combout\ = (\Inst_top_level|power_on_reset|Cont\(8) & (!\Inst_top_level|power_on_reset|Cont[7]~32\)) # (!\Inst_top_level|power_on_reset|Cont\(8) & ((\Inst_top_level|power_on_reset|Cont[7]~32\) # (GND)))
-- \Inst_top_level|power_on_reset|Cont[8]~34\ = CARRY((!\Inst_top_level|power_on_reset|Cont[7]~32\) # (!\Inst_top_level|power_on_reset|Cont\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|power_on_reset|Cont\(8),
	datad => VCC,
	cin => \Inst_top_level|power_on_reset|Cont[7]~32\,
	combout => \Inst_top_level|power_on_reset|Cont[8]~33_combout\,
	cout => \Inst_top_level|power_on_reset|Cont[8]~34\);

-- Location: FF_X18_Y13_N29
\Inst_top_level|power_on_reset|Cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[8]~33_combout\,
	ena => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(8));

-- Location: LCCOMB_X18_Y12_N0
\Inst_top_level|power_on_reset|Cont[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[10]~37_combout\ = (\Inst_top_level|power_on_reset|Cont\(10) & (!\Inst_top_level|power_on_reset|Cont[9]~36\)) # (!\Inst_top_level|power_on_reset|Cont\(10) & ((\Inst_top_level|power_on_reset|Cont[9]~36\) # (GND)))
-- \Inst_top_level|power_on_reset|Cont[10]~38\ = CARRY((!\Inst_top_level|power_on_reset|Cont[9]~36\) # (!\Inst_top_level|power_on_reset|Cont\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|power_on_reset|Cont\(10),
	datad => VCC,
	cin => \Inst_top_level|power_on_reset|Cont[9]~36\,
	combout => \Inst_top_level|power_on_reset|Cont[10]~37_combout\,
	cout => \Inst_top_level|power_on_reset|Cont[10]~38\);

-- Location: FF_X18_Y12_N1
\Inst_top_level|power_on_reset|Cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[10]~37_combout\,
	ena => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(10));

-- Location: LCCOMB_X18_Y12_N2
\Inst_top_level|power_on_reset|Cont[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[11]~39_combout\ = (\Inst_top_level|power_on_reset|Cont\(11) & (\Inst_top_level|power_on_reset|Cont[10]~38\ $ (GND))) # (!\Inst_top_level|power_on_reset|Cont\(11) & (!\Inst_top_level|power_on_reset|Cont[10]~38\ & VCC))
-- \Inst_top_level|power_on_reset|Cont[11]~40\ = CARRY((\Inst_top_level|power_on_reset|Cont\(11) & !\Inst_top_level|power_on_reset|Cont[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|power_on_reset|Cont\(11),
	datad => VCC,
	cin => \Inst_top_level|power_on_reset|Cont[10]~38\,
	combout => \Inst_top_level|power_on_reset|Cont[11]~39_combout\,
	cout => \Inst_top_level|power_on_reset|Cont[11]~40\);

-- Location: FF_X18_Y12_N3
\Inst_top_level|power_on_reset|Cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[11]~39_combout\,
	ena => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(11));

-- Location: LCCOMB_X18_Y12_N4
\Inst_top_level|power_on_reset|Cont[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[12]~41_combout\ = (\Inst_top_level|power_on_reset|Cont\(12) & (!\Inst_top_level|power_on_reset|Cont[11]~40\)) # (!\Inst_top_level|power_on_reset|Cont\(12) & ((\Inst_top_level|power_on_reset|Cont[11]~40\) # (GND)))
-- \Inst_top_level|power_on_reset|Cont[12]~42\ = CARRY((!\Inst_top_level|power_on_reset|Cont[11]~40\) # (!\Inst_top_level|power_on_reset|Cont\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|power_on_reset|Cont\(12),
	datad => VCC,
	cin => \Inst_top_level|power_on_reset|Cont[11]~40\,
	combout => \Inst_top_level|power_on_reset|Cont[12]~41_combout\,
	cout => \Inst_top_level|power_on_reset|Cont[12]~42\);

-- Location: FF_X18_Y12_N5
\Inst_top_level|power_on_reset|Cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[12]~41_combout\,
	ena => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(12));

-- Location: LCCOMB_X18_Y12_N6
\Inst_top_level|power_on_reset|Cont[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[13]~43_combout\ = (\Inst_top_level|power_on_reset|Cont\(13) & (\Inst_top_level|power_on_reset|Cont[12]~42\ $ (GND))) # (!\Inst_top_level|power_on_reset|Cont\(13) & (!\Inst_top_level|power_on_reset|Cont[12]~42\ & VCC))
-- \Inst_top_level|power_on_reset|Cont[13]~44\ = CARRY((\Inst_top_level|power_on_reset|Cont\(13) & !\Inst_top_level|power_on_reset|Cont[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|power_on_reset|Cont\(13),
	datad => VCC,
	cin => \Inst_top_level|power_on_reset|Cont[12]~42\,
	combout => \Inst_top_level|power_on_reset|Cont[13]~43_combout\,
	cout => \Inst_top_level|power_on_reset|Cont[13]~44\);

-- Location: LCCOMB_X18_Y12_N8
\Inst_top_level|power_on_reset|Cont[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[14]~45_combout\ = (\Inst_top_level|power_on_reset|Cont\(14) & (!\Inst_top_level|power_on_reset|Cont[13]~44\)) # (!\Inst_top_level|power_on_reset|Cont\(14) & ((\Inst_top_level|power_on_reset|Cont[13]~44\) # (GND)))
-- \Inst_top_level|power_on_reset|Cont[14]~46\ = CARRY((!\Inst_top_level|power_on_reset|Cont[13]~44\) # (!\Inst_top_level|power_on_reset|Cont\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|power_on_reset|Cont\(14),
	datad => VCC,
	cin => \Inst_top_level|power_on_reset|Cont[13]~44\,
	combout => \Inst_top_level|power_on_reset|Cont[14]~45_combout\,
	cout => \Inst_top_level|power_on_reset|Cont[14]~46\);

-- Location: FF_X18_Y12_N9
\Inst_top_level|power_on_reset|Cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[14]~45_combout\,
	ena => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(14));

-- Location: LCCOMB_X18_Y12_N14
\Inst_top_level|power_on_reset|Cont[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[17]~51_combout\ = (\Inst_top_level|power_on_reset|Cont\(17) & (\Inst_top_level|power_on_reset|Cont[16]~50\ $ (GND))) # (!\Inst_top_level|power_on_reset|Cont\(17) & (!\Inst_top_level|power_on_reset|Cont[16]~50\ & VCC))
-- \Inst_top_level|power_on_reset|Cont[17]~52\ = CARRY((\Inst_top_level|power_on_reset|Cont\(17) & !\Inst_top_level|power_on_reset|Cont[16]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|power_on_reset|Cont\(17),
	datad => VCC,
	cin => \Inst_top_level|power_on_reset|Cont[16]~50\,
	combout => \Inst_top_level|power_on_reset|Cont[17]~51_combout\,
	cout => \Inst_top_level|power_on_reset|Cont[17]~52\);

-- Location: FF_X18_Y12_N15
\Inst_top_level|power_on_reset|Cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[17]~51_combout\,
	ena => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(17));

-- Location: LCCOMB_X18_Y12_N16
\Inst_top_level|power_on_reset|Cont[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[18]~53_combout\ = (\Inst_top_level|power_on_reset|Cont\(18) & (!\Inst_top_level|power_on_reset|Cont[17]~52\)) # (!\Inst_top_level|power_on_reset|Cont\(18) & ((\Inst_top_level|power_on_reset|Cont[17]~52\) # (GND)))
-- \Inst_top_level|power_on_reset|Cont[18]~54\ = CARRY((!\Inst_top_level|power_on_reset|Cont[17]~52\) # (!\Inst_top_level|power_on_reset|Cont\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|power_on_reset|Cont\(18),
	datad => VCC,
	cin => \Inst_top_level|power_on_reset|Cont[17]~52\,
	combout => \Inst_top_level|power_on_reset|Cont[18]~53_combout\,
	cout => \Inst_top_level|power_on_reset|Cont[18]~54\);

-- Location: FF_X18_Y12_N17
\Inst_top_level|power_on_reset|Cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[18]~53_combout\,
	ena => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(18));

-- Location: LCCOMB_X18_Y12_N18
\Inst_top_level|power_on_reset|Cont[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Cont[19]~55_combout\ = \Inst_top_level|power_on_reset|Cont[18]~54\ $ (!\Inst_top_level|power_on_reset|Cont\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|power_on_reset|Cont\(19),
	cin => \Inst_top_level|power_on_reset|Cont[18]~54\,
	combout => \Inst_top_level|power_on_reset|Cont[19]~55_combout\);

-- Location: FF_X18_Y12_N19
\Inst_top_level|power_on_reset|Cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[19]~55_combout\,
	ena => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(19));

-- Location: LCCOMB_X18_Y12_N20
\Inst_top_level|power_on_reset|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Equal0~0_combout\ = (\Inst_top_level|power_on_reset|Cont\(16) & (\Inst_top_level|power_on_reset|Cont\(18) & (\Inst_top_level|power_on_reset|Cont\(17) & \Inst_top_level|power_on_reset|Cont\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|power_on_reset|Cont\(16),
	datab => \Inst_top_level|power_on_reset|Cont\(18),
	datac => \Inst_top_level|power_on_reset|Cont\(17),
	datad => \Inst_top_level|power_on_reset|Cont\(19),
	combout => \Inst_top_level|power_on_reset|Equal0~0_combout\);

-- Location: FF_X18_Y13_N27
\Inst_top_level|power_on_reset|Cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[7]~31_combout\,
	ena => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(7));

-- Location: LCCOMB_X18_Y13_N4
\Inst_top_level|power_on_reset|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Equal0~2_combout\ = (\Inst_top_level|power_on_reset|Cont\(5) & (\Inst_top_level|power_on_reset|Cont\(4) & (\Inst_top_level|power_on_reset|Cont\(7) & \Inst_top_level|power_on_reset|Cont\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|power_on_reset|Cont\(5),
	datab => \Inst_top_level|power_on_reset|Cont\(4),
	datac => \Inst_top_level|power_on_reset|Cont\(7),
	datad => \Inst_top_level|power_on_reset|Cont\(6),
	combout => \Inst_top_level|power_on_reset|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y13_N2
\Inst_top_level|power_on_reset|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Equal0~1_combout\ = (\Inst_top_level|power_on_reset|Cont\(0) & (\Inst_top_level|power_on_reset|Cont\(3) & (\Inst_top_level|power_on_reset|Cont\(1) & \Inst_top_level|power_on_reset|Cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|power_on_reset|Cont\(0),
	datab => \Inst_top_level|power_on_reset|Cont\(3),
	datac => \Inst_top_level|power_on_reset|Cont\(1),
	datad => \Inst_top_level|power_on_reset|Cont\(2),
	combout => \Inst_top_level|power_on_reset|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y13_N10
\Inst_top_level|power_on_reset|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Equal0~3_combout\ = (\Inst_top_level|power_on_reset|Equal0~2_combout\ & \Inst_top_level|power_on_reset|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|power_on_reset|Equal0~2_combout\,
	datad => \Inst_top_level|power_on_reset|Equal0~1_combout\,
	combout => \Inst_top_level|power_on_reset|Equal0~3_combout\);

-- Location: FF_X18_Y12_N7
\Inst_top_level|power_on_reset|Cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Cont[13]~43_combout\,
	ena => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|Cont\(13));

-- Location: LCCOMB_X18_Y12_N24
\Inst_top_level|power_on_reset|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Equal0~5_combout\ = (\Inst_top_level|power_on_reset|Cont\(15) & (\Inst_top_level|power_on_reset|Cont\(14) & (\Inst_top_level|power_on_reset|Cont\(12) & \Inst_top_level|power_on_reset|Cont\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|power_on_reset|Cont\(15),
	datab => \Inst_top_level|power_on_reset|Cont\(14),
	datac => \Inst_top_level|power_on_reset|Cont\(12),
	datad => \Inst_top_level|power_on_reset|Cont\(13),
	combout => \Inst_top_level|power_on_reset|Equal0~5_combout\);

-- Location: LCCOMB_X18_Y12_N26
\Inst_top_level|power_on_reset|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Equal0~6_combout\ = (((!\Inst_top_level|power_on_reset|Equal0~5_combout\) # (!\Inst_top_level|power_on_reset|Equal0~3_combout\)) # (!\Inst_top_level|power_on_reset|Equal0~0_combout\)) # 
-- (!\Inst_top_level|power_on_reset|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|power_on_reset|Equal0~4_combout\,
	datab => \Inst_top_level|power_on_reset|Equal0~0_combout\,
	datac => \Inst_top_level|power_on_reset|Equal0~3_combout\,
	datad => \Inst_top_level|power_on_reset|Equal0~5_combout\,
	combout => \Inst_top_level|power_on_reset|Equal0~6_combout\);

-- Location: LCCOMB_X18_Y13_N12
\Inst_top_level|power_on_reset|Equal0~6_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|power_on_reset|Equal0~6_wirecell_combout\ = !\Inst_top_level|power_on_reset|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|power_on_reset|Equal0~6_combout\,
	combout => \Inst_top_level|power_on_reset|Equal0~6_wirecell_combout\);

-- Location: FF_X18_Y13_N13
\Inst_top_level|power_on_reset|oRESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|power_on_reset|Equal0~6_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|power_on_reset|oRESET~q\);

-- Location: LCCOMB_X18_Y13_N6
\Inst_top_level|sys_reset_n\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|sys_reset_n~combout\ = (!\Inst_top_level|power_on_reset|oRESET~q\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \Inst_top_level|power_on_reset|oRESET~q\,
	combout => \Inst_top_level|sys_reset_n~combout\);

-- Location: FF_X14_Y13_N15
\Inst_top_level|count_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|count_reset~0_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	ena => \Inst_top_level|ALT_INV_fstate.INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count_reset~q\);

-- Location: FF_X16_Y13_N1
\Inst_top_level|count_60ns|r_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count_60ns|r_reg[0]~8_combout\,
	clrn => \Inst_top_level|count_reset~q\,
	ena => \Inst_top_level|count_60ns|r_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count_60ns|r_reg\(0));

-- Location: LCCOMB_X16_Y13_N2
\Inst_top_level|count_60ns|r_reg[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_60ns|r_reg[1]~11_combout\ = (\Inst_top_level|count_60ns|r_reg\(1) & (!\Inst_top_level|count_60ns|r_reg[0]~9\)) # (!\Inst_top_level|count_60ns|r_reg\(1) & ((\Inst_top_level|count_60ns|r_reg[0]~9\) # (GND)))
-- \Inst_top_level|count_60ns|r_reg[1]~12\ = CARRY((!\Inst_top_level|count_60ns|r_reg[0]~9\) # (!\Inst_top_level|count_60ns|r_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count_60ns|r_reg\(1),
	datad => VCC,
	cin => \Inst_top_level|count_60ns|r_reg[0]~9\,
	combout => \Inst_top_level|count_60ns|r_reg[1]~11_combout\,
	cout => \Inst_top_level|count_60ns|r_reg[1]~12\);

-- Location: FF_X16_Y13_N3
\Inst_top_level|count_60ns|r_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count_60ns|r_reg[1]~11_combout\,
	clrn => \Inst_top_level|count_reset~q\,
	ena => \Inst_top_level|count_60ns|r_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count_60ns|r_reg\(1));

-- Location: FF_X16_Y13_N5
\Inst_top_level|count_60ns|r_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count_60ns|r_reg[2]~13_combout\,
	clrn => \Inst_top_level|count_reset~q\,
	ena => \Inst_top_level|count_60ns|r_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count_60ns|r_reg\(2));

-- Location: FF_X16_Y13_N7
\Inst_top_level|count_60ns|r_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count_60ns|r_reg[3]~15_combout\,
	clrn => \Inst_top_level|count_reset~q\,
	ena => \Inst_top_level|count_60ns|r_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count_60ns|r_reg\(3));

-- Location: LCCOMB_X12_Y13_N12
\Inst_top_level|count_60ns|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count_60ns|Equal0~0_combout\ = (((!\Inst_top_level|count_60ns|r_reg\(3)) # (!\Inst_top_level|count_60ns|r_reg\(1))) # (!\Inst_top_level|count_60ns|r_reg\(2))) # (!\Inst_top_level|count_60ns|r_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_60ns|r_reg\(0),
	datab => \Inst_top_level|count_60ns|r_reg\(2),
	datac => \Inst_top_level|count_60ns|r_reg\(1),
	datad => \Inst_top_level|count_60ns|r_reg\(3),
	combout => \Inst_top_level|count_60ns|Equal0~0_combout\);

-- Location: LCCOMB_X11_Y13_N28
\Inst_top_level|ROM_done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|ROM_done~0_combout\ = (\Inst_top_level|ROM_done~q\) # ((!\Inst_top_level|fstate.INIT~q\ & (!\Inst_top_level|count_60ns|Equal0~0_combout\ & !\Inst_top_level|count_60ns|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|fstate.INIT~q\,
	datab => \Inst_top_level|ROM_done~q\,
	datac => \Inst_top_level|count_60ns|Equal0~0_combout\,
	datad => \Inst_top_level|count_60ns|Equal0~1_combout\,
	combout => \Inst_top_level|ROM_done~0_combout\);

-- Location: FF_X14_Y13_N5
\Inst_top_level|ROM_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|ROM_done~0_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|ROM_done~q\);

-- Location: LCCOMB_X14_Y13_N28
\Inst_top_level|fstate.INIT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|fstate.INIT~0_combout\ = (\Inst_top_level|ROM_done~q\) # (\Inst_top_level|fstate.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|ROM_done~q\,
	datac => \Inst_top_level|fstate.INIT~q\,
	combout => \Inst_top_level|fstate.INIT~0_combout\);

-- Location: FF_X14_Y13_N29
\Inst_top_level|fstate.INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|fstate.INIT~0_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|fstate.INIT~q\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: FF_X16_Y13_N13
\Inst_top_level|count_60ns|r_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count_60ns|r_reg[6]~21_combout\,
	clrn => \Inst_top_level|count_reset~q\,
	ena => \Inst_top_level|count_60ns|r_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count_60ns|r_reg\(6));

-- Location: M9K_X15_Y13_N0
\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0F9B43CDC0ED2839BA0E0A8369B0D43833830C7E830730BBB82D6B0AFB02A700A3DC27820984024A208CE421D4081D01F18077081C7106C9419E006280176605",
	mem_init1 => X"8C8150504F7812BE04694109403E240E860362C0C9802EB00AC9027B4091A02140078E01B540625015F404DF0112403BD00CE802C10094401EB00638013A003C400B1001EC004E000B00013000100000000100013000B0004E001EC00B1003C4013A0063801EB0094402C100CE803BD0112404DF015F4062501B54078E02140091A027B40AC902EB00C980362C0E8603E2410940469412BE04F781505058C817660628019E006C941C71077081F18081D021D408CE424A20984027820A3DC2A700AFB02D6B0BBB830730C7E833830D438369B0E0A839BA0ED283CDC0F9B44000106484323112D4464511F54496412BC44C7C138144F8C1444452941504C558F1",
	mem_init0 => X"5C20587D167BC5B5D173185E2B17E2C60E7188F4638E19368661F19D7C68991A7346AFA1B0846D411B9686F6B1C1D871791C9D073671D14C75361D84876E51DEBC78711E4A879DA1EA087B201EED87C421F3147D3E1F6B87E141F9C47EC51FC387F4E1FE107FB11FF4C7FEC1FFEC7FFF1FFEC7FEC1FF4C7FB11FE107F4E1FC387EC51F9C47E141F6B87D3E1F3147C421EED87B201EA0879DA1E4A878711DEBC76E51D84875361D14C73671C9D071791C1D86F6B1B9686D411B0846AFA1A734689919D7C661F19368638E188F460E717E2C5E2B173185B5D167BC587D15C20558F1504C5294144444F8C138144C7C12BC4496411F544645112D44323106484000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sine.mif",
	init_file_layout => "port_a",
	logical_ram_name => "top_level:Inst_top_level|ROM1PORT:ROM_1port_0|altsyncram:altsyncram_component|altsyncram_jp91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	portaaddr => \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X14_Y6_N12
\Inst_top_level|SRAM_data_i[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_data_i[0]~0_combout\ = (!\Inst_top_level|fstate.INIT~q\ & \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|fstate.INIT~q\,
	datad => \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(0),
	combout => \Inst_top_level|SRAM_data_i[0]~0_combout\);

-- Location: FF_X14_Y13_N25
\Inst_top_level|SRAM_RW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|ROM_done~q\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	ena => \Inst_top_level|ALT_INV_fstate.INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM_RW~q\);

-- Location: LCCOMB_X9_Y13_N30
\Inst_top_level|SRAM|tri_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM|tri_n~0_combout\ = (\Inst_top_level|SRAM|fstate.ready~q\ & (((\Inst_top_level|SRAM|tri_n~q\)))) # (!\Inst_top_level|SRAM|fstate.ready~q\ & ((\Inst_top_level|en_60ns|clk_en~q\ & (\Inst_top_level|SRAM_RW~q\)) # 
-- (!\Inst_top_level|en_60ns|clk_en~q\ & ((\Inst_top_level|SRAM|tri_n~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|fstate.ready~q\,
	datab => \Inst_top_level|SRAM_RW~q\,
	datac => \Inst_top_level|SRAM|tri_n~q\,
	datad => \Inst_top_level|en_60ns|clk_en~q\,
	combout => \Inst_top_level|SRAM|tri_n~0_combout\);

-- Location: FF_X9_Y13_N31
\Inst_top_level|SRAM|tri_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|SRAM|tri_n~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|tri_n~q\);

-- Location: LCCOMB_X11_Y10_N4
\Inst_top_level|SRAM_data_i[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_data_i[1]~1_combout\ = (\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(1) & !\Inst_top_level|fstate.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(1),
	datad => \Inst_top_level|fstate.INIT~q\,
	combout => \Inst_top_level|SRAM_data_i[1]~1_combout\);

-- Location: LCCOMB_X14_Y6_N30
\Inst_top_level|SRAM_data_i[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_data_i[2]~2_combout\ = (!\Inst_top_level|fstate.INIT~q\ & \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|fstate.INIT~q\,
	datac => \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(2),
	combout => \Inst_top_level|SRAM_data_i[2]~2_combout\);

-- Location: LCCOMB_X11_Y10_N22
\Inst_top_level|SRAM_data_i[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_data_i[3]~3_combout\ = (\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(3) & !\Inst_top_level|fstate.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(3),
	datad => \Inst_top_level|fstate.INIT~q\,
	combout => \Inst_top_level|SRAM_data_i[3]~3_combout\);

-- Location: LCCOMB_X11_Y10_N24
\Inst_top_level|SRAM_data_i[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_data_i[4]~4_combout\ = (!\Inst_top_level|fstate.INIT~q\ & \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|fstate.INIT~q\,
	datad => \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(4),
	combout => \Inst_top_level|SRAM_data_i[4]~4_combout\);

-- Location: LCCOMB_X11_Y10_N26
\Inst_top_level|SRAM_data_i[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_data_i[5]~5_combout\ = (!\Inst_top_level|fstate.INIT~q\ & \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|fstate.INIT~q\,
	datad => \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(5),
	combout => \Inst_top_level|SRAM_data_i[5]~5_combout\);

-- Location: LCCOMB_X11_Y10_N8
\Inst_top_level|SRAM_data_i[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_data_i[6]~6_combout\ = (!\Inst_top_level|fstate.INIT~q\ & \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|fstate.INIT~q\,
	datad => \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(6),
	combout => \Inst_top_level|SRAM_data_i[6]~6_combout\);

-- Location: LCCOMB_X14_Y6_N8
\Inst_top_level|SRAM_data_i[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_data_i[7]~7_combout\ = (!\Inst_top_level|fstate.INIT~q\ & \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|fstate.INIT~q\,
	datad => \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(7),
	combout => \Inst_top_level|SRAM_data_i[7]~7_combout\);

-- Location: LCCOMB_X14_Y13_N14
\Inst_top_level|SRAM_data_i[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_data_i[8]~8_combout\ = (!\Inst_top_level|fstate.INIT~q\ & \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|fstate.INIT~q\,
	datad => \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(8),
	combout => \Inst_top_level|SRAM_data_i[8]~8_combout\);

-- Location: LCCOMB_X11_Y13_N8
\Inst_top_level|SRAM_data_i[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_data_i[9]~9_combout\ = (!\Inst_top_level|fstate.INIT~q\ & \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|fstate.INIT~q\,
	datab => \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(9),
	combout => \Inst_top_level|SRAM_data_i[9]~9_combout\);

-- Location: LCCOMB_X11_Y13_N10
\Inst_top_level|SRAM_data_i[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_data_i[10]~10_combout\ = (!\Inst_top_level|fstate.INIT~q\ & \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|fstate.INIT~q\,
	datad => \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(10),
	combout => \Inst_top_level|SRAM_data_i[10]~10_combout\);

-- Location: LCCOMB_X11_Y13_N12
\Inst_top_level|SRAM_data_i[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_data_i[11]~11_combout\ = (!\Inst_top_level|fstate.INIT~q\ & \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|fstate.INIT~q\,
	datac => \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(11),
	combout => \Inst_top_level|SRAM_data_i[11]~11_combout\);

-- Location: LCCOMB_X11_Y10_N2
\Inst_top_level|SRAM_data_i[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_data_i[12]~12_combout\ = (\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(12) & !\Inst_top_level|fstate.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(12),
	datad => \Inst_top_level|fstate.INIT~q\,
	combout => \Inst_top_level|SRAM_data_i[12]~12_combout\);

-- Location: LCCOMB_X11_Y10_N0
\Inst_top_level|SRAM_data_i[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_data_i[13]~13_combout\ = (!\Inst_top_level|fstate.INIT~q\ & \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|fstate.INIT~q\,
	datad => \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(13),
	combout => \Inst_top_level|SRAM_data_i[13]~13_combout\);

-- Location: LCCOMB_X14_Y6_N2
\Inst_top_level|SRAM_data_i[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_data_i[14]~14_combout\ = (!\Inst_top_level|fstate.INIT~q\ & \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|fstate.INIT~q\,
	datad => \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(14),
	combout => \Inst_top_level|SRAM_data_i[14]~14_combout\);

-- Location: LCCOMB_X11_Y10_N6
\Inst_top_level|SRAM_data_i[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_data_i[15]~15_combout\ = (\Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(15) & !\Inst_top_level|fstate.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|ROM_1port_0|altsyncram_component|auto_generated|q_a\(15),
	datad => \Inst_top_level|fstate.INIT~q\,
	combout => \Inst_top_level|SRAM_data_i[15]~15_combout\);

-- Location: LCCOMB_X1_Y36_N18
\Inst_top_level|lcd_entity|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Add0~2_combout\ = (\Inst_top_level|lcd_entity|clk_cnt\(1) & (!\Inst_top_level|lcd_entity|Add0~1\)) # (!\Inst_top_level|lcd_entity|clk_cnt\(1) & ((\Inst_top_level|lcd_entity|Add0~1\) # (GND)))
-- \Inst_top_level|lcd_entity|Add0~3\ = CARRY((!\Inst_top_level|lcd_entity|Add0~1\) # (!\Inst_top_level|lcd_entity|clk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|lcd_entity|clk_cnt\(1),
	datad => VCC,
	cin => \Inst_top_level|lcd_entity|Add0~1\,
	combout => \Inst_top_level|lcd_entity|Add0~2_combout\,
	cout => \Inst_top_level|lcd_entity|Add0~3\);

-- Location: LCCOMB_X1_Y36_N2
\Inst_top_level|lcd_entity|clk_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|clk_cnt~9_combout\ = (\Inst_top_level|lcd_entity|Add0~2_combout\ & !\Inst_top_level|lcd_entity|Equal39~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|lcd_entity|Add0~2_combout\,
	datac => \Inst_top_level|lcd_entity|Equal39~5_combout\,
	combout => \Inst_top_level|lcd_entity|clk_cnt~9_combout\);

-- Location: FF_X1_Y36_N3
\Inst_top_level|lcd_entity|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|clk_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|clk_cnt\(1));

-- Location: LCCOMB_X1_Y36_N20
\Inst_top_level|lcd_entity|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Add0~4_combout\ = (\Inst_top_level|lcd_entity|clk_cnt\(2) & (\Inst_top_level|lcd_entity|Add0~3\ $ (GND))) # (!\Inst_top_level|lcd_entity|clk_cnt\(2) & (!\Inst_top_level|lcd_entity|Add0~3\ & VCC))
-- \Inst_top_level|lcd_entity|Add0~5\ = CARRY((\Inst_top_level|lcd_entity|clk_cnt\(2) & !\Inst_top_level|lcd_entity|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|lcd_entity|clk_cnt\(2),
	datad => VCC,
	cin => \Inst_top_level|lcd_entity|Add0~3\,
	combout => \Inst_top_level|lcd_entity|Add0~4_combout\,
	cout => \Inst_top_level|lcd_entity|Add0~5\);

-- Location: LCCOMB_X1_Y36_N4
\Inst_top_level|lcd_entity|clk_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|clk_cnt~8_combout\ = (\Inst_top_level|lcd_entity|Add0~4_combout\ & !\Inst_top_level|lcd_entity|Equal39~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|lcd_entity|Add0~4_combout\,
	datac => \Inst_top_level|lcd_entity|Equal39~5_combout\,
	combout => \Inst_top_level|lcd_entity|clk_cnt~8_combout\);

-- Location: FF_X1_Y36_N5
\Inst_top_level|lcd_entity|clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|clk_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|clk_cnt\(2));

-- Location: LCCOMB_X1_Y36_N22
\Inst_top_level|lcd_entity|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Add0~6_combout\ = (\Inst_top_level|lcd_entity|clk_cnt\(3) & (!\Inst_top_level|lcd_entity|Add0~5\)) # (!\Inst_top_level|lcd_entity|clk_cnt\(3) & ((\Inst_top_level|lcd_entity|Add0~5\) # (GND)))
-- \Inst_top_level|lcd_entity|Add0~7\ = CARRY((!\Inst_top_level|lcd_entity|Add0~5\) # (!\Inst_top_level|lcd_entity|clk_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|clk_cnt\(3),
	datad => VCC,
	cin => \Inst_top_level|lcd_entity|Add0~5\,
	combout => \Inst_top_level|lcd_entity|Add0~6_combout\,
	cout => \Inst_top_level|lcd_entity|Add0~7\);

-- Location: LCCOMB_X1_Y36_N24
\Inst_top_level|lcd_entity|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Add0~8_combout\ = (\Inst_top_level|lcd_entity|clk_cnt\(4) & (\Inst_top_level|lcd_entity|Add0~7\ $ (GND))) # (!\Inst_top_level|lcd_entity|clk_cnt\(4) & (!\Inst_top_level|lcd_entity|Add0~7\ & VCC))
-- \Inst_top_level|lcd_entity|Add0~9\ = CARRY((\Inst_top_level|lcd_entity|clk_cnt\(4) & !\Inst_top_level|lcd_entity|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|lcd_entity|clk_cnt\(4),
	datad => VCC,
	cin => \Inst_top_level|lcd_entity|Add0~7\,
	combout => \Inst_top_level|lcd_entity|Add0~8_combout\,
	cout => \Inst_top_level|lcd_entity|Add0~9\);

-- Location: FF_X1_Y36_N25
\Inst_top_level|lcd_entity|clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|clk_cnt\(4));

-- Location: LCCOMB_X1_Y36_N26
\Inst_top_level|lcd_entity|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Add0~10_combout\ = (\Inst_top_level|lcd_entity|clk_cnt\(5) & (!\Inst_top_level|lcd_entity|Add0~9\)) # (!\Inst_top_level|lcd_entity|clk_cnt\(5) & ((\Inst_top_level|lcd_entity|Add0~9\) # (GND)))
-- \Inst_top_level|lcd_entity|Add0~11\ = CARRY((!\Inst_top_level|lcd_entity|Add0~9\) # (!\Inst_top_level|lcd_entity|clk_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|lcd_entity|clk_cnt\(5),
	datad => VCC,
	cin => \Inst_top_level|lcd_entity|Add0~9\,
	combout => \Inst_top_level|lcd_entity|Add0~10_combout\,
	cout => \Inst_top_level|lcd_entity|Add0~11\);

-- Location: LCCOMB_X1_Y36_N14
\Inst_top_level|lcd_entity|clk_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|clk_cnt~7_combout\ = (!\Inst_top_level|lcd_entity|Equal39~5_combout\ & \Inst_top_level|lcd_entity|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|lcd_entity|Equal39~5_combout\,
	datad => \Inst_top_level|lcd_entity|Add0~10_combout\,
	combout => \Inst_top_level|lcd_entity|clk_cnt~7_combout\);

-- Location: FF_X1_Y36_N15
\Inst_top_level|lcd_entity|clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|clk_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|clk_cnt\(5));

-- Location: LCCOMB_X1_Y36_N30
\Inst_top_level|lcd_entity|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Add0~14_combout\ = (\Inst_top_level|lcd_entity|clk_cnt\(7) & (!\Inst_top_level|lcd_entity|Add0~13\)) # (!\Inst_top_level|lcd_entity|clk_cnt\(7) & ((\Inst_top_level|lcd_entity|Add0~13\) # (GND)))
-- \Inst_top_level|lcd_entity|Add0~15\ = CARRY((!\Inst_top_level|lcd_entity|Add0~13\) # (!\Inst_top_level|lcd_entity|clk_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|clk_cnt\(7),
	datad => VCC,
	cin => \Inst_top_level|lcd_entity|Add0~13\,
	combout => \Inst_top_level|lcd_entity|Add0~14_combout\,
	cout => \Inst_top_level|lcd_entity|Add0~15\);

-- Location: LCCOMB_X1_Y35_N0
\Inst_top_level|lcd_entity|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Add0~16_combout\ = (\Inst_top_level|lcd_entity|clk_cnt\(8) & (\Inst_top_level|lcd_entity|Add0~15\ $ (GND))) # (!\Inst_top_level|lcd_entity|clk_cnt\(8) & (!\Inst_top_level|lcd_entity|Add0~15\ & VCC))
-- \Inst_top_level|lcd_entity|Add0~17\ = CARRY((\Inst_top_level|lcd_entity|clk_cnt\(8) & !\Inst_top_level|lcd_entity|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|lcd_entity|clk_cnt\(8),
	datad => VCC,
	cin => \Inst_top_level|lcd_entity|Add0~15\,
	combout => \Inst_top_level|lcd_entity|Add0~16_combout\,
	cout => \Inst_top_level|lcd_entity|Add0~17\);

-- Location: FF_X1_Y35_N1
\Inst_top_level|lcd_entity|clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|clk_cnt\(8));

-- Location: LCCOMB_X1_Y36_N6
\Inst_top_level|lcd_entity|clk_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|clk_cnt~5_combout\ = (!\Inst_top_level|lcd_entity|Equal39~5_combout\ & \Inst_top_level|lcd_entity|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|lcd_entity|Equal39~5_combout\,
	datac => \Inst_top_level|lcd_entity|Add0~14_combout\,
	combout => \Inst_top_level|lcd_entity|clk_cnt~5_combout\);

-- Location: FF_X1_Y36_N7
\Inst_top_level|lcd_entity|clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|clk_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|clk_cnt\(7));

-- Location: LCCOMB_X1_Y36_N0
\Inst_top_level|lcd_entity|Equal39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Equal39~3_combout\ = (\Inst_top_level|lcd_entity|clk_cnt\(6) & (!\Inst_top_level|lcd_entity|clk_cnt\(8) & (\Inst_top_level|lcd_entity|clk_cnt\(5) & \Inst_top_level|lcd_entity|clk_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|clk_cnt\(6),
	datab => \Inst_top_level|lcd_entity|clk_cnt\(8),
	datac => \Inst_top_level|lcd_entity|clk_cnt\(5),
	datad => \Inst_top_level|lcd_entity|clk_cnt\(7),
	combout => \Inst_top_level|lcd_entity|Equal39~3_combout\);

-- Location: FF_X1_Y36_N23
\Inst_top_level|lcd_entity|clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|clk_cnt\(3));

-- Location: LCCOMB_X2_Y36_N12
\Inst_top_level|lcd_entity|Equal39~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Equal39~4_combout\ = (\Inst_top_level|lcd_entity|clk_cnt\(1) & (!\Inst_top_level|lcd_entity|clk_cnt\(3) & (\Inst_top_level|lcd_entity|clk_cnt\(2) & !\Inst_top_level|lcd_entity|clk_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|clk_cnt\(1),
	datab => \Inst_top_level|lcd_entity|clk_cnt\(3),
	datac => \Inst_top_level|lcd_entity|clk_cnt\(2),
	datad => \Inst_top_level|lcd_entity|clk_cnt\(4),
	combout => \Inst_top_level|lcd_entity|Equal39~4_combout\);

-- Location: LCCOMB_X1_Y35_N2
\Inst_top_level|lcd_entity|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Add0~18_combout\ = (\Inst_top_level|lcd_entity|clk_cnt\(9) & (!\Inst_top_level|lcd_entity|Add0~17\)) # (!\Inst_top_level|lcd_entity|clk_cnt\(9) & ((\Inst_top_level|lcd_entity|Add0~17\) # (GND)))
-- \Inst_top_level|lcd_entity|Add0~19\ = CARRY((!\Inst_top_level|lcd_entity|Add0~17\) # (!\Inst_top_level|lcd_entity|clk_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|clk_cnt\(9),
	datad => VCC,
	cin => \Inst_top_level|lcd_entity|Add0~17\,
	combout => \Inst_top_level|lcd_entity|Add0~18_combout\,
	cout => \Inst_top_level|lcd_entity|Add0~19\);

-- Location: LCCOMB_X1_Y35_N4
\Inst_top_level|lcd_entity|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Add0~20_combout\ = (\Inst_top_level|lcd_entity|clk_cnt\(10) & (\Inst_top_level|lcd_entity|Add0~19\ $ (GND))) # (!\Inst_top_level|lcd_entity|clk_cnt\(10) & (!\Inst_top_level|lcd_entity|Add0~19\ & VCC))
-- \Inst_top_level|lcd_entity|Add0~21\ = CARRY((\Inst_top_level|lcd_entity|clk_cnt\(10) & !\Inst_top_level|lcd_entity|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|lcd_entity|clk_cnt\(10),
	datad => VCC,
	cin => \Inst_top_level|lcd_entity|Add0~19\,
	combout => \Inst_top_level|lcd_entity|Add0~20_combout\,
	cout => \Inst_top_level|lcd_entity|Add0~21\);

-- Location: LCCOMB_X1_Y35_N24
\Inst_top_level|lcd_entity|clk_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|clk_cnt~3_combout\ = (\Inst_top_level|lcd_entity|Add0~20_combout\ & !\Inst_top_level|lcd_entity|Equal39~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|lcd_entity|Add0~20_combout\,
	datad => \Inst_top_level|lcd_entity|Equal39~5_combout\,
	combout => \Inst_top_level|lcd_entity|clk_cnt~3_combout\);

-- Location: FF_X1_Y35_N25
\Inst_top_level|lcd_entity|clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|clk_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|clk_cnt\(10));

-- Location: LCCOMB_X1_Y35_N8
\Inst_top_level|lcd_entity|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Add0~24_combout\ = (\Inst_top_level|lcd_entity|clk_cnt\(12) & (\Inst_top_level|lcd_entity|Add0~23\ $ (GND))) # (!\Inst_top_level|lcd_entity|clk_cnt\(12) & (!\Inst_top_level|lcd_entity|Add0~23\ & VCC))
-- \Inst_top_level|lcd_entity|Add0~25\ = CARRY((\Inst_top_level|lcd_entity|clk_cnt\(12) & !\Inst_top_level|lcd_entity|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|lcd_entity|clk_cnt\(12),
	datad => VCC,
	cin => \Inst_top_level|lcd_entity|Add0~23\,
	combout => \Inst_top_level|lcd_entity|Add0~24_combout\,
	cout => \Inst_top_level|lcd_entity|Add0~25\);

-- Location: LCCOMB_X2_Y35_N12
\Inst_top_level|lcd_entity|clk_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|clk_cnt~2_combout\ = (!\Inst_top_level|lcd_entity|Equal39~5_combout\ & \Inst_top_level|lcd_entity|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|lcd_entity|Equal39~5_combout\,
	datad => \Inst_top_level|lcd_entity|Add0~24_combout\,
	combout => \Inst_top_level|lcd_entity|clk_cnt~2_combout\);

-- Location: FF_X2_Y35_N13
\Inst_top_level|lcd_entity|clk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|clk_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|clk_cnt\(12));

-- Location: LCCOMB_X1_Y35_N12
\Inst_top_level|lcd_entity|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Add0~28_combout\ = (\Inst_top_level|lcd_entity|clk_cnt\(14) & (\Inst_top_level|lcd_entity|Add0~27\ $ (GND))) # (!\Inst_top_level|lcd_entity|clk_cnt\(14) & (!\Inst_top_level|lcd_entity|Add0~27\ & VCC))
-- \Inst_top_level|lcd_entity|Add0~29\ = CARRY((\Inst_top_level|lcd_entity|clk_cnt\(14) & !\Inst_top_level|lcd_entity|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|clk_cnt\(14),
	datad => VCC,
	cin => \Inst_top_level|lcd_entity|Add0~27\,
	combout => \Inst_top_level|lcd_entity|Add0~28_combout\,
	cout => \Inst_top_level|lcd_entity|Add0~29\);

-- Location: LCCOMB_X1_Y35_N14
\Inst_top_level|lcd_entity|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Add0~30_combout\ = (\Inst_top_level|lcd_entity|clk_cnt\(15) & (!\Inst_top_level|lcd_entity|Add0~29\)) # (!\Inst_top_level|lcd_entity|clk_cnt\(15) & ((\Inst_top_level|lcd_entity|Add0~29\) # (GND)))
-- \Inst_top_level|lcd_entity|Add0~31\ = CARRY((!\Inst_top_level|lcd_entity|Add0~29\) # (!\Inst_top_level|lcd_entity|clk_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|clk_cnt\(15),
	datad => VCC,
	cin => \Inst_top_level|lcd_entity|Add0~29\,
	combout => \Inst_top_level|lcd_entity|Add0~30_combout\,
	cout => \Inst_top_level|lcd_entity|Add0~31\);

-- Location: LCCOMB_X1_Y35_N28
\Inst_top_level|lcd_entity|clk_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|clk_cnt~1_combout\ = (\Inst_top_level|lcd_entity|Add0~30_combout\ & !\Inst_top_level|lcd_entity|Equal39~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|lcd_entity|Add0~30_combout\,
	datad => \Inst_top_level|lcd_entity|Equal39~5_combout\,
	combout => \Inst_top_level|lcd_entity|clk_cnt~1_combout\);

-- Location: FF_X1_Y35_N29
\Inst_top_level|lcd_entity|clk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|clk_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|clk_cnt\(15));

-- Location: LCCOMB_X1_Y35_N16
\Inst_top_level|lcd_entity|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Add0~32_combout\ = \Inst_top_level|lcd_entity|Add0~31\ $ (!\Inst_top_level|lcd_entity|clk_cnt\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|lcd_entity|clk_cnt\(16),
	cin => \Inst_top_level|lcd_entity|Add0~31\,
	combout => \Inst_top_level|lcd_entity|Add0~32_combout\);

-- Location: LCCOMB_X1_Y35_N22
\Inst_top_level|lcd_entity|clk_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|clk_cnt~0_combout\ = (!\Inst_top_level|lcd_entity|Equal39~5_combout\ & \Inst_top_level|lcd_entity|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|lcd_entity|Equal39~5_combout\,
	datad => \Inst_top_level|lcd_entity|Add0~32_combout\,
	combout => \Inst_top_level|lcd_entity|clk_cnt~0_combout\);

-- Location: FF_X1_Y35_N23
\Inst_top_level|lcd_entity|clk_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|clk_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|clk_cnt\(16));

-- Location: FF_X1_Y35_N13
\Inst_top_level|lcd_entity|clk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|clk_cnt\(14));

-- Location: LCCOMB_X1_Y35_N30
\Inst_top_level|lcd_entity|Equal39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Equal39~0_combout\ = (!\Inst_top_level|lcd_entity|clk_cnt\(13) & (\Inst_top_level|lcd_entity|clk_cnt\(15) & (\Inst_top_level|lcd_entity|clk_cnt\(16) & !\Inst_top_level|lcd_entity|clk_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|clk_cnt\(13),
	datab => \Inst_top_level|lcd_entity|clk_cnt\(15),
	datac => \Inst_top_level|lcd_entity|clk_cnt\(16),
	datad => \Inst_top_level|lcd_entity|clk_cnt\(14),
	combout => \Inst_top_level|lcd_entity|Equal39~0_combout\);

-- Location: LCCOMB_X1_Y35_N26
\Inst_top_level|lcd_entity|clk_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|clk_cnt~4_combout\ = (!\Inst_top_level|lcd_entity|Equal39~5_combout\ & \Inst_top_level|lcd_entity|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|lcd_entity|Equal39~5_combout\,
	datad => \Inst_top_level|lcd_entity|Add0~18_combout\,
	combout => \Inst_top_level|lcd_entity|clk_cnt~4_combout\);

-- Location: FF_X1_Y35_N27
\Inst_top_level|lcd_entity|clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|clk_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|clk_cnt\(9));

-- Location: LCCOMB_X1_Y35_N20
\Inst_top_level|lcd_entity|Equal39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Equal39~1_combout\ = (\Inst_top_level|lcd_entity|clk_cnt\(9) & \Inst_top_level|lcd_entity|clk_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|lcd_entity|clk_cnt\(9),
	datad => \Inst_top_level|lcd_entity|clk_cnt\(10),
	combout => \Inst_top_level|lcd_entity|Equal39~1_combout\);

-- Location: LCCOMB_X1_Y35_N18
\Inst_top_level|lcd_entity|Equal39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Equal39~2_combout\ = (!\Inst_top_level|lcd_entity|clk_cnt\(11) & (\Inst_top_level|lcd_entity|clk_cnt\(12) & (\Inst_top_level|lcd_entity|Equal39~0_combout\ & \Inst_top_level|lcd_entity|Equal39~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|clk_cnt\(11),
	datab => \Inst_top_level|lcd_entity|clk_cnt\(12),
	datac => \Inst_top_level|lcd_entity|Equal39~0_combout\,
	datad => \Inst_top_level|lcd_entity|Equal39~1_combout\,
	combout => \Inst_top_level|lcd_entity|Equal39~2_combout\);

-- Location: LCCOMB_X1_Y36_N8
\Inst_top_level|lcd_entity|Equal39~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Equal39~5_combout\ = (!\Inst_top_level|lcd_entity|clk_cnt\(0) & (\Inst_top_level|lcd_entity|Equal39~3_combout\ & (\Inst_top_level|lcd_entity|Equal39~4_combout\ & \Inst_top_level|lcd_entity|Equal39~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|clk_cnt\(0),
	datab => \Inst_top_level|lcd_entity|Equal39~3_combout\,
	datac => \Inst_top_level|lcd_entity|Equal39~4_combout\,
	datad => \Inst_top_level|lcd_entity|Equal39~2_combout\,
	combout => \Inst_top_level|lcd_entity|Equal39~5_combout\);

-- Location: FF_X1_Y36_N9
\Inst_top_level|lcd_entity|clk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|Equal39~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|clk_en~q\);

-- Location: CLKCTRL_G3
\Inst_top_level|lcd_entity|clk_en~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Inst_top_level|lcd_entity|clk_en~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\);

-- Location: LCCOMB_X13_Y11_N10
\Inst_top_level|lcd_entity|byteSel[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|byteSel[0]~7_combout\ = \Inst_top_level|lcd_entity|byteSel\(0) $ (VCC)
-- \Inst_top_level|lcd_entity|byteSel[0]~8\ = CARRY(\Inst_top_level|lcd_entity|byteSel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => VCC,
	combout => \Inst_top_level|lcd_entity|byteSel[0]~7_combout\,
	cout => \Inst_top_level|lcd_entity|byteSel[0]~8\);

-- Location: LCCOMB_X13_Y11_N12
\Inst_top_level|lcd_entity|byteSel[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|byteSel[1]~9_combout\ = (\Inst_top_level|lcd_entity|byteSel\(1) & (!\Inst_top_level|lcd_entity|byteSel[0]~8\)) # (!\Inst_top_level|lcd_entity|byteSel\(1) & ((\Inst_top_level|lcd_entity|byteSel[0]~8\) # (GND)))
-- \Inst_top_level|lcd_entity|byteSel[1]~10\ = CARRY((!\Inst_top_level|lcd_entity|byteSel[0]~8\) # (!\Inst_top_level|lcd_entity|byteSel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(1),
	datad => VCC,
	cin => \Inst_top_level|lcd_entity|byteSel[0]~8\,
	combout => \Inst_top_level|lcd_entity|byteSel[1]~9_combout\,
	cout => \Inst_top_level|lcd_entity|byteSel[1]~10\);

-- Location: LCCOMB_X13_Y11_N14
\Inst_top_level|lcd_entity|byteSel[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|byteSel[2]~11_combout\ = (\Inst_top_level|lcd_entity|byteSel\(2) & (\Inst_top_level|lcd_entity|byteSel[1]~10\ $ (GND))) # (!\Inst_top_level|lcd_entity|byteSel\(2) & (!\Inst_top_level|lcd_entity|byteSel[1]~10\ & VCC))
-- \Inst_top_level|lcd_entity|byteSel[2]~12\ = CARRY((\Inst_top_level|lcd_entity|byteSel\(2) & !\Inst_top_level|lcd_entity|byteSel[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|lcd_entity|byteSel\(2),
	datad => VCC,
	cin => \Inst_top_level|lcd_entity|byteSel[1]~10\,
	combout => \Inst_top_level|lcd_entity|byteSel[2]~11_combout\,
	cout => \Inst_top_level|lcd_entity|byteSel[2]~12\);

-- Location: LCCOMB_X14_Y11_N14
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X14_Y11_N28
\Inst_top_level|lcd_entity|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|LessThan6~0_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(4) & (((!\Inst_top_level|lcd_entity|byteSel\(1) & !\Inst_top_level|lcd_entity|byteSel\(2))) # (!\Inst_top_level|lcd_entity|byteSel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(1),
	datab => \Inst_top_level|lcd_entity|byteSel\(4),
	datac => \Inst_top_level|lcd_entity|byteSel\(3),
	datad => \Inst_top_level|lcd_entity|byteSel\(2),
	combout => \Inst_top_level|lcd_entity|LessThan6~0_combout\);

-- Location: LCCOMB_X14_Y11_N2
\Inst_top_level|lcd_entity|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|LessThan6~1_combout\ = (\Inst_top_level|lcd_entity|byteSel\(5) & !\Inst_top_level|lcd_entity|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|lcd_entity|byteSel\(5),
	datad => \Inst_top_level|lcd_entity|LessThan6~0_combout\,
	combout => \Inst_top_level|lcd_entity|LessThan6~1_combout\);

-- Location: LCCOMB_X10_Y12_N6
\Inst_top_level|lcd_entity|state.start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|state.start~0_combout\ = !\Inst_top_level|lcd_entity|state.repeat~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|lcd_entity|state.repeat~q\,
	combout => \Inst_top_level|lcd_entity|state.start~0_combout\);

-- Location: FF_X10_Y12_N7
\Inst_top_level|lcd_entity|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|state.start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|state.start~q\);

-- Location: LCCOMB_X10_Y12_N0
\Inst_top_level|lcd_entity|state.enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|state.enable~0_combout\ = !\Inst_top_level|lcd_entity|state.start~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|lcd_entity|state.start~q\,
	combout => \Inst_top_level|lcd_entity|state.enable~0_combout\);

-- Location: FF_X10_Y12_N1
\Inst_top_level|lcd_entity|state.enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|state.enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|state.enable~q\);

-- Location: LCCOMB_X10_Y12_N28
\Inst_top_level|lcd_entity|state.repeat~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|state.repeat~feeder_combout\ = \Inst_top_level|lcd_entity|state.enable~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|lcd_entity|state.enable~q\,
	combout => \Inst_top_level|lcd_entity|state.repeat~feeder_combout\);

-- Location: FF_X10_Y12_N29
\Inst_top_level|lcd_entity|state.repeat\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|state.repeat~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|state.repeat~q\);

-- Location: FF_X13_Y11_N15
\Inst_top_level|lcd_entity|byteSel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|byteSel[2]~11_combout\,
	asdata => \~GND~combout\,
	sload => \Inst_top_level|lcd_entity|LessThan6~1_combout\,
	ena => \Inst_top_level|lcd_entity|state.repeat~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|byteSel\(2));

-- Location: LCCOMB_X13_Y11_N16
\Inst_top_level|lcd_entity|byteSel[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|byteSel[3]~13_combout\ = (\Inst_top_level|lcd_entity|byteSel\(3) & (!\Inst_top_level|lcd_entity|byteSel[2]~12\)) # (!\Inst_top_level|lcd_entity|byteSel\(3) & ((\Inst_top_level|lcd_entity|byteSel[2]~12\) # (GND)))
-- \Inst_top_level|lcd_entity|byteSel[3]~14\ = CARRY((!\Inst_top_level|lcd_entity|byteSel[2]~12\) # (!\Inst_top_level|lcd_entity|byteSel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|lcd_entity|byteSel\(3),
	datad => VCC,
	cin => \Inst_top_level|lcd_entity|byteSel[2]~12\,
	combout => \Inst_top_level|lcd_entity|byteSel[3]~13_combout\,
	cout => \Inst_top_level|lcd_entity|byteSel[3]~14\);

-- Location: FF_X13_Y11_N17
\Inst_top_level|lcd_entity|byteSel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|byteSel[3]~13_combout\,
	asdata => VCC,
	sload => \Inst_top_level|lcd_entity|LessThan6~1_combout\,
	ena => \Inst_top_level|lcd_entity|state.repeat~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|byteSel\(3));

-- Location: LCCOMB_X13_Y11_N18
\Inst_top_level|lcd_entity|byteSel[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|byteSel[4]~15_combout\ = (\Inst_top_level|lcd_entity|byteSel\(4) & (\Inst_top_level|lcd_entity|byteSel[3]~14\ $ (GND))) # (!\Inst_top_level|lcd_entity|byteSel\(4) & (!\Inst_top_level|lcd_entity|byteSel[3]~14\ & VCC))
-- \Inst_top_level|lcd_entity|byteSel[4]~16\ = CARRY((\Inst_top_level|lcd_entity|byteSel\(4) & !\Inst_top_level|lcd_entity|byteSel[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|lcd_entity|byteSel\(4),
	datad => VCC,
	cin => \Inst_top_level|lcd_entity|byteSel[3]~14\,
	combout => \Inst_top_level|lcd_entity|byteSel[4]~15_combout\,
	cout => \Inst_top_level|lcd_entity|byteSel[4]~16\);

-- Location: FF_X13_Y11_N19
\Inst_top_level|lcd_entity|byteSel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|byteSel[4]~15_combout\,
	asdata => \~GND~combout\,
	sload => \Inst_top_level|lcd_entity|LessThan6~1_combout\,
	ena => \Inst_top_level|lcd_entity|state.repeat~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|byteSel\(4));

-- Location: LCCOMB_X13_Y11_N20
\Inst_top_level|lcd_entity|byteSel[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|byteSel[5]~17_combout\ = \Inst_top_level|lcd_entity|byteSel[4]~16\ $ (\Inst_top_level|lcd_entity|byteSel\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|lcd_entity|byteSel\(5),
	cin => \Inst_top_level|lcd_entity|byteSel[4]~16\,
	combout => \Inst_top_level|lcd_entity|byteSel[5]~17_combout\);

-- Location: FF_X13_Y11_N21
\Inst_top_level|lcd_entity|byteSel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|byteSel[5]~17_combout\,
	asdata => \~GND~combout\,
	sload => \Inst_top_level|lcd_entity|LessThan6~1_combout\,
	ena => \Inst_top_level|lcd_entity|state.repeat~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|byteSel\(5));

-- Location: FF_X13_Y11_N13
\Inst_top_level|lcd_entity|byteSel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|byteSel[1]~9_combout\,
	asdata => \~GND~combout\,
	sload => \Inst_top_level|lcd_entity|LessThan6~1_combout\,
	ena => \Inst_top_level|lcd_entity|state.repeat~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|byteSel\(1));

-- Location: FF_X13_Y11_N11
\Inst_top_level|lcd_entity|byteSel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|byteSel[0]~7_combout\,
	asdata => VCC,
	sload => \Inst_top_level|lcd_entity|LessThan6~1_combout\,
	ena => \Inst_top_level|lcd_entity|state.repeat~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|byteSel\(0));

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X19_Y13_N9
\Inst_top_level|rising_edge0|reg_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|rising_edge0|reg_0~q\);

-- Location: FF_X11_Y13_N9
\Inst_top_level|rising_edge0|reg_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|rising_edge0|reg_0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|rising_edge0|reg_1~q\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: FF_X14_Y13_N19
\Inst_top_level|rising_edge1|reg_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|rising_edge1|reg_0~q\);

-- Location: FF_X13_Y13_N7
\Inst_top_level|rising_edge1|reg_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|rising_edge1|reg_0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|rising_edge1|reg_1~q\);

-- Location: LCCOMB_X13_Y13_N14
\Inst_top_level|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector3~0_combout\ = (\Inst_top_level|fstate.HZ60~q\ & ((\Inst_top_level|rising_edge1|reg_1~q\) # (!\Inst_top_level|rising_edge1|reg_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|fstate.HZ60~q\,
	datab => \Inst_top_level|rising_edge1|reg_0~q\,
	datad => \Inst_top_level|rising_edge1|reg_1~q\,
	combout => \Inst_top_level|Selector3~0_combout\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: FF_X14_Y13_N31
\Inst_top_level|rising_edge2|reg_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|rising_edge2|reg_0~q\);

-- Location: FF_X13_Y13_N21
\Inst_top_level|rising_edge2|reg_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|rising_edge2|reg_0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|rising_edge2|reg_1~q\);

-- Location: LCCOMB_X13_Y13_N20
\Inst_top_level|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector3~1_combout\ = (\Inst_top_level|rising_edge2|reg_0~q\ & (((\Inst_top_level|rising_edge1|reg_0~q\ & !\Inst_top_level|rising_edge1|reg_1~q\)) # (!\Inst_top_level|rising_edge2|reg_1~q\))) # (!\Inst_top_level|rising_edge2|reg_0~q\ & 
-- (\Inst_top_level|rising_edge1|reg_0~q\ & ((!\Inst_top_level|rising_edge1|reg_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|rising_edge2|reg_0~q\,
	datab => \Inst_top_level|rising_edge1|reg_0~q\,
	datac => \Inst_top_level|rising_edge2|reg_1~q\,
	datad => \Inst_top_level|rising_edge1|reg_1~q\,
	combout => \Inst_top_level|Selector3~1_combout\);

-- Location: FF_X13_Y13_N15
\Inst_top_level|fstate.HZ120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Selector3~0_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|fstate.HZ120~q\);

-- Location: LCCOMB_X13_Y13_N8
\Inst_top_level|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector4~0_combout\ = (\Inst_top_level|fstate.HZ120~q\ & ((\Inst_top_level|rising_edge1|reg_1~q\) # (!\Inst_top_level|rising_edge1|reg_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|rising_edge1|reg_0~q\,
	datac => \Inst_top_level|fstate.HZ120~q\,
	datad => \Inst_top_level|rising_edge1|reg_1~q\,
	combout => \Inst_top_level|Selector4~0_combout\);

-- Location: FF_X13_Y13_N9
\Inst_top_level|fstate.HZ1000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Selector4~0_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|fstate.HZ1000~q\);

-- Location: LCCOMB_X13_Y13_N6
\Inst_top_level|rising_edge1|data_o\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|rising_edge1|data_o~combout\ = (\Inst_top_level|rising_edge1|reg_0~q\ & !\Inst_top_level|rising_edge1|reg_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|rising_edge1|reg_0~q\,
	datac => \Inst_top_level|rising_edge1|reg_1~q\,
	combout => \Inst_top_level|rising_edge1|data_o~combout\);

-- Location: LCCOMB_X14_Y13_N4
\Inst_top_level|rising_edge2|data_o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|rising_edge2|data_o~0_combout\ = (\Inst_top_level|rising_edge2|reg_0~q\ & !\Inst_top_level|rising_edge2|reg_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|rising_edge2|reg_0~q\,
	datad => \Inst_top_level|rising_edge2|reg_1~q\,
	combout => \Inst_top_level|rising_edge2|data_o~0_combout\);

-- Location: LCCOMB_X13_Y13_N24
\Inst_top_level|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector2~2_combout\ = (\Inst_top_level|Selector2~1_combout\) # ((!\Inst_top_level|rising_edge1|data_o~combout\ & (\Inst_top_level|fstate.HZ60~q\ & !\Inst_top_level|rising_edge2|data_o~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Selector2~1_combout\,
	datab => \Inst_top_level|rising_edge1|data_o~combout\,
	datac => \Inst_top_level|fstate.HZ60~q\,
	datad => \Inst_top_level|rising_edge2|data_o~0_combout\,
	combout => \Inst_top_level|Selector2~2_combout\);

-- Location: FF_X13_Y13_N25
\Inst_top_level|fstate.HZ60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Selector2~2_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|fstate.HZ60~q\);

-- Location: LCCOMB_X13_Y13_N18
\Inst_top_level|SRAM_addr_i[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_addr_i[4]~5_combout\ = (\Inst_top_level|fstate.HZ120~q\) # ((\Inst_top_level|fstate.HZ1000~q\) # (\Inst_top_level|fstate.HZ60~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|fstate.HZ120~q\,
	datac => \Inst_top_level|fstate.HZ1000~q\,
	datad => \Inst_top_level|fstate.HZ60~q\,
	combout => \Inst_top_level|SRAM_addr_i[4]~5_combout\);

-- Location: LCCOMB_X11_Y13_N16
\Inst_top_level|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector0~1_combout\ = ((\Inst_top_level|rising_edge1|data_o~combout\ & ((\Inst_top_level|SRAM_addr_i[4]~5_combout\))) # (!\Inst_top_level|rising_edge1|data_o~combout\ & (\Inst_top_level|Selector2~0_combout\))) # 
-- (!\Inst_top_level|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Selector2~0_combout\,
	datab => \Inst_top_level|Selector0~0_combout\,
	datac => \Inst_top_level|SRAM_addr_i[4]~5_combout\,
	datad => \Inst_top_level|rising_edge1|data_o~combout\,
	combout => \Inst_top_level|Selector0~1_combout\);

-- Location: FF_X11_Y13_N17
\Inst_top_level|fstate.TEST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Selector0~1_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|fstate.TEST~q\);

-- Location: LCCOMB_X11_Y13_N30
\Inst_top_level|fstate.PAUSE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|fstate.PAUSE~0_combout\ = (\Inst_top_level|rising_edge0|reg_0~q\ & ((\Inst_top_level|rising_edge0|reg_1~q\ & (\Inst_top_level|fstate.PAUSE~q\)) # (!\Inst_top_level|rising_edge0|reg_1~q\ & ((\Inst_top_level|fstate.TEST~q\))))) # 
-- (!\Inst_top_level|rising_edge0|reg_0~q\ & (((\Inst_top_level|fstate.PAUSE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|rising_edge0|reg_0~q\,
	datab => \Inst_top_level|rising_edge0|reg_1~q\,
	datac => \Inst_top_level|fstate.PAUSE~q\,
	datad => \Inst_top_level|fstate.TEST~q\,
	combout => \Inst_top_level|fstate.PAUSE~0_combout\);

-- Location: FF_X11_Y13_N31
\Inst_top_level|fstate.PAUSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|fstate.PAUSE~0_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|fstate.PAUSE~q\);

-- Location: LCCOMB_X11_Y13_N24
\Inst_top_level|rising_edge0|data_o\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|rising_edge0|data_o~combout\ = (!\Inst_top_level|rising_edge0|reg_1~q\ & \Inst_top_level|rising_edge0|reg_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|rising_edge0|reg_1~q\,
	datad => \Inst_top_level|rising_edge0|reg_0~q\,
	combout => \Inst_top_level|rising_edge0|data_o~combout\);

-- Location: LCCOMB_X11_Y13_N26
\Inst_top_level|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector0~0_combout\ = (\Inst_top_level|fstate.INIT~q\ & (((!\Inst_top_level|rising_edge0|data_o~combout\) # (!\Inst_top_level|fstate.PAUSE~q\)))) # (!\Inst_top_level|fstate.INIT~q\ & (!\Inst_top_level|ROM_done~q\ & 
-- ((!\Inst_top_level|rising_edge0|data_o~combout\) # (!\Inst_top_level|fstate.PAUSE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|fstate.INIT~q\,
	datab => \Inst_top_level|ROM_done~q\,
	datac => \Inst_top_level|fstate.PAUSE~q\,
	datad => \Inst_top_level|rising_edge0|data_o~combout\,
	combout => \Inst_top_level|Selector0~0_combout\);

-- Location: LCCOMB_X11_Y13_N18
\Inst_top_level|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector2~0_combout\ = (\Inst_top_level|fstate.TEST~q\ & ((\Inst_top_level|rising_edge0|reg_1~q\) # (!\Inst_top_level|rising_edge0|reg_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|fstate.TEST~q\,
	datac => \Inst_top_level|rising_edge0|reg_1~q\,
	datad => \Inst_top_level|rising_edge0|reg_0~q\,
	combout => \Inst_top_level|Selector2~0_combout\);

-- Location: LCCOMB_X13_Y13_N12
\Inst_top_level|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector7~1_combout\ = (\Inst_top_level|Selector7~0_combout\) # ((\Inst_top_level|Selector2~0_combout\) # (!\Inst_top_level|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Selector7~0_combout\,
	datab => \Inst_top_level|Selector0~0_combout\,
	datad => \Inst_top_level|Selector2~0_combout\,
	combout => \Inst_top_level|Selector7~1_combout\);

-- Location: FF_X13_Y13_N13
\Inst_top_level|selectMode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Selector7~1_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|selectMode\(0));

-- Location: LCCOMB_X13_Y13_N16
\Inst_top_level|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector6~4_combout\ = (\Inst_top_level|SRAM_addr_i[4]~5_combout\ & (!\Inst_top_level|rising_edge1|data_o~combout\ & ((\Inst_top_level|selectMode\(1)) # (\Inst_top_level|rising_edge2|data_o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(1),
	datab => \Inst_top_level|SRAM_addr_i[4]~5_combout\,
	datac => \Inst_top_level|rising_edge1|data_o~combout\,
	datad => \Inst_top_level|rising_edge2|data_o~0_combout\,
	combout => \Inst_top_level|Selector6~4_combout\);

-- Location: LCCOMB_X13_Y13_N26
\Inst_top_level|Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector6~5_combout\ = (\Inst_top_level|Selector6~6_combout\) # ((\Inst_top_level|Selector6~4_combout\) # ((\Inst_top_level|fstate.PAUSE~q\ & !\Inst_top_level|rising_edge0|data_o~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Selector6~6_combout\,
	datab => \Inst_top_level|fstate.PAUSE~q\,
	datac => \Inst_top_level|rising_edge0|data_o~combout\,
	datad => \Inst_top_level|Selector6~4_combout\,
	combout => \Inst_top_level|Selector6~5_combout\);

-- Location: FF_X13_Y13_N27
\Inst_top_level|selectMode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Selector6~5_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|selectMode\(1));

-- Location: LCCOMB_X13_Y12_N28
\Inst_top_level|lcd_entity|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux1~0_combout\ = (\Inst_top_level|selectMode\(0)) # (\Inst_top_level|selectMode\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|selectMode\(0),
	datad => \Inst_top_level|selectMode\(1),
	combout => \Inst_top_level|lcd_entity|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y11_N30
\Inst_top_level|lcd_entity|Mux70~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~84_combout\ = (\Inst_top_level|lcd_entity|byteSel\(3) & (\Inst_top_level|lcd_entity|byteSel\(1) & (\Inst_top_level|lcd_entity|byteSel\(0) & !\Inst_top_level|lcd_entity|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(3),
	datab => \Inst_top_level|lcd_entity|byteSel\(1),
	datac => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => \Inst_top_level|lcd_entity|Mux1~0_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~84_combout\);

-- Location: LCCOMB_X13_Y13_N2
\Inst_top_level|lcd_entity|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux33~0_combout\ = \Inst_top_level|selectMode\(1) $ (\Inst_top_level|selectMode\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|selectMode\(1),
	datad => \Inst_top_level|selectMode\(0),
	combout => \Inst_top_level|lcd_entity|Mux33~0_combout\);

-- Location: LCCOMB_X13_Y11_N26
\Inst_top_level|lcd_entity|Mux70~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~34_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(0) & \Inst_top_level|lcd_entity|byteSel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => \Inst_top_level|lcd_entity|byteSel\(1),
	combout => \Inst_top_level|lcd_entity|Mux70~34_combout\);

-- Location: LCCOMB_X12_Y11_N6
\Inst_top_level|lcd_entity|Mux70~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~33_combout\ = (\Inst_top_level|lcd_entity|byteSel\(3) & (\Inst_top_level|lcd_entity|byteSel\(0) & ((\Inst_top_level|lcd_entity|byteSel\(1)) # (!\Inst_top_level|lcd_entity|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(3),
	datab => \Inst_top_level|lcd_entity|byteSel\(1),
	datac => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => \Inst_top_level|lcd_entity|Mux1~0_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~33_combout\);

-- Location: LCCOMB_X12_Y11_N16
\Inst_top_level|lcd_entity|Mux70~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~35_combout\ = (\Inst_top_level|lcd_entity|Mux70~33_combout\) # ((\Inst_top_level|lcd_entity|Mux70~34_combout\ & ((\Inst_top_level|lcd_entity|Mux33~0_combout\) # (!\Inst_top_level|lcd_entity|byteSel\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(3),
	datab => \Inst_top_level|lcd_entity|Mux33~0_combout\,
	datac => \Inst_top_level|lcd_entity|Mux70~34_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~33_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~35_combout\);

-- Location: LCCOMB_X12_Y11_N14
\Inst_top_level|lcd_entity|Mux70~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~37_combout\ = (\Inst_top_level|lcd_entity|byteSel\(4) & (\Inst_top_level|lcd_entity|byteSel\(2))) # (!\Inst_top_level|lcd_entity|byteSel\(4) & ((\Inst_top_level|lcd_entity|byteSel\(2) & 
-- ((\Inst_top_level|lcd_entity|Mux70~35_combout\))) # (!\Inst_top_level|lcd_entity|byteSel\(2) & (\Inst_top_level|lcd_entity|Mux70~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(4),
	datab => \Inst_top_level|lcd_entity|byteSel\(2),
	datac => \Inst_top_level|lcd_entity|Mux70~84_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~35_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~37_combout\);

-- Location: LCCOMB_X11_Y11_N16
\Inst_top_level|lcd_entity|Mux70~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~28_combout\ = (\Inst_top_level|selectMode\(0) & ((\Inst_top_level|lcd_entity|byteSel\(1)) # ((!\Inst_top_level|lcd_entity|byteSel\(0) & \Inst_top_level|selectMode\(1))))) # (!\Inst_top_level|selectMode\(0) & 
-- ((\Inst_top_level|lcd_entity|byteSel\(0) & (\Inst_top_level|selectMode\(1))) # (!\Inst_top_level|lcd_entity|byteSel\(0) & ((!\Inst_top_level|lcd_entity|byteSel\(1)) # (!\Inst_top_level|selectMode\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(0),
	datab => \Inst_top_level|selectMode\(1),
	datac => \Inst_top_level|selectMode\(0),
	datad => \Inst_top_level|lcd_entity|byteSel\(1),
	combout => \Inst_top_level|lcd_entity|Mux70~28_combout\);

-- Location: LCCOMB_X11_Y11_N10
\Inst_top_level|lcd_entity|Mux70~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~93_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(3) & \Inst_top_level|lcd_entity|Mux70~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(3),
	datad => \Inst_top_level|lcd_entity|Mux70~28_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~93_combout\);

-- Location: LCCOMB_X12_Y11_N4
\Inst_top_level|lcd_entity|Mux70~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~38_combout\ = (\Inst_top_level|lcd_entity|byteSel\(4) & (!\Inst_top_level|lcd_entity|byteSel\(5) & (!\Inst_top_level|lcd_entity|Mux70~37_combout\ & \Inst_top_level|lcd_entity|Mux70~93_combout\))) # 
-- (!\Inst_top_level|lcd_entity|byteSel\(4) & ((\Inst_top_level|lcd_entity|byteSel\(5)) # ((\Inst_top_level|lcd_entity|Mux70~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(4),
	datab => \Inst_top_level|lcd_entity|byteSel\(5),
	datac => \Inst_top_level|lcd_entity|Mux70~37_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~93_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~38_combout\);

-- Location: LCCOMB_X14_Y13_N18
\Inst_top_level|fstate~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|fstate~10_combout\ = ((\Inst_top_level|rising_edge2|reg_1~q\) # ((!\Inst_top_level|rising_edge1|reg_1~q\ & \Inst_top_level|rising_edge1|reg_0~q\))) # (!\Inst_top_level|rising_edge2|reg_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|rising_edge2|reg_0~q\,
	datab => \Inst_top_level|rising_edge1|reg_1~q\,
	datac => \Inst_top_level|rising_edge1|reg_0~q\,
	datad => \Inst_top_level|rising_edge2|reg_1~q\,
	combout => \Inst_top_level|fstate~10_combout\);

-- Location: LCCOMB_X16_Y12_N28
\Inst_top_level|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector8~0_combout\ = (\Inst_top_level|selectPWM\(1) & ((\Inst_top_level|SRAM_addr_i[4]~6_combout\) # ((!\Inst_top_level|fstate.INIT~q\ & \Inst_top_level|ROM_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM_addr_i[4]~6_combout\,
	datab => \Inst_top_level|fstate.INIT~q\,
	datac => \Inst_top_level|selectPWM\(1),
	datad => \Inst_top_level|ROM_done~q\,
	combout => \Inst_top_level|Selector8~0_combout\);

-- Location: LCCOMB_X18_Y12_N28
\Inst_top_level|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector8~1_combout\ = (\Inst_top_level|Selector8~0_combout\) # ((\Inst_top_level|fstate~10_combout\ & (\Inst_top_level|fstate.HZ1000~q\)) # (!\Inst_top_level|fstate~10_combout\ & ((\Inst_top_level|fstate.HZ120~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|fstate.HZ1000~q\,
	datab => \Inst_top_level|fstate.HZ120~q\,
	datac => \Inst_top_level|fstate~10_combout\,
	datad => \Inst_top_level|Selector8~0_combout\,
	combout => \Inst_top_level|Selector8~1_combout\);

-- Location: FF_X18_Y12_N29
\Inst_top_level|selectPWM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Selector8~1_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|selectPWM\(1));

-- Location: LCCOMB_X14_Y12_N26
\Inst_top_level|lcd_entity|Mux70~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~40_combout\ = (!\Inst_top_level|selectPWM\(0) & (\Inst_top_level|selectPWM\(1) & (\Inst_top_level|selectMode\(1) & \Inst_top_level|selectMode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectPWM\(0),
	datab => \Inst_top_level|selectPWM\(1),
	datac => \Inst_top_level|selectMode\(1),
	datad => \Inst_top_level|selectMode\(0),
	combout => \Inst_top_level|lcd_entity|Mux70~40_combout\);

-- Location: LCCOMB_X14_Y13_N8
\Inst_top_level|lcd_entity|Mux70~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~39_combout\ = (\Inst_top_level|lcd_entity|byteSel\(0) & (\Inst_top_level|lcd_entity|byteSel\(3) & \Inst_top_level|lcd_entity|byteSel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(0),
	datac => \Inst_top_level|lcd_entity|byteSel\(3),
	datad => \Inst_top_level|lcd_entity|byteSel\(1),
	combout => \Inst_top_level|lcd_entity|Mux70~39_combout\);

-- Location: LCCOMB_X16_Y12_N2
\Inst_top_level|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector9~0_combout\ = (\Inst_top_level|selectPWM\(0) & ((\Inst_top_level|SRAM_addr_i[4]~6_combout\) # ((!\Inst_top_level|fstate.INIT~q\ & \Inst_top_level|ROM_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM_addr_i[4]~6_combout\,
	datab => \Inst_top_level|fstate.INIT~q\,
	datac => \Inst_top_level|selectPWM\(0),
	datad => \Inst_top_level|ROM_done~q\,
	combout => \Inst_top_level|Selector9~0_combout\);

-- Location: LCCOMB_X16_Y12_N16
\Inst_top_level|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector9~1_combout\ = (\Inst_top_level|Selector9~0_combout\) # ((\Inst_top_level|fstate~10_combout\ & ((\Inst_top_level|fstate.HZ120~q\))) # (!\Inst_top_level|fstate~10_combout\ & (\Inst_top_level|fstate.HZ60~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|fstate.HZ60~q\,
	datab => \Inst_top_level|fstate.HZ120~q\,
	datac => \Inst_top_level|fstate~10_combout\,
	datad => \Inst_top_level|Selector9~0_combout\,
	combout => \Inst_top_level|Selector9~1_combout\);

-- Location: FF_X17_Y12_N1
\Inst_top_level|selectPWM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Selector9~1_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|selectPWM\(0));

-- Location: LCCOMB_X17_Y12_N0
\Inst_top_level|pwm_entity|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|Equal0~1_combout\ = (\Inst_top_level|selectPWM\(0)) # (\Inst_top_level|selectPWM\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|selectPWM\(0),
	datad => \Inst_top_level|selectPWM\(1),
	combout => \Inst_top_level|pwm_entity|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y12_N8
\Inst_top_level|pwm_entity|count32[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[4]~37_combout\ = (\Inst_top_level|pwm_entity|count32\(4) & (!\Inst_top_level|pwm_entity|count32[3]~36\)) # (!\Inst_top_level|pwm_entity|count32\(4) & ((\Inst_top_level|pwm_entity|count32[3]~36\) # (GND)))
-- \Inst_top_level|pwm_entity|count32[4]~38\ = CARRY((!\Inst_top_level|pwm_entity|count32[3]~36\) # (!\Inst_top_level|pwm_entity|count32\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|pwm_entity|count32\(4),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[3]~36\,
	combout => \Inst_top_level|pwm_entity|count32[4]~37_combout\,
	cout => \Inst_top_level|pwm_entity|count32[4]~38\);

-- Location: FF_X17_Y12_N9
\Inst_top_level|pwm_entity|count32[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[4]~37_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(4));

-- Location: LCCOMB_X17_Y12_N12
\Inst_top_level|pwm_entity|count32[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[6]~41_combout\ = (\Inst_top_level|pwm_entity|Equal0~0_combout\ & ((\Inst_top_level|pwm_entity|count32\(6) & (\Inst_top_level|pwm_entity|count32[5]~40\ & VCC)) # (!\Inst_top_level|pwm_entity|count32\(6) & 
-- (!\Inst_top_level|pwm_entity|count32[5]~40\)))) # (!\Inst_top_level|pwm_entity|Equal0~0_combout\ & ((\Inst_top_level|pwm_entity|count32\(6) & (!\Inst_top_level|pwm_entity|count32[5]~40\)) # (!\Inst_top_level|pwm_entity|count32\(6) & 
-- ((\Inst_top_level|pwm_entity|count32[5]~40\) # (GND)))))
-- \Inst_top_level|pwm_entity|count32[6]~42\ = CARRY((\Inst_top_level|pwm_entity|Equal0~0_combout\ & (!\Inst_top_level|pwm_entity|count32\(6) & !\Inst_top_level|pwm_entity|count32[5]~40\)) # (!\Inst_top_level|pwm_entity|Equal0~0_combout\ & 
-- ((!\Inst_top_level|pwm_entity|count32[5]~40\) # (!\Inst_top_level|pwm_entity|count32\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|Equal0~0_combout\,
	datab => \Inst_top_level|pwm_entity|count32\(6),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[5]~40\,
	combout => \Inst_top_level|pwm_entity|count32[6]~41_combout\,
	cout => \Inst_top_level|pwm_entity|count32[6]~42\);

-- Location: FF_X17_Y12_N13
\Inst_top_level|pwm_entity|count32[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[6]~41_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(6));

-- Location: LCCOMB_X17_Y12_N20
\Inst_top_level|pwm_entity|count32[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[10]~49_combout\ = (\Inst_top_level|pwm_entity|Equal0~0_combout\ & ((\Inst_top_level|pwm_entity|count32\(10) & (!\Inst_top_level|pwm_entity|count32[9]~48\)) # (!\Inst_top_level|pwm_entity|count32\(10) & 
-- ((\Inst_top_level|pwm_entity|count32[9]~48\) # (GND))))) # (!\Inst_top_level|pwm_entity|Equal0~0_combout\ & ((\Inst_top_level|pwm_entity|count32\(10) & (\Inst_top_level|pwm_entity|count32[9]~48\ & VCC)) # (!\Inst_top_level|pwm_entity|count32\(10) & 
-- (!\Inst_top_level|pwm_entity|count32[9]~48\))))
-- \Inst_top_level|pwm_entity|count32[10]~50\ = CARRY((\Inst_top_level|pwm_entity|Equal0~0_combout\ & ((!\Inst_top_level|pwm_entity|count32[9]~48\) # (!\Inst_top_level|pwm_entity|count32\(10)))) # (!\Inst_top_level|pwm_entity|Equal0~0_combout\ & 
-- (!\Inst_top_level|pwm_entity|count32\(10) & !\Inst_top_level|pwm_entity|count32[9]~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|Equal0~0_combout\,
	datab => \Inst_top_level|pwm_entity|count32\(10),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[9]~48\,
	combout => \Inst_top_level|pwm_entity|count32[10]~49_combout\,
	cout => \Inst_top_level|pwm_entity|count32[10]~50\);

-- Location: FF_X17_Y12_N21
\Inst_top_level|pwm_entity|count32[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[10]~49_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(10));

-- Location: LCCOMB_X17_Y12_N26
\Inst_top_level|pwm_entity|count32[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[13]~55_combout\ = ((\Inst_top_level|pwm_entity|Equal0~0_combout\ $ (\Inst_top_level|pwm_entity|count32\(13) $ (!\Inst_top_level|pwm_entity|count32[12]~54\)))) # (GND)
-- \Inst_top_level|pwm_entity|count32[13]~56\ = CARRY((\Inst_top_level|pwm_entity|Equal0~0_combout\ & ((\Inst_top_level|pwm_entity|count32\(13)) # (!\Inst_top_level|pwm_entity|count32[12]~54\))) # (!\Inst_top_level|pwm_entity|Equal0~0_combout\ & 
-- (\Inst_top_level|pwm_entity|count32\(13) & !\Inst_top_level|pwm_entity|count32[12]~54\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|Equal0~0_combout\,
	datab => \Inst_top_level|pwm_entity|count32\(13),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[12]~54\,
	combout => \Inst_top_level|pwm_entity|count32[13]~55_combout\,
	cout => \Inst_top_level|pwm_entity|count32[13]~56\);

-- Location: FF_X17_Y12_N27
\Inst_top_level|pwm_entity|count32[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[13]~55_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(13));

-- Location: LCCOMB_X17_Y11_N2
\Inst_top_level|pwm_entity|count32[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[17]~63_combout\ = (\Inst_top_level|pwm_entity|count32\(17) & (\Inst_top_level|pwm_entity|count32[16]~62\ $ (GND))) # (!\Inst_top_level|pwm_entity|count32\(17) & (!\Inst_top_level|pwm_entity|count32[16]~62\ & VCC))
-- \Inst_top_level|pwm_entity|count32[17]~64\ = CARRY((\Inst_top_level|pwm_entity|count32\(17) & !\Inst_top_level|pwm_entity|count32[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|pwm_entity|count32\(17),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[16]~62\,
	combout => \Inst_top_level|pwm_entity|count32[17]~63_combout\,
	cout => \Inst_top_level|pwm_entity|count32[17]~64\);

-- Location: FF_X17_Y11_N3
\Inst_top_level|pwm_entity|count32[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[17]~63_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(17));

-- Location: LCCOMB_X17_Y11_N4
\Inst_top_level|pwm_entity|count32[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[18]~65_combout\ = (\Inst_top_level|pwm_entity|count32\(18) & (!\Inst_top_level|pwm_entity|count32[17]~64\)) # (!\Inst_top_level|pwm_entity|count32\(18) & ((\Inst_top_level|pwm_entity|count32[17]~64\) # (GND)))
-- \Inst_top_level|pwm_entity|count32[18]~66\ = CARRY((!\Inst_top_level|pwm_entity|count32[17]~64\) # (!\Inst_top_level|pwm_entity|count32\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|pwm_entity|count32\(18),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[17]~64\,
	combout => \Inst_top_level|pwm_entity|count32[18]~65_combout\,
	cout => \Inst_top_level|pwm_entity|count32[18]~66\);

-- Location: FF_X17_Y11_N5
\Inst_top_level|pwm_entity|count32[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[18]~65_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(18));

-- Location: LCCOMB_X17_Y11_N8
\Inst_top_level|pwm_entity|count32[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[20]~69_combout\ = (\Inst_top_level|pwm_entity|count32\(20) & (!\Inst_top_level|pwm_entity|count32[19]~68\)) # (!\Inst_top_level|pwm_entity|count32\(20) & ((\Inst_top_level|pwm_entity|count32[19]~68\) # (GND)))
-- \Inst_top_level|pwm_entity|count32[20]~70\ = CARRY((!\Inst_top_level|pwm_entity|count32[19]~68\) # (!\Inst_top_level|pwm_entity|count32\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|pwm_entity|count32\(20),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[19]~68\,
	combout => \Inst_top_level|pwm_entity|count32[20]~69_combout\,
	cout => \Inst_top_level|pwm_entity|count32[20]~70\);

-- Location: FF_X17_Y11_N9
\Inst_top_level|pwm_entity|count32[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[20]~69_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(20));

-- Location: LCCOMB_X17_Y11_N14
\Inst_top_level|pwm_entity|count32[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[23]~75_combout\ = (\Inst_top_level|pwm_entity|count32\(23) & (\Inst_top_level|pwm_entity|count32[22]~74\ $ (GND))) # (!\Inst_top_level|pwm_entity|count32\(23) & (!\Inst_top_level|pwm_entity|count32[22]~74\ & VCC))
-- \Inst_top_level|pwm_entity|count32[23]~76\ = CARRY((\Inst_top_level|pwm_entity|count32\(23) & !\Inst_top_level|pwm_entity|count32[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|pwm_entity|count32\(23),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[22]~74\,
	combout => \Inst_top_level|pwm_entity|count32[23]~75_combout\,
	cout => \Inst_top_level|pwm_entity|count32[23]~76\);

-- Location: FF_X17_Y11_N15
\Inst_top_level|pwm_entity|count32[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[23]~75_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(23));

-- Location: LCCOMB_X17_Y11_N16
\Inst_top_level|pwm_entity|count32[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[24]~77_combout\ = (\Inst_top_level|pwm_entity|count32\(24) & (!\Inst_top_level|pwm_entity|count32[23]~76\)) # (!\Inst_top_level|pwm_entity|count32\(24) & ((\Inst_top_level|pwm_entity|count32[23]~76\) # (GND)))
-- \Inst_top_level|pwm_entity|count32[24]~78\ = CARRY((!\Inst_top_level|pwm_entity|count32[23]~76\) # (!\Inst_top_level|pwm_entity|count32\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|pwm_entity|count32\(24),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[23]~76\,
	combout => \Inst_top_level|pwm_entity|count32[24]~77_combout\,
	cout => \Inst_top_level|pwm_entity|count32[24]~78\);

-- Location: FF_X17_Y11_N17
\Inst_top_level|pwm_entity|count32[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[24]~77_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(24));

-- Location: LCCOMB_X17_Y11_N18
\Inst_top_level|pwm_entity|count32[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[25]~79_combout\ = (\Inst_top_level|pwm_entity|count32\(25) & (\Inst_top_level|pwm_entity|count32[24]~78\ $ (GND))) # (!\Inst_top_level|pwm_entity|count32\(25) & (!\Inst_top_level|pwm_entity|count32[24]~78\ & VCC))
-- \Inst_top_level|pwm_entity|count32[25]~80\ = CARRY((\Inst_top_level|pwm_entity|count32\(25) & !\Inst_top_level|pwm_entity|count32[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|pwm_entity|count32\(25),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[24]~78\,
	combout => \Inst_top_level|pwm_entity|count32[25]~79_combout\,
	cout => \Inst_top_level|pwm_entity|count32[25]~80\);

-- Location: FF_X17_Y11_N19
\Inst_top_level|pwm_entity|count32[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[25]~79_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(25));

-- Location: LCCOMB_X17_Y11_N20
\Inst_top_level|pwm_entity|count32[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[26]~81_combout\ = (\Inst_top_level|pwm_entity|count32\(26) & (!\Inst_top_level|pwm_entity|count32[25]~80\)) # (!\Inst_top_level|pwm_entity|count32\(26) & ((\Inst_top_level|pwm_entity|count32[25]~80\) # (GND)))
-- \Inst_top_level|pwm_entity|count32[26]~82\ = CARRY((!\Inst_top_level|pwm_entity|count32[25]~80\) # (!\Inst_top_level|pwm_entity|count32\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|pwm_entity|count32\(26),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[25]~80\,
	combout => \Inst_top_level|pwm_entity|count32[26]~81_combout\,
	cout => \Inst_top_level|pwm_entity|count32[26]~82\);

-- Location: FF_X17_Y11_N21
\Inst_top_level|pwm_entity|count32[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[26]~81_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(26));

-- Location: LCCOMB_X17_Y11_N22
\Inst_top_level|pwm_entity|count32[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[27]~83_combout\ = (\Inst_top_level|pwm_entity|count32\(27) & (\Inst_top_level|pwm_entity|count32[26]~82\ $ (GND))) # (!\Inst_top_level|pwm_entity|count32\(27) & (!\Inst_top_level|pwm_entity|count32[26]~82\ & VCC))
-- \Inst_top_level|pwm_entity|count32[27]~84\ = CARRY((\Inst_top_level|pwm_entity|count32\(27) & !\Inst_top_level|pwm_entity|count32[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count32\(27),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[26]~82\,
	combout => \Inst_top_level|pwm_entity|count32[27]~83_combout\,
	cout => \Inst_top_level|pwm_entity|count32[27]~84\);

-- Location: LCCOMB_X17_Y11_N24
\Inst_top_level|pwm_entity|count32[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[28]~85_combout\ = (\Inst_top_level|pwm_entity|count32\(28) & (!\Inst_top_level|pwm_entity|count32[27]~84\)) # (!\Inst_top_level|pwm_entity|count32\(28) & ((\Inst_top_level|pwm_entity|count32[27]~84\) # (GND)))
-- \Inst_top_level|pwm_entity|count32[28]~86\ = CARRY((!\Inst_top_level|pwm_entity|count32[27]~84\) # (!\Inst_top_level|pwm_entity|count32\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|pwm_entity|count32\(28),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[27]~84\,
	combout => \Inst_top_level|pwm_entity|count32[28]~85_combout\,
	cout => \Inst_top_level|pwm_entity|count32[28]~86\);

-- Location: FF_X17_Y11_N25
\Inst_top_level|pwm_entity|count32[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[28]~85_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(28));

-- Location: LCCOMB_X17_Y11_N26
\Inst_top_level|pwm_entity|count32[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[29]~87_combout\ = (\Inst_top_level|pwm_entity|count32\(29) & (\Inst_top_level|pwm_entity|count32[28]~86\ $ (GND))) # (!\Inst_top_level|pwm_entity|count32\(29) & (!\Inst_top_level|pwm_entity|count32[28]~86\ & VCC))
-- \Inst_top_level|pwm_entity|count32[29]~88\ = CARRY((\Inst_top_level|pwm_entity|count32\(29) & !\Inst_top_level|pwm_entity|count32[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count32\(29),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[28]~86\,
	combout => \Inst_top_level|pwm_entity|count32[29]~87_combout\,
	cout => \Inst_top_level|pwm_entity|count32[29]~88\);

-- Location: FF_X17_Y11_N27
\Inst_top_level|pwm_entity|count32[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[29]~87_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(29));

-- Location: FF_X14_Y13_N13
\Inst_top_level|pwm_entity|address_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|pwm_entity|count32\(29),
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|address_out\(5));

-- Location: LCCOMB_X11_Y13_N20
\Inst_top_level|SRAM_addr_i[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_addr_i[4]~6_combout\ = (\Inst_top_level|fstate.PAUSE~q\) # (\Inst_top_level|fstate.TEST~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|fstate.PAUSE~q\,
	datad => \Inst_top_level|fstate.TEST~q\,
	combout => \Inst_top_level|SRAM_addr_i[4]~6_combout\);

-- Location: LCCOMB_X14_Y13_N12
\Inst_top_level|SRAM_addr_i[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_addr_i[5]~17_combout\ = (\Inst_top_level|SRAM_addr_i[4]~6_combout\ & (\Inst_top_level|count_1hz|r_reg\(5))) # (!\Inst_top_level|SRAM_addr_i[4]~6_combout\ & (((\Inst_top_level|SRAM_addr_i[4]~5_combout\ & 
-- \Inst_top_level|pwm_entity|address_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_1hz|r_reg\(5),
	datab => \Inst_top_level|SRAM_addr_i[4]~5_combout\,
	datac => \Inst_top_level|pwm_entity|address_out\(5),
	datad => \Inst_top_level|SRAM_addr_i[4]~6_combout\,
	combout => \Inst_top_level|SRAM_addr_i[5]~17_combout\);

-- Location: LCCOMB_X14_Y13_N24
\Inst_top_level|SRAM_addr_i[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_addr_i[5]~18_combout\ = (\Inst_top_level|fstate.INIT~q\ & ((\Inst_top_level|SRAM_addr_i[5]~17_combout\))) # (!\Inst_top_level|fstate.INIT~q\ & (\Inst_top_level|count_60ns|r_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|fstate.INIT~q\,
	datab => \Inst_top_level|count_60ns|r_reg\(5),
	datad => \Inst_top_level|SRAM_addr_i[5]~17_combout\,
	combout => \Inst_top_level|SRAM_addr_i[5]~18_combout\);

-- Location: LCCOMB_X17_Y11_N28
\Inst_top_level|pwm_entity|count32[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[30]~89_combout\ = (\Inst_top_level|pwm_entity|count32\(30) & (!\Inst_top_level|pwm_entity|count32[29]~88\)) # (!\Inst_top_level|pwm_entity|count32\(30) & ((\Inst_top_level|pwm_entity|count32[29]~88\) # (GND)))
-- \Inst_top_level|pwm_entity|count32[30]~90\ = CARRY((!\Inst_top_level|pwm_entity|count32[29]~88\) # (!\Inst_top_level|pwm_entity|count32\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|pwm_entity|count32\(30),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count32[29]~88\,
	combout => \Inst_top_level|pwm_entity|count32[30]~89_combout\,
	cout => \Inst_top_level|pwm_entity|count32[30]~90\);

-- Location: FF_X17_Y11_N29
\Inst_top_level|pwm_entity|count32[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[30]~89_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(30));

-- Location: LCCOMB_X17_Y11_N30
\Inst_top_level|pwm_entity|count32[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count32[31]~91_combout\ = \Inst_top_level|pwm_entity|count32\(31) $ (!\Inst_top_level|pwm_entity|count32[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count32\(31),
	cin => \Inst_top_level|pwm_entity|count32[30]~90\,
	combout => \Inst_top_level|pwm_entity|count32[31]~91_combout\);

-- Location: FF_X17_Y11_N31
\Inst_top_level|pwm_entity|count32[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[31]~91_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(31));

-- Location: FF_X14_Y13_N1
\Inst_top_level|pwm_entity|address_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|pwm_entity|count32\(31),
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|address_out\(7));

-- Location: LCCOMB_X14_Y13_N0
\Inst_top_level|SRAM_addr_i[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_addr_i[7]~21_combout\ = (\Inst_top_level|SRAM_addr_i[4]~6_combout\ & (\Inst_top_level|count_1hz|r_reg\(7))) # (!\Inst_top_level|SRAM_addr_i[4]~6_combout\ & (((\Inst_top_level|SRAM_addr_i[4]~5_combout\ & 
-- \Inst_top_level|pwm_entity|address_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_1hz|r_reg\(7),
	datab => \Inst_top_level|SRAM_addr_i[4]~5_combout\,
	datac => \Inst_top_level|pwm_entity|address_out\(7),
	datad => \Inst_top_level|SRAM_addr_i[4]~6_combout\,
	combout => \Inst_top_level|SRAM_addr_i[7]~21_combout\);

-- Location: LCCOMB_X14_Y13_N22
\Inst_top_level|SRAM_addr_i[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_addr_i[7]~22_combout\ = (\Inst_top_level|fstate.INIT~q\ & ((\Inst_top_level|SRAM_addr_i[7]~21_combout\))) # (!\Inst_top_level|fstate.INIT~q\ & (\Inst_top_level|count_60ns|r_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_60ns|r_reg\(7),
	datab => \Inst_top_level|fstate.INIT~q\,
	datad => \Inst_top_level|SRAM_addr_i[7]~21_combout\,
	combout => \Inst_top_level|SRAM_addr_i[7]~22_combout\);

-- Location: FF_X13_Y13_N1
\Inst_top_level|pwm_entity|address_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|pwm_entity|count32\(30),
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|address_out\(6));

-- Location: LCCOMB_X13_Y13_N0
\Inst_top_level|SRAM_addr_i[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_addr_i[6]~19_combout\ = (\Inst_top_level|SRAM_addr_i[4]~6_combout\ & (\Inst_top_level|count_1hz|r_reg\(6))) # (!\Inst_top_level|SRAM_addr_i[4]~6_combout\ & (((\Inst_top_level|SRAM_addr_i[4]~5_combout\ & 
-- \Inst_top_level|pwm_entity|address_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_1hz|r_reg\(6),
	datab => \Inst_top_level|SRAM_addr_i[4]~5_combout\,
	datac => \Inst_top_level|pwm_entity|address_out\(6),
	datad => \Inst_top_level|SRAM_addr_i[4]~6_combout\,
	combout => \Inst_top_level|SRAM_addr_i[6]~19_combout\);

-- Location: LCCOMB_X13_Y13_N30
\Inst_top_level|SRAM_addr_i[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_addr_i[6]~20_combout\ = (\Inst_top_level|fstate.INIT~q\ & ((\Inst_top_level|SRAM_addr_i[6]~19_combout\))) # (!\Inst_top_level|fstate.INIT~q\ & (\Inst_top_level|count_60ns|r_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|fstate.INIT~q\,
	datac => \Inst_top_level|count_60ns|r_reg\(6),
	datad => \Inst_top_level|SRAM_addr_i[6]~19_combout\,
	combout => \Inst_top_level|SRAM_addr_i[6]~20_combout\);

-- Location: LCCOMB_X14_Y13_N2
\Inst_top_level|lcd_entity|second_line[2][88]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|second_line[2][88]~0_combout\ = \Inst_top_level|SRAM_addr_i[4]~16_combout\ $ (((\Inst_top_level|SRAM_addr_i[7]~22_combout\ & ((\Inst_top_level|SRAM_addr_i[5]~18_combout\) # (\Inst_top_level|SRAM_addr_i[6]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM_addr_i[4]~16_combout\,
	datab => \Inst_top_level|SRAM_addr_i[5]~18_combout\,
	datac => \Inst_top_level|SRAM_addr_i[7]~22_combout\,
	datad => \Inst_top_level|SRAM_addr_i[6]~20_combout\,
	combout => \Inst_top_level|lcd_entity|second_line[2][88]~0_combout\);

-- Location: LCCOMB_X14_Y13_N16
\Inst_top_level|lcd_entity|Mux70~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~41_combout\ = (\Inst_top_level|lcd_entity|Mux70~39_combout\ & ((\Inst_top_level|lcd_entity|Mux70~40_combout\) # ((\Inst_top_level|lcd_entity|Mux33~0_combout\ & \Inst_top_level|lcd_entity|second_line[2][88]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux33~0_combout\,
	datab => \Inst_top_level|lcd_entity|Mux70~40_combout\,
	datac => \Inst_top_level|lcd_entity|Mux70~39_combout\,
	datad => \Inst_top_level|lcd_entity|second_line[2][88]~0_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~41_combout\);

-- Location: LCCOMB_X12_Y11_N22
\Inst_top_level|lcd_entity|Mux70~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~43_combout\ = (\Inst_top_level|lcd_entity|Mux70~37_combout\ & ((\Inst_top_level|lcd_entity|Mux70~91_combout\) # (\Inst_top_level|lcd_entity|Mux70~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux70~91_combout\,
	datac => \Inst_top_level|lcd_entity|Mux70~37_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~41_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~43_combout\);

-- Location: LCCOMB_X18_Y12_N30
\Inst_top_level|pwm_entity|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|Equal0~0_combout\ = (\Inst_top_level|selectPWM\(0) & !\Inst_top_level|selectPWM\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|selectPWM\(0),
	datad => \Inst_top_level|selectPWM\(1),
	combout => \Inst_top_level|pwm_entity|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y11_N28
\Inst_top_level|lcd_entity|Mux70~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~86_combout\ = (\Inst_top_level|selectMode\(1) & (\Inst_top_level|selectMode\(0) & (\Inst_top_level|pwm_entity|Equal0~0_combout\ & !\Inst_top_level|lcd_entity|byteSel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(1),
	datab => \Inst_top_level|selectMode\(0),
	datac => \Inst_top_level|pwm_entity|Equal0~0_combout\,
	datad => \Inst_top_level|lcd_entity|byteSel\(3),
	combout => \Inst_top_level|lcd_entity|Mux70~86_combout\);

-- Location: LCCOMB_X13_Y11_N4
\Inst_top_level|lcd_entity|Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux64~0_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(1) & (!\Inst_top_level|lcd_entity|byteSel\(2) & !\Inst_top_level|lcd_entity|byteSel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(1),
	datac => \Inst_top_level|lcd_entity|byteSel\(2),
	datad => \Inst_top_level|lcd_entity|byteSel\(0),
	combout => \Inst_top_level|lcd_entity|Mux64~0_combout\);

-- Location: FF_X12_Y13_N1
\Inst_top_level|pwm_entity|address_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|pwm_entity|count32\(26),
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|address_out\(2));

-- Location: LCCOMB_X12_Y13_N0
\Inst_top_level|SRAM_addr_i[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_addr_i[2]~11_combout\ = (\Inst_top_level|SRAM_addr_i[4]~6_combout\ & (\Inst_top_level|count_1hz|r_reg\(2))) # (!\Inst_top_level|SRAM_addr_i[4]~6_combout\ & (((\Inst_top_level|pwm_entity|address_out\(2) & 
-- \Inst_top_level|SRAM_addr_i[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_1hz|r_reg\(2),
	datab => \Inst_top_level|SRAM_addr_i[4]~6_combout\,
	datac => \Inst_top_level|pwm_entity|address_out\(2),
	datad => \Inst_top_level|SRAM_addr_i[4]~5_combout\,
	combout => \Inst_top_level|SRAM_addr_i[2]~11_combout\);

-- Location: LCCOMB_X12_Y13_N14
\Inst_top_level|SRAM_addr_i[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_addr_i[2]~12_combout\ = (\Inst_top_level|fstate.INIT~q\ & ((\Inst_top_level|SRAM_addr_i[2]~11_combout\))) # (!\Inst_top_level|fstate.INIT~q\ & (\Inst_top_level|count_60ns|r_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|fstate.INIT~q\,
	datac => \Inst_top_level|count_60ns|r_reg\(2),
	datad => \Inst_top_level|SRAM_addr_i[2]~11_combout\,
	combout => \Inst_top_level|SRAM_addr_i[2]~12_combout\);

-- Location: FF_X12_Y13_N25
\Inst_top_level|pwm_entity|address_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|pwm_entity|count32\(25),
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|address_out\(1));

-- Location: LCCOMB_X12_Y13_N24
\Inst_top_level|SRAM_addr_i[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_addr_i[1]~9_combout\ = (\Inst_top_level|SRAM_addr_i[4]~6_combout\ & (\Inst_top_level|count_1hz|r_reg\(1))) # (!\Inst_top_level|SRAM_addr_i[4]~6_combout\ & (((\Inst_top_level|pwm_entity|address_out\(1) & 
-- \Inst_top_level|SRAM_addr_i[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_1hz|r_reg\(1),
	datab => \Inst_top_level|SRAM_addr_i[4]~6_combout\,
	datac => \Inst_top_level|pwm_entity|address_out\(1),
	datad => \Inst_top_level|SRAM_addr_i[4]~5_combout\,
	combout => \Inst_top_level|SRAM_addr_i[1]~9_combout\);

-- Location: LCCOMB_X12_Y13_N30
\Inst_top_level|SRAM_addr_i[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_addr_i[1]~10_combout\ = (\Inst_top_level|fstate.INIT~q\ & ((\Inst_top_level|SRAM_addr_i[1]~9_combout\))) # (!\Inst_top_level|fstate.INIT~q\ & (\Inst_top_level|count_60ns|r_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|fstate.INIT~q\,
	datac => \Inst_top_level|count_60ns|r_reg\(1),
	datad => \Inst_top_level|SRAM_addr_i[1]~9_combout\,
	combout => \Inst_top_level|SRAM_addr_i[1]~10_combout\);

-- Location: FF_X12_Y13_N21
\Inst_top_level|pwm_entity|address_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|pwm_entity|count32\(24),
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|address_out\(0));

-- Location: LCCOMB_X12_Y13_N20
\Inst_top_level|SRAM_addr_i[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_addr_i[0]~7_combout\ = (\Inst_top_level|SRAM_addr_i[4]~6_combout\ & (\Inst_top_level|count_1hz|r_reg\(0))) # (!\Inst_top_level|SRAM_addr_i[4]~6_combout\ & (((\Inst_top_level|pwm_entity|address_out\(0) & 
-- \Inst_top_level|SRAM_addr_i[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_1hz|r_reg\(0),
	datab => \Inst_top_level|SRAM_addr_i[4]~6_combout\,
	datac => \Inst_top_level|pwm_entity|address_out\(0),
	datad => \Inst_top_level|SRAM_addr_i[4]~5_combout\,
	combout => \Inst_top_level|SRAM_addr_i[0]~7_combout\);

-- Location: LCCOMB_X12_Y13_N2
\Inst_top_level|SRAM_addr_i[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_addr_i[0]~8_combout\ = (\Inst_top_level|fstate.INIT~q\ & ((\Inst_top_level|SRAM_addr_i[0]~7_combout\))) # (!\Inst_top_level|fstate.INIT~q\ & (\Inst_top_level|count_60ns|r_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_60ns|r_reg\(0),
	datab => \Inst_top_level|fstate.INIT~q\,
	datad => \Inst_top_level|SRAM_addr_i[0]~7_combout\,
	combout => \Inst_top_level|SRAM_addr_i[0]~8_combout\);

-- Location: LCCOMB_X12_Y13_N10
\Inst_top_level|lcd_entity|second_line[2][80]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|second_line[2][80]~5_combout\ = \Inst_top_level|SRAM_addr_i[0]~8_combout\ $ (((\Inst_top_level|SRAM_addr_i[3]~14_combout\ & ((\Inst_top_level|SRAM_addr_i[2]~12_combout\) # (\Inst_top_level|SRAM_addr_i[1]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM_addr_i[3]~14_combout\,
	datab => \Inst_top_level|SRAM_addr_i[2]~12_combout\,
	datac => \Inst_top_level|SRAM_addr_i[1]~10_combout\,
	datad => \Inst_top_level|SRAM_addr_i[0]~8_combout\,
	combout => \Inst_top_level|lcd_entity|second_line[2][80]~5_combout\);

-- Location: LCCOMB_X12_Y13_N4
\Inst_top_level|lcd_entity|Mux70~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~45_combout\ = (\Inst_top_level|lcd_entity|Mux33~0_combout\ & ((\Inst_top_level|lcd_entity|byteSel\(3) & (\Inst_top_level|lcd_entity|second_line[2][16]~4_combout\)) # (!\Inst_top_level|lcd_entity|byteSel\(3) & 
-- ((\Inst_top_level|lcd_entity|second_line[2][80]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|second_line[2][16]~4_combout\,
	datab => \Inst_top_level|lcd_entity|byteSel\(3),
	datac => \Inst_top_level|lcd_entity|Mux33~0_combout\,
	datad => \Inst_top_level|lcd_entity|second_line[2][80]~5_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~45_combout\);

-- Location: LCCOMB_X12_Y11_N8
\Inst_top_level|lcd_entity|Mux70~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~46_combout\ = (\Inst_top_level|lcd_entity|Mux64~0_combout\ & ((\Inst_top_level|lcd_entity|Mux70~86_combout\) # (\Inst_top_level|lcd_entity|Mux70~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|lcd_entity|Mux70~86_combout\,
	datac => \Inst_top_level|lcd_entity|Mux64~0_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~45_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~46_combout\);

-- Location: IOIBUF_X0_Y22_N22
\SRAM_DQ[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(9),
	o => \SRAM_DQ[9]~input_o\);

-- Location: FF_X9_Y13_N1
\Inst_top_level|SRAM|fstate.read2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|SRAM|fstate.read1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|fstate.read2~q\);

-- Location: LCCOMB_X9_Y13_N28
\Inst_top_level|SRAM|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM|Selector2~0_combout\ = (!\Inst_top_level|SRAM|fstate.write2~q\ & (!\Inst_top_level|SRAM|fstate.read2~q\ & ((\Inst_top_level|SRAM|fstate.ready~q\) # (\Inst_top_level|en_60ns|clk_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|fstate.write2~q\,
	datab => \Inst_top_level|SRAM|fstate.read2~q\,
	datac => \Inst_top_level|SRAM|fstate.ready~q\,
	datad => \Inst_top_level|en_60ns|clk_en~q\,
	combout => \Inst_top_level|SRAM|Selector2~0_combout\);

-- Location: FF_X9_Y13_N29
\Inst_top_level|SRAM|fstate.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|SRAM|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|fstate.ready~q\);

-- Location: LCCOMB_X9_Y13_N20
\Inst_top_level|SRAM|fstate~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM|fstate~12_combout\ = (\Inst_top_level|en_60ns|clk_en~q\ & (!\Inst_top_level|SRAM|fstate.ready~q\ & \Inst_top_level|SRAM_RW~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|en_60ns|clk_en~q\,
	datab => \Inst_top_level|SRAM|fstate.ready~q\,
	datad => \Inst_top_level|SRAM_RW~q\,
	combout => \Inst_top_level|SRAM|fstate~12_combout\);

-- Location: LCCOMB_X9_Y13_N22
\Inst_top_level|SRAM|fstate.read1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM|fstate.read1~feeder_combout\ = \Inst_top_level|SRAM|fstate~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|SRAM|fstate~12_combout\,
	combout => \Inst_top_level|SRAM|fstate.read1~feeder_combout\);

-- Location: FF_X9_Y13_N23
\Inst_top_level|SRAM|fstate.read1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|SRAM|fstate.read1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|fstate.read1~q\);

-- Location: FF_X16_Y14_N21
\Inst_top_level|SRAM|data_o[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SRAM_DQ[9]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|SRAM|fstate.read1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|data_o\(9));

-- Location: IOIBUF_X0_Y21_N15
\SRAM_DQ[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(8),
	o => \SRAM_DQ[8]~input_o\);

-- Location: FF_X16_Y14_N15
\Inst_top_level|SRAM|data_o[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SRAM_DQ[8]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|SRAM|fstate.read1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|data_o\(8));

-- Location: IOIBUF_X0_Y16_N15
\SRAM_DQ[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(11),
	o => \SRAM_DQ[11]~input_o\);

-- Location: FF_X16_Y14_N25
\Inst_top_level|SRAM|data_o[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SRAM_DQ[11]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|SRAM|fstate.read1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|data_o\(11));

-- Location: LCCOMB_X16_Y14_N14
\Inst_top_level|lcd_entity|second_line[2][32]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|second_line[2][32]~3_combout\ = \Inst_top_level|SRAM|data_o\(8) $ (((\Inst_top_level|SRAM|data_o\(11) & ((\Inst_top_level|SRAM|data_o\(10)) # (\Inst_top_level|SRAM|data_o\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(10),
	datab => \Inst_top_level|SRAM|data_o\(9),
	datac => \Inst_top_level|SRAM|data_o\(8),
	datad => \Inst_top_level|SRAM|data_o\(11),
	combout => \Inst_top_level|lcd_entity|second_line[2][32]~3_combout\);

-- Location: IOIBUF_X20_Y0_N8
\SRAM_DQ[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(7),
	o => \SRAM_DQ[7]~input_o\);

-- Location: FF_X16_Y14_N5
\Inst_top_level|SRAM|data_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SRAM_DQ[7]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|SRAM|fstate.read1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|data_o\(7));

-- Location: IOIBUF_X7_Y0_N15
\SRAM_DQ[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(4),
	o => \SRAM_DQ[4]~input_o\);

-- Location: FF_X16_Y14_N3
\Inst_top_level|SRAM|data_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SRAM_DQ[4]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|SRAM|fstate.read1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|data_o\(4));

-- Location: IOIBUF_X11_Y0_N15
\SRAM_DQ[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(6),
	o => \SRAM_DQ[6]~input_o\);

-- Location: FF_X16_Y14_N19
\Inst_top_level|SRAM|data_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SRAM_DQ[6]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|SRAM|fstate.read1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|data_o\(6));

-- Location: LCCOMB_X16_Y14_N2
\Inst_top_level|lcd_entity|second_line[2][24]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|second_line[2][24]~1_combout\ = \Inst_top_level|SRAM|data_o\(4) $ (((\Inst_top_level|SRAM|data_o\(7) & ((\Inst_top_level|SRAM|data_o\(5)) # (\Inst_top_level|SRAM|data_o\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(5),
	datab => \Inst_top_level|SRAM|data_o\(7),
	datac => \Inst_top_level|SRAM|data_o\(4),
	datad => \Inst_top_level|SRAM|data_o\(6),
	combout => \Inst_top_level|lcd_entity|second_line[2][24]~1_combout\);

-- Location: LCCOMB_X16_Y14_N10
\Inst_top_level|lcd_entity|Mux70~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~44_combout\ = (\Inst_top_level|lcd_entity|byteSel\(0) & ((\Inst_top_level|lcd_entity|byteSel\(1) & ((\Inst_top_level|lcd_entity|second_line[2][24]~1_combout\))) # (!\Inst_top_level|lcd_entity|byteSel\(1) & 
-- (\Inst_top_level|lcd_entity|second_line[2][40]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|second_line[2][40]~2_combout\,
	datab => \Inst_top_level|lcd_entity|second_line[2][24]~1_combout\,
	datac => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => \Inst_top_level|lcd_entity|byteSel\(1),
	combout => \Inst_top_level|lcd_entity|Mux70~44_combout\);

-- Location: LCCOMB_X16_Y14_N22
\Inst_top_level|lcd_entity|Mux70~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~85_combout\ = (\Inst_top_level|lcd_entity|Mux70~44_combout\) # ((\Inst_top_level|lcd_entity|byteSel\(1) & (\Inst_top_level|lcd_entity|second_line[2][32]~3_combout\ & !\Inst_top_level|lcd_entity|byteSel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(1),
	datab => \Inst_top_level|lcd_entity|second_line[2][32]~3_combout\,
	datac => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => \Inst_top_level|lcd_entity|Mux70~44_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~85_combout\);

-- Location: LCCOMB_X12_Y11_N2
\Inst_top_level|lcd_entity|Mux70~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~47_combout\ = (\Inst_top_level|lcd_entity|Mux70~46_combout\) # ((\Inst_top_level|lcd_entity|Mux33~0_combout\ & (\Inst_top_level|lcd_entity|byteSel\(2) & \Inst_top_level|lcd_entity|Mux70~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux33~0_combout\,
	datab => \Inst_top_level|lcd_entity|byteSel\(2),
	datac => \Inst_top_level|lcd_entity|Mux70~46_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~85_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~47_combout\);

-- Location: LCCOMB_X12_Y11_N24
\Inst_top_level|lcd_entity|Mux70~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~48_combout\ = (\Inst_top_level|lcd_entity|byteSel\(5) & (\Inst_top_level|lcd_entity|Mux70~38_combout\ & ((\Inst_top_level|lcd_entity|Mux70~47_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(5) & 
-- ((\Inst_top_level|lcd_entity|Mux70~38_combout\) # ((\Inst_top_level|lcd_entity|Mux70~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(5),
	datab => \Inst_top_level|lcd_entity|Mux70~38_combout\,
	datac => \Inst_top_level|lcd_entity|Mux70~43_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~47_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~48_combout\);

-- Location: FF_X12_Y11_N25
\Inst_top_level|lcd_entity|data_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|Mux70~48_combout\,
	ena => \Inst_top_level|lcd_entity|ALT_INV_state.start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|data_o\(0));

-- Location: LCCOMB_X14_Y12_N4
\Inst_top_level|lcd_entity|Mux69~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux69~15_combout\ = (\Inst_top_level|lcd_entity|Mux70~34_combout\ & ((\Inst_top_level|lcd_entity|second_line[2][33]~7_combout\ & ((\Inst_top_level|selectMode\(0)) # (\Inst_top_level|selectMode\(1)))) # 
-- (!\Inst_top_level|lcd_entity|second_line[2][33]~7_combout\ & (\Inst_top_level|selectMode\(0) & \Inst_top_level|selectMode\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|second_line[2][33]~7_combout\,
	datab => \Inst_top_level|selectMode\(0),
	datac => \Inst_top_level|selectMode\(1),
	datad => \Inst_top_level|lcd_entity|Mux70~34_combout\,
	combout => \Inst_top_level|lcd_entity|Mux69~15_combout\);

-- Location: LCCOMB_X12_Y12_N22
\Inst_top_level|lcd_entity|Mux70~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~51_combout\ = (\Inst_top_level|lcd_entity|byteSel\(0) & (\Inst_top_level|selectMode\(1) $ (\Inst_top_level|selectMode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|selectMode\(1),
	datac => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => \Inst_top_level|selectMode\(0),
	combout => \Inst_top_level|lcd_entity|Mux70~51_combout\);

-- Location: IOIBUF_X0_Y7_N8
\SRAM_DQ[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(12),
	o => \SRAM_DQ[12]~input_o\);

-- Location: FF_X17_Y14_N11
\Inst_top_level|SRAM|data_o[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SRAM_DQ[12]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|SRAM|fstate.read1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|data_o\(12));

-- Location: IOIBUF_X7_Y0_N22
\SRAM_DQ[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(14),
	o => \SRAM_DQ[14]~input_o\);

-- Location: FF_X17_Y14_N19
\Inst_top_level|SRAM|data_o[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SRAM_DQ[14]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|SRAM|fstate.read1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|data_o\(14));

-- Location: IOIBUF_X3_Y0_N22
\SRAM_DQ[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(13),
	o => \SRAM_DQ[13]~input_o\);

-- Location: FF_X17_Y14_N9
\Inst_top_level|SRAM|data_o[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SRAM_DQ[13]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|SRAM|fstate.read1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|data_o\(13));

-- Location: LCCOMB_X14_Y14_N0
\Inst_top_level|lcd_entity|second_line[2][41]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|second_line[2][41]~9_combout\ = (\Inst_top_level|SRAM|data_o\(15) & ((\Inst_top_level|SRAM|data_o\(12) & ((\Inst_top_level|SRAM|data_o\(13)))) # (!\Inst_top_level|SRAM|data_o\(12) & (\Inst_top_level|SRAM|data_o\(14) & 
-- !\Inst_top_level|SRAM|data_o\(13))))) # (!\Inst_top_level|SRAM|data_o\(15) & (((\Inst_top_level|SRAM|data_o\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(15),
	datab => \Inst_top_level|SRAM|data_o\(12),
	datac => \Inst_top_level|SRAM|data_o\(14),
	datad => \Inst_top_level|SRAM|data_o\(13),
	combout => \Inst_top_level|lcd_entity|second_line[2][41]~9_combout\);

-- Location: LCCOMB_X16_Y14_N18
\Inst_top_level|lcd_entity|second_line[2][25]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|second_line[2][25]~8_combout\ = (\Inst_top_level|SRAM|data_o\(5) & (((\Inst_top_level|SRAM|data_o\(4))) # (!\Inst_top_level|SRAM|data_o\(7)))) # (!\Inst_top_level|SRAM|data_o\(5) & (\Inst_top_level|SRAM|data_o\(7) & 
-- (\Inst_top_level|SRAM|data_o\(6) & !\Inst_top_level|SRAM|data_o\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(5),
	datab => \Inst_top_level|SRAM|data_o\(7),
	datac => \Inst_top_level|SRAM|data_o\(6),
	datad => \Inst_top_level|SRAM|data_o\(4),
	combout => \Inst_top_level|lcd_entity|second_line[2][25]~8_combout\);

-- Location: LCCOMB_X14_Y14_N6
\Inst_top_level|lcd_entity|Mux69~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux69~6_combout\ = (\Inst_top_level|lcd_entity|byteSel\(1) & ((\Inst_top_level|lcd_entity|second_line[2][25]~8_combout\))) # (!\Inst_top_level|lcd_entity|byteSel\(1) & (\Inst_top_level|lcd_entity|second_line[2][41]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|lcd_entity|second_line[2][41]~9_combout\,
	datac => \Inst_top_level|lcd_entity|byteSel\(1),
	datad => \Inst_top_level|lcd_entity|second_line[2][25]~8_combout\,
	combout => \Inst_top_level|lcd_entity|Mux69~6_combout\);

-- Location: LCCOMB_X14_Y12_N8
\Inst_top_level|lcd_entity|Mux69~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux69~7_combout\ = (\Inst_top_level|lcd_entity|Mux69~15_combout\) # ((\Inst_top_level|lcd_entity|Mux70~51_combout\ & \Inst_top_level|lcd_entity|Mux69~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|lcd_entity|Mux69~15_combout\,
	datac => \Inst_top_level|lcd_entity|Mux70~51_combout\,
	datad => \Inst_top_level|lcd_entity|Mux69~6_combout\,
	combout => \Inst_top_level|lcd_entity|Mux69~7_combout\);

-- Location: LCCOMB_X13_Y11_N24
\Inst_top_level|lcd_entity|Mux70~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~52_combout\ = (\Inst_top_level|lcd_entity|byteSel\(3) & (\Inst_top_level|selectMode\(0) $ (\Inst_top_level|selectMode\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|selectMode\(0),
	datac => \Inst_top_level|selectMode\(1),
	datad => \Inst_top_level|lcd_entity|byteSel\(3),
	combout => \Inst_top_level|lcd_entity|Mux70~52_combout\);

-- Location: IOIBUF_X5_Y0_N8
\SRAM_DQ[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(0),
	o => \SRAM_DQ[0]~input_o\);

-- Location: FF_X17_Y14_N27
\Inst_top_level|SRAM|data_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SRAM_DQ[0]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|SRAM|fstate.read1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|data_o\(0));

-- Location: IOIBUF_X9_Y0_N22
\SRAM_DQ[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(2),
	o => \SRAM_DQ[2]~input_o\);

-- Location: FF_X17_Y14_N31
\Inst_top_level|SRAM|data_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SRAM_DQ[2]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|SRAM|fstate.read1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|data_o\(2));

-- Location: IOIBUF_X1_Y0_N1
\SRAM_DQ[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(1),
	o => \SRAM_DQ[1]~input_o\);

-- Location: FF_X17_Y14_N25
\Inst_top_level|SRAM|data_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SRAM_DQ[1]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|SRAM|fstate.read1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|data_o\(1));

-- Location: LCCOMB_X16_Y14_N28
\Inst_top_level|lcd_entity|Mux69~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux69~9_combout\ = (\Inst_top_level|SRAM|data_o\(3) & ((\Inst_top_level|SRAM|data_o\(0) & ((\Inst_top_level|SRAM|data_o\(1)))) # (!\Inst_top_level|SRAM|data_o\(0) & (\Inst_top_level|SRAM|data_o\(2) & 
-- !\Inst_top_level|SRAM|data_o\(1))))) # (!\Inst_top_level|SRAM|data_o\(3) & (((\Inst_top_level|SRAM|data_o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(3),
	datab => \Inst_top_level|SRAM|data_o\(0),
	datac => \Inst_top_level|SRAM|data_o\(2),
	datad => \Inst_top_level|SRAM|data_o\(1),
	combout => \Inst_top_level|lcd_entity|Mux69~9_combout\);

-- Location: LCCOMB_X14_Y12_N28
\Inst_top_level|lcd_entity|Mux69~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux69~10_combout\ = (\Inst_top_level|selectMode\(0) & (!\Inst_top_level|selectPWM\(1) & (\Inst_top_level|selectMode\(1) & !\Inst_top_level|lcd_entity|byteSel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(0),
	datab => \Inst_top_level|selectPWM\(1),
	datac => \Inst_top_level|selectMode\(1),
	datad => \Inst_top_level|lcd_entity|byteSel\(3),
	combout => \Inst_top_level|lcd_entity|Mux69~10_combout\);

-- Location: LCCOMB_X14_Y12_N2
\Inst_top_level|lcd_entity|Mux69~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux69~11_combout\ = (\Inst_top_level|lcd_entity|byteSel\(0) & (((\Inst_top_level|lcd_entity|Mux69~10_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(0) & (\Inst_top_level|lcd_entity|Mux70~52_combout\ & 
-- (\Inst_top_level|lcd_entity|Mux69~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(0),
	datab => \Inst_top_level|lcd_entity|Mux70~52_combout\,
	datac => \Inst_top_level|lcd_entity|Mux69~9_combout\,
	datad => \Inst_top_level|lcd_entity|Mux69~10_combout\,
	combout => \Inst_top_level|lcd_entity|Mux69~11_combout\);

-- Location: LCCOMB_X14_Y12_N14
\Inst_top_level|lcd_entity|Mux69~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux69~8_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(3) & (\Inst_top_level|SRAM_addr_i[1]~10_combout\ $ (((\Inst_top_level|SRAM_addr_i[3]~14_combout\ & !\Inst_top_level|SRAM_addr_i[0]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM_addr_i[3]~14_combout\,
	datab => \Inst_top_level|lcd_entity|byteSel\(3),
	datac => \Inst_top_level|SRAM_addr_i[1]~10_combout\,
	datad => \Inst_top_level|SRAM_addr_i[0]~8_combout\,
	combout => \Inst_top_level|lcd_entity|Mux69~8_combout\);

-- Location: LCCOMB_X14_Y12_N6
\Inst_top_level|lcd_entity|Mux69~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux69~16_combout\ = (\Inst_top_level|SRAM_addr_i[1]~10_combout\ & (\Inst_top_level|selectMode\(0) $ ((\Inst_top_level|selectMode\(1))))) # (!\Inst_top_level|SRAM_addr_i[1]~10_combout\ & 
-- (\Inst_top_level|SRAM_addr_i[2]~12_combout\ & (\Inst_top_level|selectMode\(0) $ (\Inst_top_level|selectMode\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(0),
	datab => \Inst_top_level|selectMode\(1),
	datac => \Inst_top_level|SRAM_addr_i[1]~10_combout\,
	datad => \Inst_top_level|SRAM_addr_i[2]~12_combout\,
	combout => \Inst_top_level|lcd_entity|Mux69~16_combout\);

-- Location: LCCOMB_X14_Y12_N12
\Inst_top_level|lcd_entity|Mux69~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux69~12_combout\ = (\Inst_top_level|lcd_entity|Mux69~11_combout\) # ((!\Inst_top_level|lcd_entity|byteSel\(0) & (\Inst_top_level|lcd_entity|Mux69~8_combout\ & \Inst_top_level|lcd_entity|Mux69~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(0),
	datab => \Inst_top_level|lcd_entity|Mux69~11_combout\,
	datac => \Inst_top_level|lcd_entity|Mux69~8_combout\,
	datad => \Inst_top_level|lcd_entity|Mux69~16_combout\,
	combout => \Inst_top_level|lcd_entity|Mux69~12_combout\);

-- Location: LCCOMB_X14_Y12_N10
\Inst_top_level|lcd_entity|Mux69~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux69~13_combout\ = (\Inst_top_level|lcd_entity|byteSel\(2) & (((\Inst_top_level|lcd_entity|Mux69~7_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(2) & (!\Inst_top_level|lcd_entity|byteSel\(1) & 
-- ((\Inst_top_level|lcd_entity|Mux69~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(2),
	datab => \Inst_top_level|lcd_entity|byteSel\(1),
	datac => \Inst_top_level|lcd_entity|Mux69~7_combout\,
	datad => \Inst_top_level|lcd_entity|Mux69~12_combout\,
	combout => \Inst_top_level|lcd_entity|Mux69~13_combout\);

-- Location: LCCOMB_X13_Y11_N30
\Inst_top_level|lcd_entity|Mux70~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~49_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(3) & (\Inst_top_level|lcd_entity|byteSel\(1) $ (!\Inst_top_level|lcd_entity|byteSel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(1),
	datab => \Inst_top_level|lcd_entity|byteSel\(3),
	datad => \Inst_top_level|lcd_entity|byteSel\(0),
	combout => \Inst_top_level|lcd_entity|Mux70~49_combout\);

-- Location: LCCOMB_X12_Y12_N4
\Inst_top_level|lcd_entity|Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~0_combout\ = (\Inst_top_level|lcd_entity|Mux70~49_combout\ & (\Inst_top_level|lcd_entity|byteSel\(1) $ (((!\Inst_top_level|selectMode\(0) & \Inst_top_level|selectMode\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(0),
	datab => \Inst_top_level|selectMode\(1),
	datac => \Inst_top_level|lcd_entity|byteSel\(1),
	datad => \Inst_top_level|lcd_entity|Mux70~49_combout\,
	combout => \Inst_top_level|lcd_entity|Mux68~0_combout\);

-- Location: LCCOMB_X12_Y13_N26
\Inst_top_level|lcd_entity|Mux68~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~3_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(1) & (\Inst_top_level|lcd_entity|byteSel\(3) & !\Inst_top_level|lcd_entity|byteSel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(1),
	datab => \Inst_top_level|lcd_entity|byteSel\(3),
	datad => \Inst_top_level|lcd_entity|byteSel\(0),
	combout => \Inst_top_level|lcd_entity|Mux68~3_combout\);

-- Location: LCCOMB_X12_Y12_N6
\Inst_top_level|lcd_entity|Mux68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~1_combout\ = (\Inst_top_level|selectMode\(0) & (((\Inst_top_level|lcd_entity|byteSel\(0) & \Inst_top_level|lcd_entity|byteSel\(1))))) # (!\Inst_top_level|selectMode\(0) & (!\Inst_top_level|selectMode\(1) & 
-- (!\Inst_top_level|lcd_entity|byteSel\(0) & !\Inst_top_level|lcd_entity|byteSel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(0),
	datab => \Inst_top_level|selectMode\(1),
	datac => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => \Inst_top_level|lcd_entity|byteSel\(1),
	combout => \Inst_top_level|lcd_entity|Mux68~1_combout\);

-- Location: LCCOMB_X12_Y12_N24
\Inst_top_level|lcd_entity|Mux68~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~2_combout\ = (\Inst_top_level|lcd_entity|byteSel\(3) & \Inst_top_level|lcd_entity|Mux68~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|lcd_entity|byteSel\(3),
	datad => \Inst_top_level|lcd_entity|Mux68~1_combout\,
	combout => \Inst_top_level|lcd_entity|Mux68~2_combout\);

-- Location: LCCOMB_X13_Y12_N30
\Inst_top_level|lcd_entity|Mux69~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux69~4_combout\ = (\Inst_top_level|lcd_entity|byteSel\(4) & (\Inst_top_level|lcd_entity|byteSel\(2))) # (!\Inst_top_level|lcd_entity|byteSel\(4) & ((\Inst_top_level|lcd_entity|byteSel\(2) & 
-- ((\Inst_top_level|lcd_entity|Mux68~2_combout\))) # (!\Inst_top_level|lcd_entity|byteSel\(2) & (\Inst_top_level|lcd_entity|Mux68~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(4),
	datab => \Inst_top_level|lcd_entity|byteSel\(2),
	datac => \Inst_top_level|lcd_entity|Mux68~3_combout\,
	datad => \Inst_top_level|lcd_entity|Mux68~2_combout\,
	combout => \Inst_top_level|lcd_entity|Mux69~4_combout\);

-- Location: LCCOMB_X13_Y14_N28
\Inst_top_level|lcd_entity|Mux68~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~6_combout\ = \Inst_top_level|lcd_entity|byteSel\(1) $ (\Inst_top_level|lcd_entity|byteSel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|lcd_entity|byteSel\(1),
	datad => \Inst_top_level|lcd_entity|byteSel\(0),
	combout => \Inst_top_level|lcd_entity|Mux68~6_combout\);

-- Location: LCCOMB_X10_Y13_N12
\Inst_top_level|lcd_entity|Mux70~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~50_combout\ = (\Inst_top_level|selectMode\(1)) # ((\Inst_top_level|selectMode\(0)) # (\Inst_top_level|lcd_entity|byteSel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|selectMode\(1),
	datac => \Inst_top_level|selectMode\(0),
	datad => \Inst_top_level|lcd_entity|byteSel\(3),
	combout => \Inst_top_level|lcd_entity|Mux70~50_combout\);

-- Location: LCCOMB_X12_Y12_N18
\Inst_top_level|lcd_entity|Mux68~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~4_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(3) & (\Inst_top_level|selectMode\(1) & (!\Inst_top_level|selectMode\(0) & !\Inst_top_level|lcd_entity|byteSel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(3),
	datab => \Inst_top_level|selectMode\(1),
	datac => \Inst_top_level|selectMode\(0),
	datad => \Inst_top_level|lcd_entity|byteSel\(1),
	combout => \Inst_top_level|lcd_entity|Mux68~4_combout\);

-- Location: LCCOMB_X14_Y11_N0
\Inst_top_level|lcd_entity|Mux70~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~36_combout\ = (\Inst_top_level|lcd_entity|byteSel\(3) & \Inst_top_level|lcd_entity|byteSel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|lcd_entity|byteSel\(3),
	datad => \Inst_top_level|lcd_entity|byteSel\(1),
	combout => \Inst_top_level|lcd_entity|Mux70~36_combout\);

-- Location: FF_X14_Y13_N21
\Inst_top_level|pwm_entity|address_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|pwm_entity|count32\(28),
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|address_out\(4));

-- Location: LCCOMB_X14_Y13_N20
\Inst_top_level|SRAM_addr_i[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_addr_i[4]~15_combout\ = (\Inst_top_level|SRAM_addr_i[4]~6_combout\ & (\Inst_top_level|count_1hz|r_reg\(4))) # (!\Inst_top_level|SRAM_addr_i[4]~6_combout\ & (((\Inst_top_level|SRAM_addr_i[4]~5_combout\ & 
-- \Inst_top_level|pwm_entity|address_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_1hz|r_reg\(4),
	datab => \Inst_top_level|SRAM_addr_i[4]~5_combout\,
	datac => \Inst_top_level|pwm_entity|address_out\(4),
	datad => \Inst_top_level|SRAM_addr_i[4]~6_combout\,
	combout => \Inst_top_level|SRAM_addr_i[4]~15_combout\);

-- Location: LCCOMB_X14_Y13_N30
\Inst_top_level|SRAM_addr_i[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_addr_i[4]~16_combout\ = (\Inst_top_level|fstate.INIT~q\ & ((\Inst_top_level|SRAM_addr_i[4]~15_combout\))) # (!\Inst_top_level|fstate.INIT~q\ & (\Inst_top_level|count_60ns|r_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|fstate.INIT~q\,
	datab => \Inst_top_level|count_60ns|r_reg\(4),
	datad => \Inst_top_level|SRAM_addr_i[4]~15_combout\,
	combout => \Inst_top_level|SRAM_addr_i[4]~16_combout\);

-- Location: LCCOMB_X13_Y12_N24
\Inst_top_level|lcd_entity|second_line[2][89]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|second_line[2][89]~6_combout\ = (\Inst_top_level|SRAM_addr_i[4]~16_combout\ & (((\Inst_top_level|SRAM_addr_i[5]~18_combout\)))) # (!\Inst_top_level|SRAM_addr_i[4]~16_combout\ & ((\Inst_top_level|SRAM_addr_i[5]~18_combout\ & 
-- ((!\Inst_top_level|SRAM_addr_i[7]~22_combout\))) # (!\Inst_top_level|SRAM_addr_i[5]~18_combout\ & (\Inst_top_level|SRAM_addr_i[6]~20_combout\ & \Inst_top_level|SRAM_addr_i[7]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM_addr_i[6]~20_combout\,
	datab => \Inst_top_level|SRAM_addr_i[4]~16_combout\,
	datac => \Inst_top_level|SRAM_addr_i[5]~18_combout\,
	datad => \Inst_top_level|SRAM_addr_i[7]~22_combout\,
	combout => \Inst_top_level|lcd_entity|second_line[2][89]~6_combout\);

-- Location: LCCOMB_X13_Y12_N18
\Inst_top_level|lcd_entity|Mux68~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~5_combout\ = (\Inst_top_level|lcd_entity|Mux68~4_combout\) # ((\Inst_top_level|lcd_entity|Mux33~0_combout\ & (\Inst_top_level|lcd_entity|Mux70~36_combout\ & \Inst_top_level|lcd_entity|second_line[2][89]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux33~0_combout\,
	datab => \Inst_top_level|lcd_entity|Mux68~4_combout\,
	datac => \Inst_top_level|lcd_entity|Mux70~36_combout\,
	datad => \Inst_top_level|lcd_entity|second_line[2][89]~6_combout\,
	combout => \Inst_top_level|lcd_entity|Mux68~5_combout\);

-- Location: LCCOMB_X13_Y12_N20
\Inst_top_level|lcd_entity|Mux68~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~7_combout\ = (\Inst_top_level|lcd_entity|Mux66~13_combout\ & (!\Inst_top_level|lcd_entity|Mux68~6_combout\ & ((\Inst_top_level|lcd_entity|Mux68~5_combout\)))) # (!\Inst_top_level|lcd_entity|Mux66~13_combout\ & 
-- (((!\Inst_top_level|lcd_entity|Mux68~6_combout\ & \Inst_top_level|lcd_entity|Mux68~5_combout\)) # (!\Inst_top_level|lcd_entity|Mux70~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux66~13_combout\,
	datab => \Inst_top_level|lcd_entity|Mux68~6_combout\,
	datac => \Inst_top_level|lcd_entity|Mux70~50_combout\,
	datad => \Inst_top_level|lcd_entity|Mux68~5_combout\,
	combout => \Inst_top_level|lcd_entity|Mux68~7_combout\);

-- Location: LCCOMB_X13_Y12_N2
\Inst_top_level|lcd_entity|Mux69~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux69~5_combout\ = (\Inst_top_level|lcd_entity|byteSel\(4) & ((\Inst_top_level|lcd_entity|Mux69~4_combout\ & ((\Inst_top_level|lcd_entity|Mux68~7_combout\))) # (!\Inst_top_level|lcd_entity|Mux69~4_combout\ & 
-- (\Inst_top_level|lcd_entity|Mux68~0_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(4) & (((\Inst_top_level|lcd_entity|Mux69~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(4),
	datab => \Inst_top_level|lcd_entity|Mux68~0_combout\,
	datac => \Inst_top_level|lcd_entity|Mux69~4_combout\,
	datad => \Inst_top_level|lcd_entity|Mux68~7_combout\,
	combout => \Inst_top_level|lcd_entity|Mux69~5_combout\);

-- Location: LCCOMB_X13_Y12_N0
\Inst_top_level|lcd_entity|Mux69~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux69~14_combout\ = (\Inst_top_level|lcd_entity|byteSel\(5) & (!\Inst_top_level|lcd_entity|byteSel\(4) & (\Inst_top_level|lcd_entity|Mux69~13_combout\))) # (!\Inst_top_level|lcd_entity|byteSel\(5) & 
-- (((\Inst_top_level|lcd_entity|Mux69~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(4),
	datab => \Inst_top_level|lcd_entity|byteSel\(5),
	datac => \Inst_top_level|lcd_entity|Mux69~13_combout\,
	datad => \Inst_top_level|lcd_entity|Mux69~5_combout\,
	combout => \Inst_top_level|lcd_entity|Mux69~14_combout\);

-- Location: FF_X13_Y12_N1
\Inst_top_level|lcd_entity|data_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|Mux69~14_combout\,
	ena => \Inst_top_level|lcd_entity|ALT_INV_state.start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|data_o\(1));

-- Location: LCCOMB_X13_Y14_N26
\Inst_top_level|lcd_entity|Mux70~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~53_combout\ = (\Inst_top_level|selectMode\(0) & (\Inst_top_level|selectMode\(1) & !\Inst_top_level|lcd_entity|byteSel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(0),
	datac => \Inst_top_level|selectMode\(1),
	datad => \Inst_top_level|lcd_entity|byteSel\(3),
	combout => \Inst_top_level|lcd_entity|Mux70~53_combout\);

-- Location: LCCOMB_X13_Y14_N12
\Inst_top_level|lcd_entity|Mux68~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~17_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(1) & \Inst_top_level|lcd_entity|byteSel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|lcd_entity|byteSel\(1),
	datad => \Inst_top_level|lcd_entity|byteSel\(0),
	combout => \Inst_top_level|lcd_entity|Mux68~17_combout\);

-- Location: LCCOMB_X13_Y14_N8
\Inst_top_level|lcd_entity|Mux68~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~18_combout\ = (!\Inst_top_level|pwm_entity|Equal0~1_combout\ & (!\Inst_top_level|lcd_entity|byteSel\(2) & (\Inst_top_level|lcd_entity|Mux70~53_combout\ & \Inst_top_level|lcd_entity|Mux68~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|Equal0~1_combout\,
	datab => \Inst_top_level|lcd_entity|byteSel\(2),
	datac => \Inst_top_level|lcd_entity|Mux70~53_combout\,
	datad => \Inst_top_level|lcd_entity|Mux68~17_combout\,
	combout => \Inst_top_level|lcd_entity|Mux68~18_combout\);

-- Location: LCCOMB_X16_Y14_N26
\Inst_top_level|lcd_entity|Mux68~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~9_combout\ = (\Inst_top_level|SRAM|data_o\(6) & ((\Inst_top_level|SRAM|data_o\(5)) # ((\Inst_top_level|SRAM|data_o\(4)) # (!\Inst_top_level|SRAM|data_o\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(5),
	datab => \Inst_top_level|SRAM|data_o\(6),
	datac => \Inst_top_level|SRAM|data_o\(7),
	datad => \Inst_top_level|SRAM|data_o\(4),
	combout => \Inst_top_level|lcd_entity|Mux68~9_combout\);

-- Location: LCCOMB_X13_Y14_N24
\Inst_top_level|lcd_entity|Mux68~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~11_combout\ = (\Inst_top_level|lcd_entity|byteSel\(1) & ((\Inst_top_level|lcd_entity|byteSel\(0) & ((\Inst_top_level|lcd_entity|Mux68~9_combout\))) # (!\Inst_top_level|lcd_entity|byteSel\(0) & 
-- (\Inst_top_level|lcd_entity|Mux68~10_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(1) & (((\Inst_top_level|lcd_entity|byteSel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux68~10_combout\,
	datab => \Inst_top_level|lcd_entity|Mux68~9_combout\,
	datac => \Inst_top_level|lcd_entity|byteSel\(1),
	datad => \Inst_top_level|lcd_entity|byteSel\(0),
	combout => \Inst_top_level|lcd_entity|Mux68~11_combout\);

-- Location: LCCOMB_X13_Y14_N30
\Inst_top_level|lcd_entity|Mux68~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~12_combout\ = (\Inst_top_level|lcd_entity|byteSel\(2) & (\Inst_top_level|lcd_entity|Mux68~11_combout\ & ((\Inst_top_level|lcd_entity|Mux68~8_combout\) # (\Inst_top_level|lcd_entity|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux68~8_combout\,
	datab => \Inst_top_level|lcd_entity|byteSel\(1),
	datac => \Inst_top_level|lcd_entity|byteSel\(2),
	datad => \Inst_top_level|lcd_entity|Mux68~11_combout\,
	combout => \Inst_top_level|lcd_entity|Mux68~12_combout\);

-- Location: LCCOMB_X16_Y14_N30
\Inst_top_level|lcd_entity|Mux68~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~13_combout\ = (\Inst_top_level|SRAM|data_o\(2) & (((\Inst_top_level|SRAM|data_o\(1)) # (\Inst_top_level|SRAM|data_o\(0))) # (!\Inst_top_level|SRAM|data_o\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(3),
	datab => \Inst_top_level|SRAM|data_o\(1),
	datac => \Inst_top_level|SRAM|data_o\(2),
	datad => \Inst_top_level|SRAM|data_o\(0),
	combout => \Inst_top_level|lcd_entity|Mux68~13_combout\);

-- Location: FF_X17_Y11_N23
\Inst_top_level|pwm_entity|count32[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count32[27]~83_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count32\(27));

-- Location: FF_X12_Y13_N29
\Inst_top_level|pwm_entity|address_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|pwm_entity|count32\(27),
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|address_out\(3));

-- Location: LCCOMB_X12_Y13_N28
\Inst_top_level|SRAM_addr_i[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_addr_i[3]~13_combout\ = (\Inst_top_level|SRAM_addr_i[4]~6_combout\ & (\Inst_top_level|count_1hz|r_reg\(3))) # (!\Inst_top_level|SRAM_addr_i[4]~6_combout\ & (((\Inst_top_level|SRAM_addr_i[4]~5_combout\ & 
-- \Inst_top_level|pwm_entity|address_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_1hz|r_reg\(3),
	datab => \Inst_top_level|SRAM_addr_i[4]~5_combout\,
	datac => \Inst_top_level|pwm_entity|address_out\(3),
	datad => \Inst_top_level|SRAM_addr_i[4]~6_combout\,
	combout => \Inst_top_level|SRAM_addr_i[3]~13_combout\);

-- Location: LCCOMB_X12_Y13_N6
\Inst_top_level|SRAM_addr_i[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM_addr_i[3]~14_combout\ = (\Inst_top_level|fstate.INIT~q\ & ((\Inst_top_level|SRAM_addr_i[3]~13_combout\))) # (!\Inst_top_level|fstate.INIT~q\ & (\Inst_top_level|count_60ns|r_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count_60ns|r_reg\(3),
	datab => \Inst_top_level|fstate.INIT~q\,
	datad => \Inst_top_level|SRAM_addr_i[3]~13_combout\,
	combout => \Inst_top_level|SRAM_addr_i[3]~14_combout\);

-- Location: LCCOMB_X12_Y13_N16
\Inst_top_level|lcd_entity|Mux68~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~14_combout\ = (\Inst_top_level|SRAM_addr_i[1]~10_combout\) # ((\Inst_top_level|SRAM_addr_i[0]~8_combout\) # ((!\Inst_top_level|SRAM_addr_i[3]~14_combout\) # (!\Inst_top_level|SRAM_addr_i[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM_addr_i[1]~10_combout\,
	datab => \Inst_top_level|SRAM_addr_i[0]~8_combout\,
	datac => \Inst_top_level|SRAM_addr_i[2]~12_combout\,
	datad => \Inst_top_level|SRAM_addr_i[3]~14_combout\,
	combout => \Inst_top_level|lcd_entity|Mux68~14_combout\);

-- Location: LCCOMB_X10_Y13_N10
\Inst_top_level|lcd_entity|Mux68~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~15_combout\ = (\Inst_top_level|lcd_entity|byteSel\(3) & (((\Inst_top_level|lcd_entity|Mux68~13_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(3) & (\Inst_top_level|SRAM_addr_i[2]~12_combout\ & 
-- ((\Inst_top_level|lcd_entity|Mux68~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM_addr_i[2]~12_combout\,
	datab => \Inst_top_level|lcd_entity|byteSel\(3),
	datac => \Inst_top_level|lcd_entity|Mux68~13_combout\,
	datad => \Inst_top_level|lcd_entity|Mux68~14_combout\,
	combout => \Inst_top_level|lcd_entity|Mux68~15_combout\);

-- Location: LCCOMB_X10_Y13_N28
\Inst_top_level|lcd_entity|Mux68~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~16_combout\ = (\Inst_top_level|lcd_entity|Mux33~0_combout\ & ((\Inst_top_level|lcd_entity|Mux68~12_combout\) # ((\Inst_top_level|lcd_entity|Mux64~0_combout\ & \Inst_top_level|lcd_entity|Mux68~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux33~0_combout\,
	datab => \Inst_top_level|lcd_entity|Mux64~0_combout\,
	datac => \Inst_top_level|lcd_entity|Mux68~12_combout\,
	datad => \Inst_top_level|lcd_entity|Mux68~15_combout\,
	combout => \Inst_top_level|lcd_entity|Mux68~16_combout\);

-- Location: LCCOMB_X10_Y13_N14
\Inst_top_level|lcd_entity|Mux68~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~19_combout\ = (\Inst_top_level|lcd_entity|byteSel\(5) & (!\Inst_top_level|lcd_entity|byteSel\(4) & ((\Inst_top_level|lcd_entity|Mux68~18_combout\) # (\Inst_top_level|lcd_entity|Mux68~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(5),
	datab => \Inst_top_level|lcd_entity|byteSel\(4),
	datac => \Inst_top_level|lcd_entity|Mux68~18_combout\,
	datad => \Inst_top_level|lcd_entity|Mux68~16_combout\,
	combout => \Inst_top_level|lcd_entity|Mux68~19_combout\);

-- Location: LCCOMB_X14_Y11_N4
\Inst_top_level|lcd_entity|Mux68~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~20_combout\ = (\Inst_top_level|lcd_entity|byteSel\(3) & !\Inst_top_level|selectMode\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|lcd_entity|byteSel\(3),
	datad => \Inst_top_level|selectMode\(1),
	combout => \Inst_top_level|lcd_entity|Mux68~20_combout\);

-- Location: LCCOMB_X14_Y11_N6
\Inst_top_level|lcd_entity|Mux68~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~21_combout\ = (\Inst_top_level|lcd_entity|byteSel\(1) & ((\Inst_top_level|lcd_entity|Mux68~20_combout\ $ (\Inst_top_level|lcd_entity|byteSel\(0))))) # (!\Inst_top_level|lcd_entity|byteSel\(1) & 
-- (\Inst_top_level|lcd_entity|Mux68~20_combout\ & (\Inst_top_level|selectMode\(0) $ (!\Inst_top_level|lcd_entity|byteSel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(0),
	datab => \Inst_top_level|lcd_entity|byteSel\(1),
	datac => \Inst_top_level|lcd_entity|Mux68~20_combout\,
	datad => \Inst_top_level|lcd_entity|byteSel\(0),
	combout => \Inst_top_level|lcd_entity|Mux68~21_combout\);

-- Location: LCCOMB_X10_Y13_N0
\Inst_top_level|lcd_entity|Mux68~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~22_combout\ = (\Inst_top_level|selectMode\(0) & (((\Inst_top_level|lcd_entity|byteSel\(1)) # (!\Inst_top_level|lcd_entity|byteSel\(0))))) # (!\Inst_top_level|selectMode\(0) & (\Inst_top_level|lcd_entity|byteSel\(0) & 
-- ((\Inst_top_level|selectMode\(1)) # (!\Inst_top_level|lcd_entity|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(0),
	datab => \Inst_top_level|selectMode\(1),
	datac => \Inst_top_level|lcd_entity|byteSel\(1),
	datad => \Inst_top_level|lcd_entity|byteSel\(0),
	combout => \Inst_top_level|lcd_entity|Mux68~22_combout\);

-- Location: LCCOMB_X10_Y13_N26
\Inst_top_level|lcd_entity|Mux68~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~23_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(3) & \Inst_top_level|lcd_entity|Mux68~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(3),
	datad => \Inst_top_level|lcd_entity|Mux68~22_combout\,
	combout => \Inst_top_level|lcd_entity|Mux68~23_combout\);

-- Location: LCCOMB_X10_Y13_N4
\Inst_top_level|lcd_entity|Mux68~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~24_combout\ = (\Inst_top_level|lcd_entity|byteSel\(4) & ((\Inst_top_level|lcd_entity|byteSel\(2)) # ((\Inst_top_level|lcd_entity|Mux68~23_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(4) & 
-- (!\Inst_top_level|lcd_entity|byteSel\(2) & ((\Inst_top_level|lcd_entity|Mux68~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(4),
	datab => \Inst_top_level|lcd_entity|byteSel\(2),
	datac => \Inst_top_level|lcd_entity|Mux68~23_combout\,
	datad => \Inst_top_level|lcd_entity|Mux68~3_combout\,
	combout => \Inst_top_level|lcd_entity|Mux68~24_combout\);

-- Location: LCCOMB_X10_Y13_N22
\Inst_top_level|lcd_entity|Mux70~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~32_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(3) & ((\Inst_top_level|selectMode\(1)) # (\Inst_top_level|selectMode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|selectMode\(1),
	datac => \Inst_top_level|selectMode\(0),
	datad => \Inst_top_level|lcd_entity|byteSel\(3),
	combout => \Inst_top_level|lcd_entity|Mux70~32_combout\);

-- Location: LCCOMB_X14_Y11_N26
\Inst_top_level|lcd_entity|Mux70~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~42_combout\ = (!\Inst_top_level|selectMode\(0) & !\Inst_top_level|lcd_entity|byteSel\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(0),
	datac => \Inst_top_level|lcd_entity|byteSel\(3),
	combout => \Inst_top_level|lcd_entity|Mux70~42_combout\);

-- Location: LCCOMB_X10_Y13_N30
\Inst_top_level|lcd_entity|Mux68~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~25_combout\ = (\Inst_top_level|lcd_entity|byteSel\(0) & (\Inst_top_level|lcd_entity|byteSel\(1))) # (!\Inst_top_level|lcd_entity|byteSel\(0) & ((\Inst_top_level|lcd_entity|byteSel\(1) & 
-- ((\Inst_top_level|lcd_entity|Mux70~42_combout\))) # (!\Inst_top_level|lcd_entity|byteSel\(1) & (\Inst_top_level|lcd_entity|Mux70~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(0),
	datab => \Inst_top_level|lcd_entity|byteSel\(1),
	datac => \Inst_top_level|lcd_entity|Mux70~32_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~42_combout\,
	combout => \Inst_top_level|lcd_entity|Mux68~25_combout\);

-- Location: LCCOMB_X10_Y13_N24
\Inst_top_level|lcd_entity|Mux70~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~54_combout\ = ((\Inst_top_level|SRAM_addr_i[5]~18_combout\) # ((\Inst_top_level|SRAM_addr_i[4]~16_combout\) # (!\Inst_top_level|SRAM_addr_i[7]~22_combout\))) # (!\Inst_top_level|SRAM_addr_i[6]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM_addr_i[6]~20_combout\,
	datab => \Inst_top_level|SRAM_addr_i[5]~18_combout\,
	datac => \Inst_top_level|SRAM_addr_i[4]~16_combout\,
	datad => \Inst_top_level|SRAM_addr_i[7]~22_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~54_combout\);

-- Location: LCCOMB_X10_Y13_N18
\Inst_top_level|lcd_entity|Mux70~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~55_combout\ = ((\Inst_top_level|SRAM_addr_i[6]~20_combout\ & (\Inst_top_level|lcd_entity|Mux70~52_combout\ & \Inst_top_level|lcd_entity|Mux70~54_combout\))) # (!\Inst_top_level|lcd_entity|Mux70~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux70~50_combout\,
	datab => \Inst_top_level|SRAM_addr_i[6]~20_combout\,
	datac => \Inst_top_level|lcd_entity|Mux70~52_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~54_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~55_combout\);

-- Location: LCCOMB_X10_Y13_N20
\Inst_top_level|lcd_entity|Mux68~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~26_combout\ = (\Inst_top_level|lcd_entity|byteSel\(0) & ((\Inst_top_level|lcd_entity|Mux68~25_combout\ & ((\Inst_top_level|lcd_entity|Mux70~55_combout\))) # (!\Inst_top_level|lcd_entity|Mux68~25_combout\ & 
-- (!\Inst_top_level|lcd_entity|byteSel\(3))))) # (!\Inst_top_level|lcd_entity|byteSel\(0) & (((\Inst_top_level|lcd_entity|Mux68~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(0),
	datab => \Inst_top_level|lcd_entity|byteSel\(3),
	datac => \Inst_top_level|lcd_entity|Mux68~25_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~55_combout\,
	combout => \Inst_top_level|lcd_entity|Mux68~26_combout\);

-- Location: LCCOMB_X10_Y13_N2
\Inst_top_level|lcd_entity|Mux68~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~27_combout\ = (\Inst_top_level|lcd_entity|byteSel\(2) & ((\Inst_top_level|lcd_entity|Mux68~24_combout\ & ((\Inst_top_level|lcd_entity|Mux68~26_combout\))) # (!\Inst_top_level|lcd_entity|Mux68~24_combout\ & 
-- (\Inst_top_level|lcd_entity|Mux68~21_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(2) & (((\Inst_top_level|lcd_entity|Mux68~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(2),
	datab => \Inst_top_level|lcd_entity|Mux68~21_combout\,
	datac => \Inst_top_level|lcd_entity|Mux68~24_combout\,
	datad => \Inst_top_level|lcd_entity|Mux68~26_combout\,
	combout => \Inst_top_level|lcd_entity|Mux68~27_combout\);

-- Location: LCCOMB_X10_Y13_N16
\Inst_top_level|lcd_entity|Mux68~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux68~28_combout\ = (\Inst_top_level|lcd_entity|Mux68~19_combout\) # ((!\Inst_top_level|lcd_entity|byteSel\(5) & \Inst_top_level|lcd_entity|Mux68~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(5),
	datac => \Inst_top_level|lcd_entity|Mux68~19_combout\,
	datad => \Inst_top_level|lcd_entity|Mux68~27_combout\,
	combout => \Inst_top_level|lcd_entity|Mux68~28_combout\);

-- Location: FF_X10_Y13_N17
\Inst_top_level|lcd_entity|data_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|Mux68~28_combout\,
	ena => \Inst_top_level|lcd_entity|ALT_INV_state.start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|data_o\(2));

-- Location: LCCOMB_X14_Y11_N16
\Inst_top_level|lcd_entity|Mux64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux64~1_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(0) & (!\Inst_top_level|lcd_entity|byteSel\(1) & (!\Inst_top_level|lcd_entity|byteSel\(2) & \Inst_top_level|lcd_entity|Mux33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(0),
	datab => \Inst_top_level|lcd_entity|byteSel\(1),
	datac => \Inst_top_level|lcd_entity|byteSel\(2),
	datad => \Inst_top_level|lcd_entity|Mux33~0_combout\,
	combout => \Inst_top_level|lcd_entity|Mux64~1_combout\);

-- Location: LCCOMB_X14_Y14_N8
\Inst_top_level|lcd_entity|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux51~0_combout\ = (!\Inst_top_level|SRAM|data_o\(5) & (\Inst_top_level|SRAM|data_o\(7) & (\Inst_top_level|lcd_entity|Mux33~0_combout\ & !\Inst_top_level|SRAM|data_o\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(5),
	datab => \Inst_top_level|SRAM|data_o\(7),
	datac => \Inst_top_level|lcd_entity|Mux33~0_combout\,
	datad => \Inst_top_level|SRAM|data_o\(6),
	combout => \Inst_top_level|lcd_entity|Mux51~0_combout\);

-- Location: IOIBUF_X0_Y17_N15
\SRAM_DQ[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(10),
	o => \SRAM_DQ[10]~input_o\);

-- Location: FF_X16_Y14_N7
\Inst_top_level|SRAM|data_o[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SRAM_DQ[10]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|SRAM|fstate.read1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|data_o\(10));

-- Location: LCCOMB_X16_Y14_N6
\Inst_top_level|lcd_entity|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux44~0_combout\ = (!\Inst_top_level|SRAM|data_o\(9) & \Inst_top_level|SRAM|data_o\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|SRAM|data_o\(9),
	datad => \Inst_top_level|SRAM|data_o\(11),
	combout => \Inst_top_level|lcd_entity|Mux44~0_combout\);

-- Location: LCCOMB_X14_Y14_N20
\Inst_top_level|lcd_entity|Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux44~1_combout\ = (\Inst_top_level|selectMode\(1) & ((\Inst_top_level|selectMode\(0)) # ((!\Inst_top_level|SRAM|data_o\(10) & \Inst_top_level|lcd_entity|Mux44~0_combout\)))) # (!\Inst_top_level|selectMode\(1) & 
-- (!\Inst_top_level|SRAM|data_o\(10) & (\Inst_top_level|selectMode\(0) & \Inst_top_level|lcd_entity|Mux44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(1),
	datab => \Inst_top_level|SRAM|data_o\(10),
	datac => \Inst_top_level|selectMode\(0),
	datad => \Inst_top_level|lcd_entity|Mux44~0_combout\,
	combout => \Inst_top_level|lcd_entity|Mux44~1_combout\);

-- Location: LCCOMB_X14_Y14_N18
\Inst_top_level|lcd_entity|Mux70~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~60_combout\ = (\Inst_top_level|lcd_entity|byteSel\(1) & (((\Inst_top_level|lcd_entity|byteSel\(0)) # (\Inst_top_level|lcd_entity|Mux44~1_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(1) & 
-- (\Inst_top_level|lcd_entity|Mux33~0_combout\ & (!\Inst_top_level|lcd_entity|byteSel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux33~0_combout\,
	datab => \Inst_top_level|lcd_entity|byteSel\(1),
	datac => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => \Inst_top_level|lcd_entity|Mux44~1_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~60_combout\);

-- Location: LCCOMB_X14_Y14_N10
\Inst_top_level|lcd_entity|Mux70~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~61_combout\ = (\Inst_top_level|lcd_entity|byteSel\(0) & ((\Inst_top_level|lcd_entity|Mux70~60_combout\ & ((\Inst_top_level|lcd_entity|Mux51~0_combout\))) # (!\Inst_top_level|lcd_entity|Mux70~60_combout\ & 
-- (\Inst_top_level|lcd_entity|Mux37~3_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(0) & (((\Inst_top_level|lcd_entity|Mux70~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux37~3_combout\,
	datab => \Inst_top_level|lcd_entity|byteSel\(0),
	datac => \Inst_top_level|lcd_entity|Mux51~0_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~60_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~61_combout\);

-- Location: IOIBUF_X9_Y0_N15
\SRAM_DQ[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(3),
	o => \SRAM_DQ[3]~input_o\);

-- Location: FF_X17_Y14_N29
\Inst_top_level|SRAM|data_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SRAM_DQ[3]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|SRAM|fstate.read1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|data_o\(3));

-- Location: LCCOMB_X14_Y14_N24
\Inst_top_level|lcd_entity|Mux67~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux67~2_combout\ = (!\Inst_top_level|SRAM|data_o\(1) & (!\Inst_top_level|SRAM|data_o\(2) & (\Inst_top_level|lcd_entity|byteSel\(3) & \Inst_top_level|SRAM|data_o\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(1),
	datab => \Inst_top_level|SRAM|data_o\(2),
	datac => \Inst_top_level|lcd_entity|byteSel\(3),
	datad => \Inst_top_level|SRAM|data_o\(3),
	combout => \Inst_top_level|lcd_entity|Mux67~2_combout\);

-- Location: LCCOMB_X14_Y12_N16
\Inst_top_level|lcd_entity|Mux67~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux67~4_combout\ = (\Inst_top_level|lcd_entity|Mux67~2_combout\) # ((\Inst_top_level|lcd_entity|Mux67~3_combout\ & (!\Inst_top_level|SRAM_addr_i[1]~10_combout\ & !\Inst_top_level|SRAM_addr_i[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux67~3_combout\,
	datab => \Inst_top_level|SRAM_addr_i[1]~10_combout\,
	datac => \Inst_top_level|lcd_entity|Mux67~2_combout\,
	datad => \Inst_top_level|SRAM_addr_i[2]~12_combout\,
	combout => \Inst_top_level|lcd_entity|Mux67~4_combout\);

-- Location: LCCOMB_X14_Y12_N30
\Inst_top_level|lcd_entity|Mux67~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux67~5_combout\ = (\Inst_top_level|lcd_entity|byteSel\(2) & ((\Inst_top_level|lcd_entity|Mux70~61_combout\) # ((\Inst_top_level|lcd_entity|Mux64~1_combout\ & \Inst_top_level|lcd_entity|Mux67~4_combout\)))) # 
-- (!\Inst_top_level|lcd_entity|byteSel\(2) & (\Inst_top_level|lcd_entity|Mux64~1_combout\ & ((\Inst_top_level|lcd_entity|Mux67~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(2),
	datab => \Inst_top_level|lcd_entity|Mux64~1_combout\,
	datac => \Inst_top_level|lcd_entity|Mux70~61_combout\,
	datad => \Inst_top_level|lcd_entity|Mux67~4_combout\,
	combout => \Inst_top_level|lcd_entity|Mux67~5_combout\);

-- Location: LCCOMB_X13_Y12_N4
\Inst_top_level|lcd_entity|Mux70~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~87_combout\ = (!\Inst_top_level|lcd_entity|Mux70~34_combout\ & (((!\Inst_top_level|selectMode\(0) & !\Inst_top_level|selectMode\(1))) # (!\Inst_top_level|lcd_entity|byteSel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(0),
	datab => \Inst_top_level|lcd_entity|byteSel\(3),
	datac => \Inst_top_level|lcd_entity|Mux70~34_combout\,
	datad => \Inst_top_level|selectMode\(1),
	combout => \Inst_top_level|lcd_entity|Mux70~87_combout\);

-- Location: LCCOMB_X13_Y12_N12
\Inst_top_level|lcd_entity|Mux70~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~56_combout\ = ((\Inst_top_level|lcd_entity|byteSel\(1) & (\Inst_top_level|lcd_entity|byteSel\(0) & !\Inst_top_level|lcd_entity|Mux1~0_combout\))) # (!\Inst_top_level|lcd_entity|byteSel\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(1),
	datab => \Inst_top_level|lcd_entity|byteSel\(3),
	datac => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => \Inst_top_level|lcd_entity|Mux1~0_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~56_combout\);

-- Location: LCCOMB_X13_Y12_N6
\Inst_top_level|lcd_entity|Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux67~0_combout\ = (\Inst_top_level|lcd_entity|byteSel\(4) & (\Inst_top_level|lcd_entity|byteSel\(2))) # (!\Inst_top_level|lcd_entity|byteSel\(4) & ((\Inst_top_level|lcd_entity|byteSel\(2) & 
-- (\Inst_top_level|lcd_entity|Mux70~87_combout\)) # (!\Inst_top_level|lcd_entity|byteSel\(2) & ((\Inst_top_level|lcd_entity|Mux70~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(4),
	datab => \Inst_top_level|lcd_entity|byteSel\(2),
	datac => \Inst_top_level|lcd_entity|Mux70~87_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~56_combout\,
	combout => \Inst_top_level|lcd_entity|Mux67~0_combout\);

-- Location: LCCOMB_X11_Y12_N0
\Inst_top_level|lcd_entity|Mux70~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~31_combout\ = (\Inst_top_level|selectMode\(1) & ((\Inst_top_level|lcd_entity|byteSel\(0) & ((\Inst_top_level|lcd_entity|byteSel\(1)))) # (!\Inst_top_level|lcd_entity|byteSel\(0) & (\Inst_top_level|selectMode\(0))))) # 
-- (!\Inst_top_level|selectMode\(1) & ((\Inst_top_level|lcd_entity|byteSel\(1)) # ((!\Inst_top_level|selectMode\(0) & \Inst_top_level|lcd_entity|byteSel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(1),
	datab => \Inst_top_level|selectMode\(0),
	datac => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => \Inst_top_level|lcd_entity|byteSel\(1),
	combout => \Inst_top_level|lcd_entity|Mux70~31_combout\);

-- Location: LCCOMB_X11_Y12_N14
\Inst_top_level|lcd_entity|Mux70~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~94_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(3) & \Inst_top_level|lcd_entity|Mux70~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|lcd_entity|byteSel\(3),
	datad => \Inst_top_level|lcd_entity|Mux70~31_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~94_combout\);

-- Location: LCCOMB_X14_Y12_N24
\Inst_top_level|lcd_entity|Mux70~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~57_combout\ = (!\Inst_top_level|SRAM_addr_i[6]~20_combout\ & (\Inst_top_level|lcd_entity|Mux70~52_combout\ & (\Inst_top_level|SRAM_addr_i[7]~22_combout\ & !\Inst_top_level|SRAM_addr_i[5]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM_addr_i[6]~20_combout\,
	datab => \Inst_top_level|lcd_entity|Mux70~52_combout\,
	datac => \Inst_top_level|SRAM_addr_i[7]~22_combout\,
	datad => \Inst_top_level|SRAM_addr_i[5]~18_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~57_combout\);

-- Location: LCCOMB_X14_Y12_N22
\Inst_top_level|lcd_entity|Mux70~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~58_combout\ = (\Inst_top_level|lcd_entity|byteSel\(0) & (\Inst_top_level|lcd_entity|byteSel\(1))) # (!\Inst_top_level|lcd_entity|byteSel\(0) & ((\Inst_top_level|lcd_entity|byteSel\(1) & 
-- ((\Inst_top_level|lcd_entity|Mux70~52_combout\))) # (!\Inst_top_level|lcd_entity|byteSel\(1) & (\Inst_top_level|lcd_entity|Mux70~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(0),
	datab => \Inst_top_level|lcd_entity|byteSel\(1),
	datac => \Inst_top_level|lcd_entity|Mux70~42_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~52_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~58_combout\);

-- Location: LCCOMB_X14_Y12_N20
\Inst_top_level|lcd_entity|Mux70~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~59_combout\ = (\Inst_top_level|lcd_entity|byteSel\(0) & (((\Inst_top_level|lcd_entity|Mux70~57_combout\ & \Inst_top_level|lcd_entity|Mux70~58_combout\)) # (!\Inst_top_level|lcd_entity|Mux70~50_combout\))) # 
-- (!\Inst_top_level|lcd_entity|byteSel\(0) & (((\Inst_top_level|lcd_entity|Mux70~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(0),
	datab => \Inst_top_level|lcd_entity|Mux70~57_combout\,
	datac => \Inst_top_level|lcd_entity|Mux70~58_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~50_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~59_combout\);

-- Location: LCCOMB_X14_Y12_N18
\Inst_top_level|lcd_entity|Mux67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux67~1_combout\ = (\Inst_top_level|lcd_entity|byteSel\(4) & ((\Inst_top_level|lcd_entity|Mux67~0_combout\ & ((\Inst_top_level|lcd_entity|Mux70~59_combout\))) # (!\Inst_top_level|lcd_entity|Mux67~0_combout\ & 
-- (\Inst_top_level|lcd_entity|Mux70~94_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(4) & (\Inst_top_level|lcd_entity|Mux67~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(4),
	datab => \Inst_top_level|lcd_entity|Mux67~0_combout\,
	datac => \Inst_top_level|lcd_entity|Mux70~94_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~59_combout\,
	combout => \Inst_top_level|lcd_entity|Mux67~1_combout\);

-- Location: LCCOMB_X14_Y12_N0
\Inst_top_level|lcd_entity|Mux67~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux67~6_combout\ = (\Inst_top_level|lcd_entity|byteSel\(5) & (!\Inst_top_level|lcd_entity|byteSel\(4) & (\Inst_top_level|lcd_entity|Mux67~5_combout\))) # (!\Inst_top_level|lcd_entity|byteSel\(5) & 
-- (((\Inst_top_level|lcd_entity|Mux67~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(4),
	datab => \Inst_top_level|lcd_entity|byteSel\(5),
	datac => \Inst_top_level|lcd_entity|Mux67~5_combout\,
	datad => \Inst_top_level|lcd_entity|Mux67~1_combout\,
	combout => \Inst_top_level|lcd_entity|Mux67~6_combout\);

-- Location: FF_X14_Y12_N1
\Inst_top_level|lcd_entity|data_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|Mux67~6_combout\,
	ena => \Inst_top_level|lcd_entity|ALT_INV_state.start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|data_o\(3));

-- Location: LCCOMB_X13_Y12_N8
\Inst_top_level|lcd_entity|Mux70~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~64_combout\ = (\Inst_top_level|lcd_entity|Mux70~49_combout\ & ((\Inst_top_level|lcd_entity|byteSel\(1) & (!\Inst_top_level|lcd_entity|Mux1~0_combout\)) # (!\Inst_top_level|lcd_entity|byteSel\(1) & 
-- ((\Inst_top_level|lcd_entity|Mux33~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(1),
	datab => \Inst_top_level|lcd_entity|Mux1~0_combout\,
	datac => \Inst_top_level|lcd_entity|Mux33~0_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~49_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~64_combout\);

-- Location: LCCOMB_X13_Y12_N26
\Inst_top_level|lcd_entity|Mux66~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux66~14_combout\ = (\Inst_top_level|lcd_entity|byteSel\(2) & (((\Inst_top_level|lcd_entity|byteSel\(4))))) # (!\Inst_top_level|lcd_entity|byteSel\(2) & ((\Inst_top_level|lcd_entity|byteSel\(4) & 
-- ((\Inst_top_level|lcd_entity|Mux70~64_combout\))) # (!\Inst_top_level|lcd_entity|byteSel\(4) & (!\Inst_top_level|lcd_entity|byteSel\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(3),
	datab => \Inst_top_level|lcd_entity|byteSel\(2),
	datac => \Inst_top_level|lcd_entity|Mux70~64_combout\,
	datad => \Inst_top_level|lcd_entity|byteSel\(4),
	combout => \Inst_top_level|lcd_entity|Mux66~14_combout\);

-- Location: LCCOMB_X13_Y13_N22
\Inst_top_level|lcd_entity|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux15~0_combout\ = (\Inst_top_level|lcd_entity|Mux33~0_combout\ & (((!\Inst_top_level|SRAM_addr_i[6]~20_combout\ & !\Inst_top_level|SRAM_addr_i[5]~18_combout\)) # (!\Inst_top_level|SRAM_addr_i[7]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM_addr_i[6]~20_combout\,
	datab => \Inst_top_level|SRAM_addr_i[5]~18_combout\,
	datac => \Inst_top_level|lcd_entity|Mux33~0_combout\,
	datad => \Inst_top_level|SRAM_addr_i[7]~22_combout\,
	combout => \Inst_top_level|lcd_entity|Mux15~0_combout\);

-- Location: LCCOMB_X13_Y12_N16
\Inst_top_level|lcd_entity|Mux70~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~65_combout\ = (\Inst_top_level|lcd_entity|Mux68~6_combout\ & (\Inst_top_level|lcd_entity|Mux70~88_combout\)) # (!\Inst_top_level|lcd_entity|Mux68~6_combout\ & (\Inst_top_level|lcd_entity|Mux70~36_combout\ & 
-- ((\Inst_top_level|lcd_entity|Mux70~88_combout\) # (\Inst_top_level|lcd_entity|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux70~88_combout\,
	datab => \Inst_top_level|lcd_entity|Mux68~6_combout\,
	datac => \Inst_top_level|lcd_entity|Mux70~36_combout\,
	datad => \Inst_top_level|lcd_entity|Mux15~0_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~65_combout\);

-- Location: LCCOMB_X13_Y12_N14
\Inst_top_level|lcd_entity|Mux66~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux66~15_combout\ = (\Inst_top_level|lcd_entity|byteSel\(2) & ((\Inst_top_level|lcd_entity|Mux66~14_combout\ & ((\Inst_top_level|lcd_entity|Mux70~65_combout\))) # (!\Inst_top_level|lcd_entity|Mux66~14_combout\ & 
-- (\Inst_top_level|lcd_entity|Mux70~63_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(2) & (((\Inst_top_level|lcd_entity|Mux66~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux70~63_combout\,
	datab => \Inst_top_level|lcd_entity|byteSel\(2),
	datac => \Inst_top_level|lcd_entity|Mux66~14_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~65_combout\,
	combout => \Inst_top_level|lcd_entity|Mux66~15_combout\);

-- Location: IOIBUF_X3_Y0_N15
\SRAM_DQ[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(15),
	o => \SRAM_DQ[15]~input_o\);

-- Location: FF_X17_Y14_N13
\Inst_top_level|SRAM|data_o[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SRAM_DQ[15]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|SRAM|fstate.read1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|data_o\(15));

-- Location: LCCOMB_X13_Y14_N18
\Inst_top_level|lcd_entity|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|LessThan2~0_combout\ = (\Inst_top_level|SRAM|data_o\(15) & ((\Inst_top_level|SRAM|data_o\(13)) # (\Inst_top_level|SRAM|data_o\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|SRAM|data_o\(15),
	datac => \Inst_top_level|SRAM|data_o\(13),
	datad => \Inst_top_level|SRAM|data_o\(14),
	combout => \Inst_top_level|lcd_entity|LessThan2~0_combout\);

-- Location: LCCOMB_X12_Y12_N8
\Inst_top_level|lcd_entity|Mux70~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~66_combout\ = (\Inst_top_level|lcd_entity|byteSel\(1) & (\Inst_top_level|lcd_entity|LessThan4~0_combout\)) # (!\Inst_top_level|lcd_entity|byteSel\(1) & ((\Inst_top_level|lcd_entity|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|LessThan4~0_combout\,
	datac => \Inst_top_level|lcd_entity|byteSel\(1),
	datad => \Inst_top_level|lcd_entity|LessThan2~0_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~66_combout\);

-- Location: LCCOMB_X12_Y12_N28
\Inst_top_level|lcd_entity|Mux70~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~89_combout\ = (\Inst_top_level|lcd_entity|byteSel\(1) & ((\Inst_top_level|lcd_entity|LessThan3~0_combout\ & ((\Inst_top_level|selectMode\(1)) # (\Inst_top_level|selectMode\(0)))) # 
-- (!\Inst_top_level|lcd_entity|LessThan3~0_combout\ & (\Inst_top_level|selectMode\(1) & \Inst_top_level|selectMode\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|LessThan3~0_combout\,
	datab => \Inst_top_level|selectMode\(1),
	datac => \Inst_top_level|lcd_entity|byteSel\(1),
	datad => \Inst_top_level|selectMode\(0),
	combout => \Inst_top_level|lcd_entity|Mux70~89_combout\);

-- Location: LCCOMB_X12_Y12_N30
\Inst_top_level|lcd_entity|Mux70~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~67_combout\ = (\Inst_top_level|lcd_entity|byteSel\(0) & (\Inst_top_level|lcd_entity|Mux33~0_combout\ & (!\Inst_top_level|lcd_entity|Mux70~66_combout\))) # (!\Inst_top_level|lcd_entity|byteSel\(0) & 
-- (\Inst_top_level|lcd_entity|Mux33~0_combout\ $ (((\Inst_top_level|lcd_entity|Mux70~89_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux33~0_combout\,
	datab => \Inst_top_level|lcd_entity|byteSel\(0),
	datac => \Inst_top_level|lcd_entity|Mux70~66_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~89_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~67_combout\);

-- Location: LCCOMB_X17_Y14_N26
\Inst_top_level|lcd_entity|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|LessThan5~0_combout\ = (\Inst_top_level|SRAM|data_o\(3) & ((\Inst_top_level|SRAM|data_o\(1)) # (\Inst_top_level|SRAM|data_o\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(1),
	datab => \Inst_top_level|SRAM|data_o\(2),
	datad => \Inst_top_level|SRAM|data_o\(3),
	combout => \Inst_top_level|lcd_entity|LessThan5~0_combout\);

-- Location: LCCOMB_X12_Y13_N18
\Inst_top_level|lcd_entity|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|LessThan1~0_combout\ = ((!\Inst_top_level|SRAM_addr_i[2]~12_combout\ & !\Inst_top_level|SRAM_addr_i[1]~10_combout\)) # (!\Inst_top_level|SRAM_addr_i[3]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|SRAM_addr_i[2]~12_combout\,
	datac => \Inst_top_level|SRAM_addr_i[1]~10_combout\,
	datad => \Inst_top_level|SRAM_addr_i[3]~14_combout\,
	combout => \Inst_top_level|lcd_entity|LessThan1~0_combout\);

-- Location: LCCOMB_X12_Y12_N12
\Inst_top_level|lcd_entity|Mux66~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux66~16_combout\ = (\Inst_top_level|lcd_entity|byteSel\(3) & (!\Inst_top_level|lcd_entity|byteSel\(1) & (!\Inst_top_level|lcd_entity|LessThan5~0_combout\))) # (!\Inst_top_level|lcd_entity|byteSel\(3) & 
-- ((\Inst_top_level|lcd_entity|byteSel\(1)) # ((\Inst_top_level|lcd_entity|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(3),
	datab => \Inst_top_level|lcd_entity|byteSel\(1),
	datac => \Inst_top_level|lcd_entity|LessThan5~0_combout\,
	datad => \Inst_top_level|lcd_entity|LessThan1~0_combout\,
	combout => \Inst_top_level|lcd_entity|Mux66~16_combout\);

-- Location: LCCOMB_X12_Y12_N2
\Inst_top_level|lcd_entity|Mux66~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux66~19_combout\ = (!\Inst_top_level|lcd_entity|Mux68~6_combout\ & (\Inst_top_level|lcd_entity|Mux66~16_combout\ & (\Inst_top_level|selectMode\(0) $ (\Inst_top_level|selectMode\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(0),
	datab => \Inst_top_level|selectMode\(1),
	datac => \Inst_top_level|lcd_entity|Mux68~6_combout\,
	datad => \Inst_top_level|lcd_entity|Mux66~16_combout\,
	combout => \Inst_top_level|lcd_entity|Mux66~19_combout\);

-- Location: LCCOMB_X12_Y12_N14
\Inst_top_level|lcd_entity|Mux66~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux66~17_combout\ = (\Inst_top_level|lcd_entity|byteSel\(2) & (((\Inst_top_level|lcd_entity|Mux70~67_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(2) & ((\Inst_top_level|lcd_entity|Mux66~20_combout\) # 
-- ((\Inst_top_level|lcd_entity|Mux66~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux66~20_combout\,
	datab => \Inst_top_level|lcd_entity|byteSel\(2),
	datac => \Inst_top_level|lcd_entity|Mux70~67_combout\,
	datad => \Inst_top_level|lcd_entity|Mux66~19_combout\,
	combout => \Inst_top_level|lcd_entity|Mux66~17_combout\);

-- Location: LCCOMB_X13_Y12_N10
\Inst_top_level|lcd_entity|Mux66~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux66~18_combout\ = (\Inst_top_level|lcd_entity|byteSel\(5) & (!\Inst_top_level|lcd_entity|byteSel\(4) & ((\Inst_top_level|lcd_entity|Mux66~17_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(5) & 
-- (((\Inst_top_level|lcd_entity|Mux66~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(4),
	datab => \Inst_top_level|lcd_entity|byteSel\(5),
	datac => \Inst_top_level|lcd_entity|Mux66~15_combout\,
	datad => \Inst_top_level|lcd_entity|Mux66~17_combout\,
	combout => \Inst_top_level|lcd_entity|Mux66~18_combout\);

-- Location: FF_X13_Y12_N11
\Inst_top_level|lcd_entity|data_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|Mux66~18_combout\,
	ena => \Inst_top_level|lcd_entity|ALT_INV_state.start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|data_o\(4));

-- Location: LCCOMB_X16_Y14_N20
\Inst_top_level|lcd_entity|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|LessThan4~0_combout\ = (\Inst_top_level|SRAM|data_o\(7) & ((\Inst_top_level|SRAM|data_o\(5)) # (\Inst_top_level|SRAM|data_o\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(5),
	datab => \Inst_top_level|SRAM|data_o\(7),
	datad => \Inst_top_level|SRAM|data_o\(6),
	combout => \Inst_top_level|lcd_entity|LessThan4~0_combout\);

-- Location: LCCOMB_X16_Y14_N12
\Inst_top_level|lcd_entity|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|LessThan3~0_combout\ = (\Inst_top_level|SRAM|data_o\(11) & ((\Inst_top_level|SRAM|data_o\(10)) # (\Inst_top_level|SRAM|data_o\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(10),
	datab => \Inst_top_level|SRAM|data_o\(11),
	datad => \Inst_top_level|SRAM|data_o\(9),
	combout => \Inst_top_level|lcd_entity|LessThan3~0_combout\);

-- Location: LCCOMB_X14_Y11_N24
\Inst_top_level|lcd_entity|Mux65~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux65~3_combout\ = (\Inst_top_level|lcd_entity|byteSel\(0) & (((\Inst_top_level|lcd_entity|LessThan4~0_combout\)) # (!\Inst_top_level|lcd_entity|byteSel\(1)))) # (!\Inst_top_level|lcd_entity|byteSel\(0) & 
-- (((\Inst_top_level|lcd_entity|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(0),
	datab => \Inst_top_level|lcd_entity|byteSel\(1),
	datac => \Inst_top_level|lcd_entity|LessThan4~0_combout\,
	datad => \Inst_top_level|lcd_entity|LessThan3~0_combout\,
	combout => \Inst_top_level|lcd_entity|Mux65~3_combout\);

-- Location: LCCOMB_X14_Y11_N30
\Inst_top_level|lcd_entity|Mux65~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux65~4_combout\ = ((\Inst_top_level|selectMode\(1) & (\Inst_top_level|lcd_entity|byteSel\(1) & \Inst_top_level|selectMode\(0))) # (!\Inst_top_level|selectMode\(1) & ((!\Inst_top_level|selectMode\(0))))) # 
-- (!\Inst_top_level|lcd_entity|Mux65~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(1),
	datab => \Inst_top_level|selectMode\(1),
	datac => \Inst_top_level|selectMode\(0),
	datad => \Inst_top_level|lcd_entity|Mux65~3_combout\,
	combout => \Inst_top_level|lcd_entity|Mux65~4_combout\);

-- Location: LCCOMB_X14_Y11_N18
\Inst_top_level|lcd_entity|Mux70~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~74_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(1) & (\Inst_top_level|lcd_entity|byteSel\(3) & ((!\Inst_top_level|lcd_entity|Mux33~0_combout\) # (!\Inst_top_level|lcd_entity|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(1),
	datab => \Inst_top_level|lcd_entity|LessThan5~0_combout\,
	datac => \Inst_top_level|lcd_entity|byteSel\(3),
	datad => \Inst_top_level|lcd_entity|Mux33~0_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~74_combout\);

-- Location: LCCOMB_X12_Y13_N8
\Inst_top_level|lcd_entity|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux14~0_combout\ = (\Inst_top_level|selectMode\(1) & (\Inst_top_level|selectMode\(0) & ((!\Inst_top_level|selectPWM\(0)) # (!\Inst_top_level|selectPWM\(1))))) # (!\Inst_top_level|selectMode\(1) & 
-- (!\Inst_top_level|selectMode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(1),
	datab => \Inst_top_level|selectMode\(0),
	datac => \Inst_top_level|selectPWM\(1),
	datad => \Inst_top_level|selectPWM\(0),
	combout => \Inst_top_level|lcd_entity|Mux14~0_combout\);

-- Location: LCCOMB_X12_Y13_N22
\Inst_top_level|lcd_entity|Mux70~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~75_combout\ = (\Inst_top_level|lcd_entity|byteSel\(1)) # ((\Inst_top_level|lcd_entity|Mux14~0_combout\) # ((\Inst_top_level|lcd_entity|Mux33~0_combout\ & \Inst_top_level|lcd_entity|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(1),
	datab => \Inst_top_level|lcd_entity|Mux33~0_combout\,
	datac => \Inst_top_level|lcd_entity|Mux14~0_combout\,
	datad => \Inst_top_level|lcd_entity|LessThan1~0_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~75_combout\);

-- Location: LCCOMB_X13_Y14_N20
\Inst_top_level|lcd_entity|Mux70~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~73_combout\ = (\Inst_top_level|lcd_entity|Mux68~6_combout\ & (((!\Inst_top_level|lcd_entity|Mux70~53_combout\) # (!\Inst_top_level|selectPWM\(0))) # (!\Inst_top_level|selectPWM\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectPWM\(1),
	datab => \Inst_top_level|selectPWM\(0),
	datac => \Inst_top_level|lcd_entity|Mux70~53_combout\,
	datad => \Inst_top_level|lcd_entity|Mux68~6_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~73_combout\);

-- Location: LCCOMB_X13_Y11_N28
\Inst_top_level|lcd_entity|Mux70~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~76_combout\ = (\Inst_top_level|lcd_entity|Mux70~74_combout\) # ((\Inst_top_level|lcd_entity|Mux70~73_combout\) # ((\Inst_top_level|lcd_entity|Mux70~49_combout\ & \Inst_top_level|lcd_entity|Mux70~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux70~49_combout\,
	datab => \Inst_top_level|lcd_entity|Mux70~74_combout\,
	datac => \Inst_top_level|lcd_entity|Mux70~75_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~73_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~76_combout\);

-- Location: LCCOMB_X13_Y11_N22
\Inst_top_level|lcd_entity|Mux65~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux65~5_combout\ = (\Inst_top_level|lcd_entity|byteSel\(2) & ((\Inst_top_level|lcd_entity|Mux65~2_combout\) # ((\Inst_top_level|lcd_entity|Mux65~4_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(2) & 
-- (((\Inst_top_level|lcd_entity|Mux70~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux65~2_combout\,
	datab => \Inst_top_level|lcd_entity|byteSel\(2),
	datac => \Inst_top_level|lcd_entity|Mux65~4_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~76_combout\,
	combout => \Inst_top_level|lcd_entity|Mux65~5_combout\);

-- Location: LCCOMB_X14_Y11_N22
\Inst_top_level|lcd_entity|Mux70~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~69_combout\ = (\Inst_top_level|lcd_entity|byteSel\(3) & (\Inst_top_level|lcd_entity|byteSel\(1) & ((!\Inst_top_level|selectMode\(0)) # (!\Inst_top_level|selectMode\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(3),
	datab => \Inst_top_level|selectMode\(1),
	datac => \Inst_top_level|selectMode\(0),
	datad => \Inst_top_level|lcd_entity|byteSel\(1),
	combout => \Inst_top_level|lcd_entity|Mux70~69_combout\);

-- Location: LCCOMB_X14_Y11_N8
\Inst_top_level|lcd_entity|Mux70~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~70_combout\ = (\Inst_top_level|lcd_entity|Mux70~69_combout\) # ((!\Inst_top_level|lcd_entity|byteSel\(1) & ((!\Inst_top_level|lcd_entity|Mux70~52_combout\) # (!\Inst_top_level|lcd_entity|byteSel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(0),
	datab => \Inst_top_level|lcd_entity|Mux70~52_combout\,
	datac => \Inst_top_level|lcd_entity|Mux70~69_combout\,
	datad => \Inst_top_level|lcd_entity|byteSel\(1),
	combout => \Inst_top_level|lcd_entity|Mux70~70_combout\);

-- Location: LCCOMB_X14_Y11_N10
\Inst_top_level|lcd_entity|Mux70~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~71_combout\ = ((\Inst_top_level|lcd_entity|byteSel\(1) & ((\Inst_top_level|lcd_entity|Mux1~0_combout\) # (!\Inst_top_level|lcd_entity|byteSel\(0))))) # (!\Inst_top_level|lcd_entity|byteSel\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(0),
	datab => \Inst_top_level|lcd_entity|Mux1~0_combout\,
	datac => \Inst_top_level|lcd_entity|byteSel\(3),
	datad => \Inst_top_level|lcd_entity|byteSel\(1),
	combout => \Inst_top_level|lcd_entity|Mux70~71_combout\);

-- Location: LCCOMB_X14_Y11_N12
\Inst_top_level|lcd_entity|Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux65~0_combout\ = (\Inst_top_level|lcd_entity|byteSel\(2) & ((\Inst_top_level|lcd_entity|byteSel\(4)) # ((\Inst_top_level|lcd_entity|Mux70~70_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(2) & 
-- (!\Inst_top_level|lcd_entity|byteSel\(4) & ((\Inst_top_level|lcd_entity|Mux70~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(2),
	datab => \Inst_top_level|lcd_entity|byteSel\(4),
	datac => \Inst_top_level|lcd_entity|Mux70~70_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~71_combout\,
	combout => \Inst_top_level|lcd_entity|Mux65~0_combout\);

-- Location: LCCOMB_X13_Y11_N0
\Inst_top_level|lcd_entity|Mux70~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~72_combout\ = (\Inst_top_level|lcd_entity|Mux14~0_combout\) # ((\Inst_top_level|lcd_entity|Mux15~0_combout\) # (!\Inst_top_level|lcd_entity|Mux70~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux14~0_combout\,
	datac => \Inst_top_level|lcd_entity|Mux15~0_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~39_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~72_combout\);

-- Location: LCCOMB_X13_Y11_N2
\Inst_top_level|lcd_entity|Mux65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux65~1_combout\ = (\Inst_top_level|lcd_entity|byteSel\(4) & ((\Inst_top_level|lcd_entity|Mux65~0_combout\ & ((\Inst_top_level|lcd_entity|Mux70~72_combout\))) # (!\Inst_top_level|lcd_entity|Mux65~0_combout\ & 
-- (\Inst_top_level|lcd_entity|Mux70~68_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(4) & (((\Inst_top_level|lcd_entity|Mux65~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux70~68_combout\,
	datab => \Inst_top_level|lcd_entity|byteSel\(4),
	datac => \Inst_top_level|lcd_entity|Mux65~0_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~72_combout\,
	combout => \Inst_top_level|lcd_entity|Mux65~1_combout\);

-- Location: LCCOMB_X13_Y11_N8
\Inst_top_level|lcd_entity|Mux65~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux65~6_combout\ = (\Inst_top_level|lcd_entity|byteSel\(5) & (!\Inst_top_level|lcd_entity|byteSel\(4) & (\Inst_top_level|lcd_entity|Mux65~5_combout\))) # (!\Inst_top_level|lcd_entity|byteSel\(5) & 
-- (((\Inst_top_level|lcd_entity|Mux65~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(4),
	datab => \Inst_top_level|lcd_entity|byteSel\(5),
	datac => \Inst_top_level|lcd_entity|Mux65~5_combout\,
	datad => \Inst_top_level|lcd_entity|Mux65~1_combout\,
	combout => \Inst_top_level|lcd_entity|Mux65~6_combout\);

-- Location: FF_X13_Y11_N9
\Inst_top_level|lcd_entity|data_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|Mux65~6_combout\,
	ena => \Inst_top_level|lcd_entity|ALT_INV_state.start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|data_o\(5));

-- Location: LCCOMB_X11_Y11_N4
\Inst_top_level|lcd_entity|Mux64~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux64~4_combout\ = (\Inst_top_level|lcd_entity|Mux64~1_combout\ & ((\Inst_top_level|lcd_entity|byteSel\(3) & (\Inst_top_level|lcd_entity|LessThan5~0_combout\)) # (!\Inst_top_level|lcd_entity|byteSel\(3) & 
-- ((!\Inst_top_level|lcd_entity|LessThan1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(3),
	datab => \Inst_top_level|lcd_entity|LessThan5~0_combout\,
	datac => \Inst_top_level|lcd_entity|Mux64~1_combout\,
	datad => \Inst_top_level|lcd_entity|LessThan1~0_combout\,
	combout => \Inst_top_level|lcd_entity|Mux64~4_combout\);

-- Location: LCCOMB_X12_Y11_N18
\Inst_top_level|lcd_entity|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux41~0_combout\ = (\Inst_top_level|selectMode\(0) & ((\Inst_top_level|selectMode\(1)) # (\Inst_top_level|lcd_entity|LessThan3~0_combout\))) # (!\Inst_top_level|selectMode\(0) & (\Inst_top_level|selectMode\(1) & 
-- \Inst_top_level|lcd_entity|LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|selectMode\(0),
	datac => \Inst_top_level|selectMode\(1),
	datad => \Inst_top_level|lcd_entity|LessThan3~0_combout\,
	combout => \Inst_top_level|lcd_entity|Mux41~0_combout\);

-- Location: LCCOMB_X12_Y11_N20
\Inst_top_level|lcd_entity|Mux70~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~83_combout\ = (\Inst_top_level|lcd_entity|byteSel\(1) & ((\Inst_top_level|lcd_entity|byteSel\(0)) # ((\Inst_top_level|lcd_entity|Mux41~0_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(1) & 
-- (!\Inst_top_level|lcd_entity|byteSel\(0) & (\Inst_top_level|lcd_entity|Mux33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(1),
	datab => \Inst_top_level|lcd_entity|byteSel\(0),
	datac => \Inst_top_level|lcd_entity|Mux33~0_combout\,
	datad => \Inst_top_level|lcd_entity|Mux41~0_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~83_combout\);

-- Location: LCCOMB_X12_Y11_N12
\Inst_top_level|lcd_entity|Mux70~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~95_combout\ = (\Inst_top_level|selectMode\(1) & ((\Inst_top_level|selectMode\(0) & ((!\Inst_top_level|lcd_entity|Mux70~83_combout\))) # (!\Inst_top_level|selectMode\(0) & ((\Inst_top_level|lcd_entity|LessThan2~0_combout\) 
-- # (\Inst_top_level|lcd_entity|Mux70~83_combout\))))) # (!\Inst_top_level|selectMode\(1) & (\Inst_top_level|selectMode\(0) & ((\Inst_top_level|lcd_entity|LessThan2~0_combout\) # (\Inst_top_level|lcd_entity|Mux70~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(1),
	datab => \Inst_top_level|selectMode\(0),
	datac => \Inst_top_level|lcd_entity|LessThan2~0_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~83_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~95_combout\);

-- Location: LCCOMB_X12_Y11_N26
\Inst_top_level|lcd_entity|Mux70~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~96_combout\ = (\Inst_top_level|lcd_entity|byteSel\(0) & (\Inst_top_level|lcd_entity|Mux70~95_combout\ & ((\Inst_top_level|lcd_entity|LessThan4~0_combout\) # (!\Inst_top_level|lcd_entity|Mux70~83_combout\)))) # 
-- (!\Inst_top_level|lcd_entity|byteSel\(0) & (((\Inst_top_level|lcd_entity|Mux70~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|LessThan4~0_combout\,
	datab => \Inst_top_level|lcd_entity|Mux70~83_combout\,
	datac => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => \Inst_top_level|lcd_entity|Mux70~95_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~96_combout\);

-- Location: LCCOMB_X11_Y11_N14
\Inst_top_level|lcd_entity|Mux64~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux64~5_combout\ = (\Inst_top_level|lcd_entity|Mux64~4_combout\) # ((\Inst_top_level|lcd_entity|byteSel\(2) & \Inst_top_level|lcd_entity|Mux70~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(2),
	datac => \Inst_top_level|lcd_entity|Mux64~4_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~96_combout\,
	combout => \Inst_top_level|lcd_entity|Mux64~5_combout\);

-- Location: LCCOMB_X11_Y11_N12
\Inst_top_level|lcd_entity|Mux70~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~77_combout\ = (\Inst_top_level|lcd_entity|byteSel\(1)) # ((\Inst_top_level|lcd_entity|byteSel\(0) & ((!\Inst_top_level|selectMode\(0)) # (!\Inst_top_level|selectMode\(1)))) # (!\Inst_top_level|lcd_entity|byteSel\(0) & 
-- (!\Inst_top_level|selectMode\(1) & !\Inst_top_level|selectMode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(0),
	datab => \Inst_top_level|selectMode\(1),
	datac => \Inst_top_level|selectMode\(0),
	datad => \Inst_top_level|lcd_entity|byteSel\(1),
	combout => \Inst_top_level|lcd_entity|Mux70~77_combout\);

-- Location: LCCOMB_X11_Y11_N2
\Inst_top_level|lcd_entity|Mux70~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~78_combout\ = (\Inst_top_level|lcd_entity|byteSel\(3) & \Inst_top_level|lcd_entity|Mux70~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(3),
	datad => \Inst_top_level|lcd_entity|Mux70~77_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~78_combout\);

-- Location: LCCOMB_X12_Y11_N0
\Inst_top_level|lcd_entity|Mux70~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~79_combout\ = (\Inst_top_level|selectMode\(0) & (((\Inst_top_level|lcd_entity|byteSel\(1))))) # (!\Inst_top_level|selectMode\(0) & ((\Inst_top_level|lcd_entity|byteSel\(1) & ((\Inst_top_level|lcd_entity|byteSel\(3)) # 
-- (!\Inst_top_level|selectMode\(1)))) # (!\Inst_top_level|lcd_entity|byteSel\(1) & ((!\Inst_top_level|lcd_entity|byteSel\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|selectMode\(1),
	datab => \Inst_top_level|selectMode\(0),
	datac => \Inst_top_level|lcd_entity|byteSel\(1),
	datad => \Inst_top_level|lcd_entity|byteSel\(3),
	combout => \Inst_top_level|lcd_entity|Mux70~79_combout\);

-- Location: LCCOMB_X11_Y11_N18
\Inst_top_level|lcd_entity|Mux70~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~92_combout\ = (\Inst_top_level|lcd_entity|byteSel\(3) & (\Inst_top_level|lcd_entity|Mux70~79_combout\ & (\Inst_top_level|lcd_entity|byteSel\(0) $ (\Inst_top_level|lcd_entity|byteSel\(1))))) # 
-- (!\Inst_top_level|lcd_entity|byteSel\(3) & ((\Inst_top_level|lcd_entity|Mux70~79_combout\) # (\Inst_top_level|lcd_entity|byteSel\(0) $ (!\Inst_top_level|lcd_entity|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(3),
	datab => \Inst_top_level|lcd_entity|Mux70~79_combout\,
	datac => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => \Inst_top_level|lcd_entity|byteSel\(1),
	combout => \Inst_top_level|lcd_entity|Mux70~92_combout\);

-- Location: LCCOMB_X11_Y11_N8
\Inst_top_level|lcd_entity|Mux64~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux64~2_combout\ = (\Inst_top_level|lcd_entity|byteSel\(4) & ((\Inst_top_level|lcd_entity|byteSel\(2)) # ((\Inst_top_level|lcd_entity|Mux70~92_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(4) & 
-- (!\Inst_top_level|lcd_entity|byteSel\(2) & (\Inst_top_level|lcd_entity|Mux70~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(4),
	datab => \Inst_top_level|lcd_entity|byteSel\(2),
	datac => \Inst_top_level|lcd_entity|Mux70~84_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~92_combout\,
	combout => \Inst_top_level|lcd_entity|Mux64~2_combout\);

-- Location: LCCOMB_X14_Y13_N6
\Inst_top_level|lcd_entity|Mux70~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~81_combout\ = ((\Inst_top_level|SRAM_addr_i[7]~22_combout\ & ((\Inst_top_level|SRAM_addr_i[5]~18_combout\) # (\Inst_top_level|SRAM_addr_i[6]~20_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(0),
	datab => \Inst_top_level|SRAM_addr_i[5]~18_combout\,
	datac => \Inst_top_level|SRAM_addr_i[7]~22_combout\,
	datad => \Inst_top_level|SRAM_addr_i[6]~20_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~81_combout\);

-- Location: LCCOMB_X11_Y11_N24
\Inst_top_level|lcd_entity|Mux70~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux70~82_combout\ = (\Inst_top_level|lcd_entity|Mux70~80_combout\) # ((\Inst_top_level|lcd_entity|Mux33~0_combout\ & (\Inst_top_level|lcd_entity|Mux70~36_combout\ & \Inst_top_level|lcd_entity|Mux70~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux70~80_combout\,
	datab => \Inst_top_level|lcd_entity|Mux33~0_combout\,
	datac => \Inst_top_level|lcd_entity|Mux70~36_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~81_combout\,
	combout => \Inst_top_level|lcd_entity|Mux70~82_combout\);

-- Location: LCCOMB_X11_Y11_N6
\Inst_top_level|lcd_entity|Mux64~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux64~3_combout\ = (\Inst_top_level|lcd_entity|byteSel\(2) & ((\Inst_top_level|lcd_entity|Mux64~2_combout\ & ((\Inst_top_level|lcd_entity|Mux70~82_combout\))) # (!\Inst_top_level|lcd_entity|Mux64~2_combout\ & 
-- (\Inst_top_level|lcd_entity|Mux70~78_combout\)))) # (!\Inst_top_level|lcd_entity|byteSel\(2) & (((\Inst_top_level|lcd_entity|Mux64~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(2),
	datab => \Inst_top_level|lcd_entity|Mux70~78_combout\,
	datac => \Inst_top_level|lcd_entity|Mux64~2_combout\,
	datad => \Inst_top_level|lcd_entity|Mux70~82_combout\,
	combout => \Inst_top_level|lcd_entity|Mux64~3_combout\);

-- Location: LCCOMB_X11_Y11_N28
\Inst_top_level|lcd_entity|Mux64~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux64~6_combout\ = (\Inst_top_level|lcd_entity|byteSel\(5) & (!\Inst_top_level|lcd_entity|byteSel\(4) & (\Inst_top_level|lcd_entity|Mux64~5_combout\))) # (!\Inst_top_level|lcd_entity|byteSel\(5) & 
-- (((\Inst_top_level|lcd_entity|Mux64~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(4),
	datab => \Inst_top_level|lcd_entity|byteSel\(5),
	datac => \Inst_top_level|lcd_entity|Mux64~5_combout\,
	datad => \Inst_top_level|lcd_entity|Mux64~3_combout\,
	combout => \Inst_top_level|lcd_entity|Mux64~6_combout\);

-- Location: FF_X11_Y11_N29
\Inst_top_level|lcd_entity|data_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|Mux64~6_combout\,
	ena => \Inst_top_level|lcd_entity|ALT_INV_state.start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|data_o\(6));

-- Location: LCCOMB_X11_Y11_N0
\Inst_top_level|lcd_entity|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux63~0_combout\ = (!\Inst_top_level|lcd_entity|byteSel\(2) & ((\Inst_top_level|lcd_entity|byteSel\(1) & (!\Inst_top_level|lcd_entity|byteSel\(0) & \Inst_top_level|lcd_entity|byteSel\(4))) # 
-- (!\Inst_top_level|lcd_entity|byteSel\(1) & (\Inst_top_level|lcd_entity|byteSel\(0) & !\Inst_top_level|lcd_entity|byteSel\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(1),
	datab => \Inst_top_level|lcd_entity|byteSel\(2),
	datac => \Inst_top_level|lcd_entity|byteSel\(0),
	datad => \Inst_top_level|lcd_entity|byteSel\(4),
	combout => \Inst_top_level|lcd_entity|Mux63~0_combout\);

-- Location: LCCOMB_X11_Y11_N30
\Inst_top_level|lcd_entity|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux63~1_combout\ = (\Inst_top_level|lcd_entity|byteSel\(3) & (!\Inst_top_level|lcd_entity|byteSel\(5) & \Inst_top_level|lcd_entity|Mux63~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|byteSel\(3),
	datab => \Inst_top_level|lcd_entity|byteSel\(5),
	datad => \Inst_top_level|lcd_entity|Mux63~0_combout\,
	combout => \Inst_top_level|lcd_entity|Mux63~1_combout\);

-- Location: FF_X11_Y11_N31
\Inst_top_level|lcd_entity|data_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|Mux63~1_combout\,
	ena => \Inst_top_level|lcd_entity|ALT_INV_state.start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|data_o\(7));

-- Location: LCCOMB_X20_Y13_N12
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~0_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|stretch~q\ & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(0) & VCC)) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|stretch~q\ & 
-- (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(0) $ (VCC)))
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~1\ = CARRY((!\Inst_top_level|i2c_entity|I2C_Transmit_Read|stretch~q\ & \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|stretch~q\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(0),
	datad => VCC,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~0_combout\,
	cout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~1\);

-- Location: LCCOMB_X20_Y13_N4
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~6_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~0_combout\ & !\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~0_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~6_combout\);

-- Location: FF_X20_Y13_N5
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~6_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(0));

-- Location: LCCOMB_X20_Y13_N14
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~2_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(1) & (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~1\)) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(1) & 
-- ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~1\) # (GND)))
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~3\ = CARRY((!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~1\) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(1),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~1\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~2_combout\,
	cout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~3\);

-- Location: LCCOMB_X21_Y13_N12
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~5_combout\ = (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\ & \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~2_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~5_combout\);

-- Location: FF_X20_Y13_N25
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~5_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(1));

-- Location: LCCOMB_X20_Y13_N16
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~4_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(2) & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~3\ $ (GND))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(2) & 
-- (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~3\ & VCC))
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~5\ = CARRY((\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(2) & !\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(2),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~3\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~4_combout\,
	cout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~5\);

-- Location: LCCOMB_X20_Y13_N18
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~6_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(3) & (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~5\)) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(3) & 
-- ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~5\) # (GND)))
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~7\ = CARRY((!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~5\) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(3),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~5\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~6_combout\,
	cout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~7\);

-- Location: LCCOMB_X20_Y13_N6
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~3_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~6_combout\ & !\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~6_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~3_combout\);

-- Location: FF_X20_Y13_N7
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~3_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(3));

-- Location: LCCOMB_X20_Y13_N20
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~8_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(4) & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~7\ $ (GND))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(4) & 
-- (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~7\ & VCC))
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~9\ = CARRY((\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(4) & !\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(4),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~7\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~8_combout\,
	cout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~9\);

-- Location: LCCOMB_X20_Y13_N0
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~2_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~8_combout\ & !\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~8_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~2_combout\);

-- Location: FF_X20_Y13_N1
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~2_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(4));

-- Location: LCCOMB_X20_Y13_N10
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~4_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~4_combout\ & !\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~4_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~4_combout\);

-- Location: FF_X20_Y13_N11
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~4_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(2));

-- Location: LCCOMB_X21_Y13_N6
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~1_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(5) & (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(3) & (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(4) & 
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(5),
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(3),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(4),
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(2),
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y13_N28
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~0_combout\ & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(1) & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(0) & 
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~0_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(1),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(0),
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~1_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y13_N8
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~1_combout\ = (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\ & \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~18_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~1_combout\);

-- Location: FF_X19_Y13_N23
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~1_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(9));

-- Location: LCCOMB_X20_Y13_N22
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~10_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(5) & (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~9\)) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(5) & 
-- ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~9\) # (GND)))
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~11\ = CARRY((!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~9\) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(5),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~9\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~10_combout\,
	cout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~11\);

-- Location: LCCOMB_X20_Y13_N24
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~12_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(6) & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~11\ $ (GND))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(6) & 
-- (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~11\ & VCC))
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~13\ = CARRY((\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(6) & !\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(6),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~11\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~12_combout\,
	cout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~13\);

-- Location: LCCOMB_X20_Y13_N26
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~14_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(7) & (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~13\)) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(7) & 
-- ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~13\) # (GND)))
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~15\ = CARRY((!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~13\) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(7),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~13\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~14_combout\,
	cout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~15\);

-- Location: LCCOMB_X19_Y13_N6
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~7_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~14_combout\ & !\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~14_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~7_combout\);

-- Location: FF_X19_Y13_N7
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~7_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(7));

-- Location: LCCOMB_X20_Y13_N28
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~16_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(8) & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~15\ $ (GND))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(8) & 
-- (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~15\ & VCC))
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~17\ = CARRY((\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(8) & !\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(8),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~15\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~16_combout\,
	cout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~17\);

-- Location: LCCOMB_X20_Y13_N30
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~18_combout\ = \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~17\ $ (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count\(9),
	cin => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~17\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~18_combout\);

-- Location: LCCOMB_X20_Y13_N2
\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~0_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~10_combout\ & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~8_combout\ & 
-- (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~12_combout\ & \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~10_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~8_combout\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~12_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~14_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~0_combout\);

-- Location: LCCOMB_X19_Y13_N22
\Inst_top_level|i2c_entity|I2C_Transmit_Read|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|LessThan2~0_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~4_combout\) # (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~4_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~2_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|LessThan2~0_combout\);

-- Location: LCCOMB_X19_Y13_N30
\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~5_combout\ = (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~16_combout\ & (((!\Inst_top_level|i2c_entity|I2C_Transmit_Read|LessThan2~0_combout\) # 
-- (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~0_combout\)) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|count~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~3_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~16_combout\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~0_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|LessThan2~0_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~5_combout\);

-- Location: LCCOMB_X19_Y13_N24
\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~6_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~0_combout\ & ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~6_combout\ & 
-- ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~16_combout\))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~6_combout\ & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~4_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~16_combout\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~0_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~6_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~6_combout\);

-- Location: LCCOMB_X19_Y13_N26
\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~0_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~18_combout\) # ((!\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~5_combout\ & 
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~18_combout\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~5_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~6_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~0_combout\);

-- Location: LCCOMB_X19_Y13_N12
\Inst_top_level|i2c_entity|I2C_Transmit_Read|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~0_combout\ = (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\ & \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~16_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~0_combout\);

-- Location: LCCOMB_X19_Y13_N14
\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~1_combout\ = (((!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~4_combout\ & !\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~6_combout\)) # 
-- (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|count~0_combout\)) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~4_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~6_combout\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~0_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~0_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~1_combout\);

-- Location: LCCOMB_X19_Y13_N16
\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~2_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count~2_combout\) # ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~2_combout\ & 
-- (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count~4_combout\ & \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~2_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~2_combout\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~4_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~3_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~2_combout\);

-- Location: LCCOMB_X19_Y13_N18
\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~3_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~14_combout\ & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~12_combout\ & 
-- (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~10_combout\ & \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~14_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~12_combout\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~10_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~2_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~3_combout\);

-- Location: LCCOMB_X19_Y13_N20
\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~4_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|count~1_combout\ & ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~16_combout\) # 
-- ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~3_combout\)))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|count~1_combout\ & (((\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~16_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|count~1_combout\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~1_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~3_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~4_combout\);

-- Location: LCCOMB_X19_Y13_N2
\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~1_combout\ = (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\ & ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~0_combout\ & 
-- ((!\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~4_combout\))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~0_combout\ & (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~5_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~0_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~4_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~1_combout\);

-- Location: FF_X19_Y13_N3
\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~1_combout\,
	ena => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~q\);

-- Location: LCCOMB_X19_Y12_N0
\Inst_top_level|i2c_entity|count[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[0]~60_combout\ = \Inst_top_level|i2c_entity|count\(0) $ (((!\Inst_top_level|i2c_entity|state.start~q\ & !\Inst_top_level|i2c_entity|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|state.start~q\,
	datac => \Inst_top_level|i2c_entity|count\(0),
	datad => \Inst_top_level|i2c_entity|Equal0~6_combout\,
	combout => \Inst_top_level|i2c_entity|count[0]~60_combout\);

-- Location: FF_X19_Y12_N1
\Inst_top_level|i2c_entity|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[0]~60_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(0));

-- Location: LCCOMB_X19_Y12_N12
\Inst_top_level|i2c_entity|count[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[1]~20_cout\ = CARRY(!\Inst_top_level|i2c_entity|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|count\(0),
	datad => VCC,
	cout => \Inst_top_level|i2c_entity|count[1]~20_cout\);

-- Location: LCCOMB_X19_Y12_N14
\Inst_top_level|i2c_entity|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[1]~21_combout\ = (\Inst_top_level|i2c_entity|count\(1) & (\Inst_top_level|i2c_entity|count[1]~20_cout\ $ (GND))) # (!\Inst_top_level|i2c_entity|count\(1) & (!\Inst_top_level|i2c_entity|count[1]~20_cout\ & VCC))
-- \Inst_top_level|i2c_entity|count[1]~22\ = CARRY((\Inst_top_level|i2c_entity|count\(1) & !\Inst_top_level|i2c_entity|count[1]~20_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|count\(1),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|count[1]~20_cout\,
	combout => \Inst_top_level|i2c_entity|count[1]~21_combout\,
	cout => \Inst_top_level|i2c_entity|count[1]~22\);

-- Location: FF_X19_Y12_N15
\Inst_top_level|i2c_entity|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[1]~21_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(1));

-- Location: LCCOMB_X19_Y12_N16
\Inst_top_level|i2c_entity|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[2]~23_combout\ = (\Inst_top_level|i2c_entity|count\(2) & (!\Inst_top_level|i2c_entity|count[1]~22\)) # (!\Inst_top_level|i2c_entity|count\(2) & ((\Inst_top_level|i2c_entity|count[1]~22\) # (GND)))
-- \Inst_top_level|i2c_entity|count[2]~24\ = CARRY((!\Inst_top_level|i2c_entity|count[1]~22\) # (!\Inst_top_level|i2c_entity|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|count\(2),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|count[1]~22\,
	combout => \Inst_top_level|i2c_entity|count[2]~23_combout\,
	cout => \Inst_top_level|i2c_entity|count[2]~24\);

-- Location: FF_X19_Y12_N17
\Inst_top_level|i2c_entity|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[2]~23_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(2));

-- Location: LCCOMB_X19_Y12_N18
\Inst_top_level|i2c_entity|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[3]~25_combout\ = (\Inst_top_level|i2c_entity|count\(3) & (\Inst_top_level|i2c_entity|count[2]~24\ $ (GND))) # (!\Inst_top_level|i2c_entity|count\(3) & (!\Inst_top_level|i2c_entity|count[2]~24\ & VCC))
-- \Inst_top_level|i2c_entity|count[3]~26\ = CARRY((\Inst_top_level|i2c_entity|count\(3) & !\Inst_top_level|i2c_entity|count[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|count\(3),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|count[2]~24\,
	combout => \Inst_top_level|i2c_entity|count[3]~25_combout\,
	cout => \Inst_top_level|i2c_entity|count[3]~26\);

-- Location: FF_X19_Y12_N19
\Inst_top_level|i2c_entity|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[3]~25_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(3));

-- Location: LCCOMB_X19_Y12_N20
\Inst_top_level|i2c_entity|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[4]~27_combout\ = (\Inst_top_level|i2c_entity|count\(4) & (!\Inst_top_level|i2c_entity|count[3]~26\)) # (!\Inst_top_level|i2c_entity|count\(4) & ((\Inst_top_level|i2c_entity|count[3]~26\) # (GND)))
-- \Inst_top_level|i2c_entity|count[4]~28\ = CARRY((!\Inst_top_level|i2c_entity|count[3]~26\) # (!\Inst_top_level|i2c_entity|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|count\(4),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|count[3]~26\,
	combout => \Inst_top_level|i2c_entity|count[4]~27_combout\,
	cout => \Inst_top_level|i2c_entity|count[4]~28\);

-- Location: FF_X19_Y12_N21
\Inst_top_level|i2c_entity|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[4]~27_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(4));

-- Location: LCCOMB_X19_Y12_N24
\Inst_top_level|i2c_entity|count[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[6]~31_combout\ = (\Inst_top_level|i2c_entity|count\(6) & (!\Inst_top_level|i2c_entity|count[5]~30\)) # (!\Inst_top_level|i2c_entity|count\(6) & ((\Inst_top_level|i2c_entity|count[5]~30\) # (GND)))
-- \Inst_top_level|i2c_entity|count[6]~32\ = CARRY((!\Inst_top_level|i2c_entity|count[5]~30\) # (!\Inst_top_level|i2c_entity|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|count\(6),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|count[5]~30\,
	combout => \Inst_top_level|i2c_entity|count[6]~31_combout\,
	cout => \Inst_top_level|i2c_entity|count[6]~32\);

-- Location: FF_X19_Y12_N25
\Inst_top_level|i2c_entity|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[6]~31_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(6));

-- Location: LCCOMB_X19_Y12_N26
\Inst_top_level|i2c_entity|count[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[7]~33_combout\ = (\Inst_top_level|i2c_entity|count\(7) & (\Inst_top_level|i2c_entity|count[6]~32\ $ (GND))) # (!\Inst_top_level|i2c_entity|count\(7) & (!\Inst_top_level|i2c_entity|count[6]~32\ & VCC))
-- \Inst_top_level|i2c_entity|count[7]~34\ = CARRY((\Inst_top_level|i2c_entity|count\(7) & !\Inst_top_level|i2c_entity|count[6]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|count\(7),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|count[6]~32\,
	combout => \Inst_top_level|i2c_entity|count[7]~33_combout\,
	cout => \Inst_top_level|i2c_entity|count[7]~34\);

-- Location: LCCOMB_X19_Y12_N28
\Inst_top_level|i2c_entity|count[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[8]~35_combout\ = (\Inst_top_level|i2c_entity|count\(8) & ((GND) # (!\Inst_top_level|i2c_entity|count[7]~34\))) # (!\Inst_top_level|i2c_entity|count\(8) & (\Inst_top_level|i2c_entity|count[7]~34\ $ (GND)))
-- \Inst_top_level|i2c_entity|count[8]~36\ = CARRY((\Inst_top_level|i2c_entity|count\(8)) # (!\Inst_top_level|i2c_entity|count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|count\(8),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|count[7]~34\,
	combout => \Inst_top_level|i2c_entity|count[8]~35_combout\,
	cout => \Inst_top_level|i2c_entity|count[8]~36\);

-- Location: FF_X19_Y12_N29
\Inst_top_level|i2c_entity|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[8]~35_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(8));

-- Location: LCCOMB_X19_Y12_N30
\Inst_top_level|i2c_entity|count[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[9]~37_combout\ = (\Inst_top_level|i2c_entity|count\(9) & (\Inst_top_level|i2c_entity|count[8]~36\ & VCC)) # (!\Inst_top_level|i2c_entity|count\(9) & (!\Inst_top_level|i2c_entity|count[8]~36\))
-- \Inst_top_level|i2c_entity|count[9]~38\ = CARRY((!\Inst_top_level|i2c_entity|count\(9) & !\Inst_top_level|i2c_entity|count[8]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|count\(9),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|count[8]~36\,
	combout => \Inst_top_level|i2c_entity|count[9]~37_combout\,
	cout => \Inst_top_level|i2c_entity|count[9]~38\);

-- Location: LCCOMB_X19_Y11_N0
\Inst_top_level|i2c_entity|count[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[10]~39_combout\ = (\Inst_top_level|i2c_entity|count\(10) & (!\Inst_top_level|i2c_entity|count[9]~38\)) # (!\Inst_top_level|i2c_entity|count\(10) & ((\Inst_top_level|i2c_entity|count[9]~38\) # (GND)))
-- \Inst_top_level|i2c_entity|count[10]~40\ = CARRY((!\Inst_top_level|i2c_entity|count[9]~38\) # (!\Inst_top_level|i2c_entity|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|count\(10),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|count[9]~38\,
	combout => \Inst_top_level|i2c_entity|count[10]~39_combout\,
	cout => \Inst_top_level|i2c_entity|count[10]~40\);

-- Location: FF_X19_Y11_N1
\Inst_top_level|i2c_entity|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[10]~39_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(10));

-- Location: LCCOMB_X19_Y11_N2
\Inst_top_level|i2c_entity|count[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[11]~41_combout\ = (\Inst_top_level|i2c_entity|count\(11) & (\Inst_top_level|i2c_entity|count[10]~40\ $ (GND))) # (!\Inst_top_level|i2c_entity|count\(11) & (!\Inst_top_level|i2c_entity|count[10]~40\ & VCC))
-- \Inst_top_level|i2c_entity|count[11]~42\ = CARRY((\Inst_top_level|i2c_entity|count\(11) & !\Inst_top_level|i2c_entity|count[10]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|count\(11),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|count[10]~40\,
	combout => \Inst_top_level|i2c_entity|count[11]~41_combout\,
	cout => \Inst_top_level|i2c_entity|count[11]~42\);

-- Location: FF_X19_Y11_N3
\Inst_top_level|i2c_entity|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[11]~41_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(11));

-- Location: FF_X19_Y12_N31
\Inst_top_level|i2c_entity|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[9]~37_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(9));

-- Location: LCCOMB_X19_Y11_N24
\Inst_top_level|i2c_entity|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Equal0~4_combout\ = (!\Inst_top_level|i2c_entity|count\(8) & (\Inst_top_level|i2c_entity|count\(11) & (!\Inst_top_level|i2c_entity|count\(9) & \Inst_top_level|i2c_entity|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|count\(8),
	datab => \Inst_top_level|i2c_entity|count\(11),
	datac => \Inst_top_level|i2c_entity|count\(9),
	datad => \Inst_top_level|i2c_entity|count\(10),
	combout => \Inst_top_level|i2c_entity|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y11_N4
\Inst_top_level|i2c_entity|count[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[12]~43_combout\ = (\Inst_top_level|i2c_entity|count\(12) & ((GND) # (!\Inst_top_level|i2c_entity|count[11]~42\))) # (!\Inst_top_level|i2c_entity|count\(12) & (\Inst_top_level|i2c_entity|count[11]~42\ $ (GND)))
-- \Inst_top_level|i2c_entity|count[12]~44\ = CARRY((\Inst_top_level|i2c_entity|count\(12)) # (!\Inst_top_level|i2c_entity|count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|count\(12),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|count[11]~42\,
	combout => \Inst_top_level|i2c_entity|count[12]~43_combout\,
	cout => \Inst_top_level|i2c_entity|count[12]~44\);

-- Location: FF_X19_Y11_N5
\Inst_top_level|i2c_entity|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[12]~43_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(12));

-- Location: LCCOMB_X19_Y11_N8
\Inst_top_level|i2c_entity|count[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[14]~47_combout\ = (\Inst_top_level|i2c_entity|count\(14) & ((GND) # (!\Inst_top_level|i2c_entity|count[13]~46\))) # (!\Inst_top_level|i2c_entity|count\(14) & (\Inst_top_level|i2c_entity|count[13]~46\ $ (GND)))
-- \Inst_top_level|i2c_entity|count[14]~48\ = CARRY((\Inst_top_level|i2c_entity|count\(14)) # (!\Inst_top_level|i2c_entity|count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|count\(14),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|count[13]~46\,
	combout => \Inst_top_level|i2c_entity|count[14]~47_combout\,
	cout => \Inst_top_level|i2c_entity|count[14]~48\);

-- Location: FF_X19_Y11_N9
\Inst_top_level|i2c_entity|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[14]~47_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(14));

-- Location: LCCOMB_X19_Y11_N14
\Inst_top_level|i2c_entity|count[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[17]~54_combout\ = (\Inst_top_level|i2c_entity|count\(17) & (\Inst_top_level|i2c_entity|count[16]~52\ & VCC)) # (!\Inst_top_level|i2c_entity|count\(17) & (!\Inst_top_level|i2c_entity|count[16]~52\))
-- \Inst_top_level|i2c_entity|count[17]~55\ = CARRY((!\Inst_top_level|i2c_entity|count\(17) & !\Inst_top_level|i2c_entity|count[16]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|count\(17),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|count[16]~52\,
	combout => \Inst_top_level|i2c_entity|count[17]~54_combout\,
	cout => \Inst_top_level|i2c_entity|count[17]~55\);

-- Location: FF_X19_Y11_N15
\Inst_top_level|i2c_entity|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[17]~54_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(17));

-- Location: LCCOMB_X19_Y11_N16
\Inst_top_level|i2c_entity|count[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[18]~56_combout\ = (\Inst_top_level|i2c_entity|count\(18) & ((GND) # (!\Inst_top_level|i2c_entity|count[17]~55\))) # (!\Inst_top_level|i2c_entity|count\(18) & (\Inst_top_level|i2c_entity|count[17]~55\ $ (GND)))
-- \Inst_top_level|i2c_entity|count[18]~57\ = CARRY((\Inst_top_level|i2c_entity|count\(18)) # (!\Inst_top_level|i2c_entity|count[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|count\(18),
	datad => VCC,
	cin => \Inst_top_level|i2c_entity|count[17]~55\,
	combout => \Inst_top_level|i2c_entity|count[18]~56_combout\,
	cout => \Inst_top_level|i2c_entity|count[18]~57\);

-- Location: FF_X19_Y11_N17
\Inst_top_level|i2c_entity|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[18]~56_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(18));

-- Location: LCCOMB_X19_Y11_N18
\Inst_top_level|i2c_entity|count[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[19]~58_combout\ = \Inst_top_level|i2c_entity|count\(19) $ (!\Inst_top_level|i2c_entity|count[18]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|count\(19),
	cin => \Inst_top_level|i2c_entity|count[18]~57\,
	combout => \Inst_top_level|i2c_entity|count[19]~58_combout\);

-- Location: FF_X19_Y11_N19
\Inst_top_level|i2c_entity|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[19]~58_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(19));

-- Location: LCCOMB_X19_Y11_N30
\Inst_top_level|i2c_entity|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Equal0~0_combout\ = (!\Inst_top_level|i2c_entity|count\(16) & (!\Inst_top_level|i2c_entity|count\(18) & (!\Inst_top_level|i2c_entity|count\(17) & !\Inst_top_level|i2c_entity|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|count\(16),
	datab => \Inst_top_level|i2c_entity|count\(18),
	datac => \Inst_top_level|i2c_entity|count\(17),
	datad => \Inst_top_level|i2c_entity|count\(19),
	combout => \Inst_top_level|i2c_entity|Equal0~0_combout\);

-- Location: FF_X19_Y12_N27
\Inst_top_level|i2c_entity|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[7]~33_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|count\(7));

-- Location: LCCOMB_X19_Y12_N8
\Inst_top_level|i2c_entity|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Equal0~2_combout\ = (\Inst_top_level|i2c_entity|count\(5) & (\Inst_top_level|i2c_entity|count\(6) & (\Inst_top_level|i2c_entity|count\(7) & \Inst_top_level|i2c_entity|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|count\(5),
	datab => \Inst_top_level|i2c_entity|count\(6),
	datac => \Inst_top_level|i2c_entity|count\(7),
	datad => \Inst_top_level|i2c_entity|count\(4),
	combout => \Inst_top_level|i2c_entity|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y12_N6
\Inst_top_level|i2c_entity|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Equal0~1_combout\ = (\Inst_top_level|i2c_entity|count\(1) & \Inst_top_level|i2c_entity|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|i2c_entity|count\(1),
	datad => \Inst_top_level|i2c_entity|count\(0),
	combout => \Inst_top_level|i2c_entity|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y12_N2
\Inst_top_level|i2c_entity|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Equal0~3_combout\ = (\Inst_top_level|i2c_entity|count\(3) & (\Inst_top_level|i2c_entity|count\(2) & (\Inst_top_level|i2c_entity|Equal0~2_combout\ & \Inst_top_level|i2c_entity|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|count\(3),
	datab => \Inst_top_level|i2c_entity|count\(2),
	datac => \Inst_top_level|i2c_entity|Equal0~2_combout\,
	datad => \Inst_top_level|i2c_entity|Equal0~1_combout\,
	combout => \Inst_top_level|i2c_entity|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y11_N20
\Inst_top_level|i2c_entity|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Equal0~6_combout\ = (\Inst_top_level|i2c_entity|Equal0~5_combout\ & (\Inst_top_level|i2c_entity|Equal0~4_combout\ & (\Inst_top_level|i2c_entity|Equal0~0_combout\ & \Inst_top_level|i2c_entity|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|Equal0~5_combout\,
	datab => \Inst_top_level|i2c_entity|Equal0~4_combout\,
	datac => \Inst_top_level|i2c_entity|Equal0~0_combout\,
	datad => \Inst_top_level|i2c_entity|Equal0~3_combout\,
	combout => \Inst_top_level|i2c_entity|Equal0~6_combout\);

-- Location: LCCOMB_X19_Y11_N22
\Inst_top_level|i2c_entity|count[19]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|count[19]~53_combout\ = (\Inst_top_level|i2c_entity|state.start~q\) # (\Inst_top_level|i2c_entity|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|i2c_entity|state.start~q\,
	datad => \Inst_top_level|i2c_entity|Equal0~6_combout\,
	combout => \Inst_top_level|i2c_entity|count[19]~53_combout\);

-- Location: FF_X19_Y11_N23
\Inst_top_level|i2c_entity|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|count[19]~53_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|state.start~q\);

-- Location: LCCOMB_X19_Y11_N28
\Inst_top_level|i2c_entity|ena~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|ena~0_combout\ = (\Inst_top_level|i2c_entity|state.start~q\ & (\Inst_top_level|i2c_entity|ena~q\)) # (!\Inst_top_level|i2c_entity|state.start~q\ & ((\Inst_top_level|i2c_entity|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|state.start~q\,
	datac => \Inst_top_level|i2c_entity|ena~q\,
	datad => \Inst_top_level|i2c_entity|Equal0~6_combout\,
	combout => \Inst_top_level|i2c_entity|ena~0_combout\);

-- Location: FF_X19_Y11_N29
\Inst_top_level|i2c_entity|ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|ena~0_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|ena~q\);

-- Location: LCCOMB_X19_Y15_N10
\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt[0]~1_combout\ = !\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0),
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt[0]~1_combout\);

-- Location: LCCOMB_X19_Y14_N2
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add1~0_combout\ = \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2) $ (((\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0) & \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2),
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1),
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add1~0_combout\);

-- Location: FF_X19_Y14_N3
\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add1~0_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2));

-- Location: LCCOMB_X19_Y14_N28
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~1_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0) & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1) & \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1),
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2),
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~1_combout\);

-- Location: LCCOMB_X19_Y15_N18
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector19~0_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.start~q\) # ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.command~q\ & 
-- !\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.start~q\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.command~q\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~1_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector19~0_combout\);

-- Location: FF_X20_Y14_N9
\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~q\,
	sload => VCC,
	ena => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk_prev~q\);

-- Location: LCCOMB_X20_Y14_N10
\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_1~0_combout\ = (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk_prev~q\ & \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk_prev~q\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~q\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_1~0_combout\);

-- Location: FF_X19_Y15_N19
\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.command\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector19~0_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.command~q\);

-- Location: LCCOMB_X19_Y15_N0
\Inst_top_level|i2c_entity|I2C_Transmit_Read|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|state~14_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2) & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1) & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0) & 
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.command~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2),
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0),
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.command~q\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state~14_combout\);

-- Location: FF_X19_Y15_N1
\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state~14_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack1~q\);

-- Location: LCCOMB_X19_Y15_N2
\Inst_top_level|i2c_entity|I2C_Transmit_Read|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|state~13_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2) & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1) & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0) & 
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.wr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2),
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0),
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.wr~q\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state~13_combout\);

-- Location: FF_X19_Y15_N3
\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state~13_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack2~q\);

-- Location: LCCOMB_X19_Y15_N24
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector20~0_combout\ = (\Inst_top_level|i2c_entity|ena~q\ & \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|ena~q\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack2~q\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector20~0_combout\);

-- Location: LCCOMB_X19_Y15_N28
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector20~1_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack1~q\) # ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector20~0_combout\) # 
-- ((!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~1_combout\ & \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.wr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~1_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack1~q\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.wr~q\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector20~0_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector20~1_combout\);

-- Location: FF_X19_Y15_N29
\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector20~1_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.wr~q\);

-- Location: LCCOMB_X19_Y14_N10
\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt[2]~0_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_1~0_combout\ & ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.rd~q\) # 
-- ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.wr~q\) # (\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.command~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.rd~q\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.wr~q\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_1~0_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.command~q\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt[2]~0_combout\);

-- Location: FF_X19_Y14_N13
\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt[0]~1_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0));

-- Location: LCCOMB_X18_Y14_N14
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector25~0_combout\ = \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0) $ (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0),
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1),
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector25~0_combout\);

-- Location: FF_X19_Y14_N29
\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector25~0_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1));

-- Location: LCCOMB_X19_Y15_N4
\Inst_top_level|i2c_entity|I2C_Transmit_Read|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|state~15_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.rd~q\ & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1) & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0) & 
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.rd~q\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0),
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2),
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state~15_combout\);

-- Location: FF_X19_Y15_N5
\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.mstr_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state~15_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.mstr_ack~q\);

-- Location: LCCOMB_X19_Y15_N14
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector22~0_combout\ = (!\Inst_top_level|i2c_entity|ena~q\ & ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.mstr_ack~q\) # (\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.mstr_ack~q\,
	datac => \Inst_top_level|i2c_entity|ena~q\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack2~q\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector22~0_combout\);

-- Location: FF_X19_Y15_N15
\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector22~0_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.stop~q\);

-- Location: LCCOMB_X19_Y15_N20
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector17~0_combout\ = (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.stop~q\ & ((\Inst_top_level|i2c_entity|ena~q\) # (\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|ena~q\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.stop~q\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.ready~q\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector17~0_combout\);

-- Location: FF_X19_Y15_N21
\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector17~0_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.ready~q\);

-- Location: LCCOMB_X19_Y15_N12
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector18~0_combout\ = (\Inst_top_level|i2c_entity|ena~q\ & !\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|i2c_entity|ena~q\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.ready~q\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector18~0_combout\);

-- Location: FF_X19_Y15_N13
\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector18~0_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.start~q\);

-- Location: LCCOMB_X19_Y14_N20
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~6_combout\ = ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1) & ((!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0)))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1) & 
-- (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2)))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1),
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0),
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.start~q\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~6_combout\);

-- Location: LCCOMB_X19_Y14_N14
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~9_combout\ = ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2) & ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0)))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2) & 
-- (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1)))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.command~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1),
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0),
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.command~q\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~9_combout\);

-- Location: LCCOMB_X17_Y14_N22
\Inst_top_level|i2c_entity|byteSel~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|byteSel~2_combout\ = (\Inst_top_level|i2c_entity|byteSel\(0) & ((\Inst_top_level|i2c_entity|byteSel\(2) & ((\Inst_top_level|i2c_entity|byteSel\(3)) # (!\Inst_top_level|i2c_entity|byteSel\(1)))) # 
-- (!\Inst_top_level|i2c_entity|byteSel\(2) & ((\Inst_top_level|i2c_entity|byteSel\(1)))))) # (!\Inst_top_level|i2c_entity|byteSel\(0) & (((\Inst_top_level|i2c_entity|byteSel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|byteSel\(3),
	datab => \Inst_top_level|i2c_entity|byteSel\(0),
	datac => \Inst_top_level|i2c_entity|byteSel\(2),
	datad => \Inst_top_level|i2c_entity|byteSel\(1),
	combout => \Inst_top_level|i2c_entity|byteSel~2_combout\);

-- Location: LCCOMB_X19_Y12_N4
\Inst_top_level|i2c_entity|state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|state~8_combout\ = (\Inst_top_level|i2c_entity|state.start~q\ & (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|busy~q\)) # (!\Inst_top_level|i2c_entity|state.start~q\ & ((\Inst_top_level|i2c_entity|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|busy~q\,
	datac => \Inst_top_level|i2c_entity|state.start~q\,
	datad => \Inst_top_level|i2c_entity|Equal0~6_combout\,
	combout => \Inst_top_level|i2c_entity|state~8_combout\);

-- Location: FF_X19_Y12_N5
\Inst_top_level|i2c_entity|state.write_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|state~8_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|state.write_data~q\);

-- Location: LCCOMB_X19_Y15_N26
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector0~1_combout\ = (\Inst_top_level|i2c_entity|ena~q\) # ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.ready~q\ & (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.mstr_ack~q\ & 
-- !\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|ena~q\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.ready~q\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.mstr_ack~q\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack2~q\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector0~1_combout\);

-- Location: LCCOMB_X19_Y15_N8
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector0~0_combout\ = ((!\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack1~q\ & (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.stop~q\ & 
-- !\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.command~q\))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|busy~q\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack1~q\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.stop~q\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.command~q\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector0~0_combout\);

-- Location: LCCOMB_X19_Y15_N6
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector0~2_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|state~13_combout\) # (((\Inst_top_level|i2c_entity|I2C_Transmit_Read|state~15_combout\) # 
-- (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector0~0_combout\)) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state~13_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector0~1_combout\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state~15_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector0~0_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector0~2_combout\);

-- Location: FF_X19_Y15_N7
\Inst_top_level|i2c_entity|I2C_Transmit_Read|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector0~2_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|busy~q\);

-- Location: LCCOMB_X19_Y12_N10
\Inst_top_level|i2c_entity|byteSel[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|byteSel[3]~1_combout\ = (\Inst_top_level|i2c_entity|state.write_data~q\ & \Inst_top_level|i2c_entity|I2C_Transmit_Read|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|i2c_entity|state.write_data~q\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|busy~q\,
	combout => \Inst_top_level|i2c_entity|byteSel[3]~1_combout\);

-- Location: FF_X17_Y14_N23
\Inst_top_level|i2c_entity|byteSel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|byteSel~2_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|byteSel[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|byteSel\(2));

-- Location: LCCOMB_X16_Y14_N0
\Inst_top_level|i2c_entity|byteSel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|byteSel~0_combout\ = (\Inst_top_level|i2c_entity|byteSel\(3) & ((\Inst_top_level|i2c_entity|byteSel\(2)) # (\Inst_top_level|i2c_entity|byteSel\(0) $ (\Inst_top_level|i2c_entity|byteSel\(1))))) # 
-- (!\Inst_top_level|i2c_entity|byteSel\(3) & (\Inst_top_level|i2c_entity|byteSel\(0) $ ((\Inst_top_level|i2c_entity|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|byteSel\(0),
	datab => \Inst_top_level|i2c_entity|byteSel\(3),
	datac => \Inst_top_level|i2c_entity|byteSel\(1),
	datad => \Inst_top_level|i2c_entity|byteSel\(2),
	combout => \Inst_top_level|i2c_entity|byteSel~0_combout\);

-- Location: FF_X17_Y14_N1
\Inst_top_level|i2c_entity|byteSel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|i2c_entity|byteSel~0_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	ena => \Inst_top_level|i2c_entity|byteSel[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|byteSel\(1));

-- Location: LCCOMB_X17_Y14_N4
\Inst_top_level|i2c_entity|byteSel~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|byteSel~4_combout\ = (\Inst_top_level|i2c_entity|byteSel\(2) & (\Inst_top_level|i2c_entity|byteSel\(1) & (\Inst_top_level|i2c_entity|byteSel\(0) & !\Inst_top_level|i2c_entity|byteSel\(3)))) # 
-- (!\Inst_top_level|i2c_entity|byteSel\(2) & (((\Inst_top_level|i2c_entity|byteSel\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|byteSel\(2),
	datab => \Inst_top_level|i2c_entity|byteSel\(1),
	datac => \Inst_top_level|i2c_entity|byteSel\(0),
	datad => \Inst_top_level|i2c_entity|byteSel\(3),
	combout => \Inst_top_level|i2c_entity|byteSel~4_combout\);

-- Location: FF_X17_Y14_N17
\Inst_top_level|i2c_entity|byteSel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|i2c_entity|byteSel~4_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	ena => \Inst_top_level|i2c_entity|byteSel[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|byteSel\(3));

-- Location: LCCOMB_X16_Y14_N4
\Inst_top_level|i2c_entity|byteSel~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|byteSel~3_combout\ = ((\Inst_top_level|i2c_entity|byteSel\(3) & \Inst_top_level|i2c_entity|byteSel\(2))) # (!\Inst_top_level|i2c_entity|byteSel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|byteSel\(0),
	datab => \Inst_top_level|i2c_entity|byteSel\(3),
	datad => \Inst_top_level|i2c_entity|byteSel\(2),
	combout => \Inst_top_level|i2c_entity|byteSel~3_combout\);

-- Location: FF_X17_Y14_N5
\Inst_top_level|i2c_entity|byteSel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|i2c_entity|byteSel~3_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	ena => \Inst_top_level|i2c_entity|byteSel[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|byteSel\(0));

-- Location: LCCOMB_X18_Y14_N22
\Inst_top_level|i2c_entity|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux1~0_combout\ = (!\Inst_top_level|i2c_entity|byteSel\(3) & (((\Inst_top_level|i2c_entity|byteSel\(0)) # (!\Inst_top_level|i2c_entity|byteSel\(2))) # (!\Inst_top_level|i2c_entity|byteSel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|byteSel\(1),
	datab => \Inst_top_level|i2c_entity|byteSel\(0),
	datac => \Inst_top_level|i2c_entity|byteSel\(3),
	datad => \Inst_top_level|i2c_entity|byteSel\(2),
	combout => \Inst_top_level|i2c_entity|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y15_N30
\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[7]~0_combout\ = (\Inst_top_level|i2c_entity|ena~q\ & (((\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.mstr_ack~q\) # (\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack2~q\)) # 
-- (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|ena~q\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.ready~q\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.mstr_ack~q\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack2~q\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[7]~0_combout\);

-- Location: LCCOMB_X19_Y15_N16
\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[7]~1_combout\ = (\Inst_top_level|power_on_reset|oRESET~q\ & (\KEY[0]~input_o\ & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[7]~0_combout\ & 
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|power_on_reset|oRESET~q\,
	datab => \KEY[0]~input_o\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[7]~0_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_1~0_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[7]~1_combout\);

-- Location: FF_X19_Y15_N11
\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|i2c_entity|Mux1~0_combout\,
	sload => VCC,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(4));

-- Location: LCCOMB_X18_Y14_N20
\Inst_top_level|i2c_entity|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux0~0_combout\ = (!\Inst_top_level|i2c_entity|byteSel\(1) & (!\Inst_top_level|i2c_entity|byteSel\(0) & (!\Inst_top_level|i2c_entity|byteSel\(3) & \Inst_top_level|i2c_entity|byteSel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|byteSel\(1),
	datab => \Inst_top_level|i2c_entity|byteSel\(0),
	datac => \Inst_top_level|i2c_entity|byteSel\(3),
	datad => \Inst_top_level|i2c_entity|byteSel\(2),
	combout => \Inst_top_level|i2c_entity|Mux0~0_combout\);

-- Location: FF_X19_Y15_N25
\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|i2c_entity|Mux0~0_combout\,
	sload => VCC,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(7));

-- Location: LCCOMB_X19_Y14_N30
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~7_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1) & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(4))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1) & 
-- ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0) & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(4))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0) & ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1),
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(4),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0),
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(7),
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~7_combout\);

-- Location: LCCOMB_X17_Y14_N0
\Inst_top_level|i2c_entity|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux6~0_combout\ = (!\Inst_top_level|i2c_entity|byteSel\(2) & \Inst_top_level|i2c_entity|byteSel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|byteSel\(2),
	datac => \Inst_top_level|i2c_entity|byteSel\(1),
	combout => \Inst_top_level|i2c_entity|Mux6~0_combout\);

-- Location: LCCOMB_X17_Y14_N6
\Inst_top_level|i2c_entity|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux5~1_combout\ = (\Inst_top_level|i2c_entity|Mux5~0_combout\ & ((\Inst_top_level|SRAM|data_o\(6)) # ((!\Inst_top_level|i2c_entity|Mux6~0_combout\)))) # (!\Inst_top_level|i2c_entity|Mux5~0_combout\ & 
-- (((\Inst_top_level|i2c_entity|Mux6~0_combout\ & \Inst_top_level|SRAM|data_o\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|Mux5~0_combout\,
	datab => \Inst_top_level|SRAM|data_o\(6),
	datac => \Inst_top_level|i2c_entity|Mux6~0_combout\,
	datad => \Inst_top_level|SRAM|data_o\(10),
	combout => \Inst_top_level|i2c_entity|Mux5~1_combout\);

-- Location: LCCOMB_X18_Y14_N30
\Inst_top_level|i2c_entity|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux5~2_combout\ = (!\Inst_top_level|i2c_entity|byteSel\(0) & !\Inst_top_level|i2c_entity|byteSel\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|i2c_entity|byteSel\(0),
	datad => \Inst_top_level|i2c_entity|byteSel\(2),
	combout => \Inst_top_level|i2c_entity|Mux5~2_combout\);

-- Location: LCCOMB_X18_Y14_N26
\Inst_top_level|i2c_entity|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux5~3_combout\ = (\Inst_top_level|i2c_entity|byteSel\(3) & (\Inst_top_level|i2c_entity|Mux5~1_combout\)) # (!\Inst_top_level|i2c_entity|byteSel\(3) & (((\Inst_top_level|i2c_entity|Mux5~2_combout\) # 
-- (!\Inst_top_level|i2c_entity|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|byteSel\(3),
	datab => \Inst_top_level|i2c_entity|Mux5~1_combout\,
	datac => \Inst_top_level|i2c_entity|byteSel\(1),
	datad => \Inst_top_level|i2c_entity|Mux5~2_combout\,
	combout => \Inst_top_level|i2c_entity|Mux5~3_combout\);

-- Location: FF_X18_Y14_N27
\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|Mux5~3_combout\,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(2));

-- Location: IOIBUF_X11_Y0_N22
\SRAM_DQ[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(5),
	o => \SRAM_DQ[5]~input_o\);

-- Location: FF_X16_Y14_N13
\Inst_top_level|SRAM|data_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SRAM_DQ[5]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|SRAM|fstate.read1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|data_o\(5));

-- Location: LCCOMB_X17_Y14_N18
\Inst_top_level|i2c_entity|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux6~2_combout\ = (\Inst_top_level|i2c_entity|byteSel\(2)) # ((\Inst_top_level|i2c_entity|byteSel\(0) & \Inst_top_level|i2c_entity|byteSel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|byteSel\(2),
	datab => \Inst_top_level|i2c_entity|byteSel\(0),
	datad => \Inst_top_level|i2c_entity|byteSel\(1),
	combout => \Inst_top_level|i2c_entity|Mux6~2_combout\);

-- Location: LCCOMB_X17_Y14_N24
\Inst_top_level|i2c_entity|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux6~1_combout\ = (\Inst_top_level|i2c_entity|byteSel\(2)) # ((\Inst_top_level|i2c_entity|byteSel\(0) & !\Inst_top_level|i2c_entity|byteSel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|byteSel\(2),
	datab => \Inst_top_level|i2c_entity|byteSel\(0),
	datad => \Inst_top_level|i2c_entity|byteSel\(1),
	combout => \Inst_top_level|i2c_entity|Mux6~1_combout\);

-- Location: LCCOMB_X17_Y14_N8
\Inst_top_level|i2c_entity|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux6~3_combout\ = (\Inst_top_level|i2c_entity|Mux6~2_combout\ & ((\Inst_top_level|SRAM|data_o\(1)) # ((!\Inst_top_level|i2c_entity|Mux6~1_combout\)))) # (!\Inst_top_level|i2c_entity|Mux6~2_combout\ & 
-- (((\Inst_top_level|SRAM|data_o\(13) & \Inst_top_level|i2c_entity|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(1),
	datab => \Inst_top_level|i2c_entity|Mux6~2_combout\,
	datac => \Inst_top_level|SRAM|data_o\(13),
	datad => \Inst_top_level|i2c_entity|Mux6~1_combout\,
	combout => \Inst_top_level|i2c_entity|Mux6~3_combout\);

-- Location: LCCOMB_X17_Y14_N2
\Inst_top_level|i2c_entity|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux6~4_combout\ = (\Inst_top_level|i2c_entity|Mux6~0_combout\ & ((\Inst_top_level|i2c_entity|Mux6~3_combout\ & (\Inst_top_level|SRAM|data_o\(5))) # (!\Inst_top_level|i2c_entity|Mux6~3_combout\ & 
-- ((\Inst_top_level|SRAM|data_o\(9)))))) # (!\Inst_top_level|i2c_entity|Mux6~0_combout\ & (((\Inst_top_level|i2c_entity|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|Mux6~0_combout\,
	datab => \Inst_top_level|SRAM|data_o\(5),
	datac => \Inst_top_level|i2c_entity|Mux6~3_combout\,
	datad => \Inst_top_level|SRAM|data_o\(9),
	combout => \Inst_top_level|i2c_entity|Mux6~4_combout\);

-- Location: LCCOMB_X17_Y14_N16
\Inst_top_level|i2c_entity|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux6~5_combout\ = (\Inst_top_level|i2c_entity|byteSel\(3) & (((\Inst_top_level|i2c_entity|Mux6~4_combout\)))) # (!\Inst_top_level|i2c_entity|byteSel\(3) & (((!\Inst_top_level|i2c_entity|byteSel\(1))) # 
-- (!\Inst_top_level|i2c_entity|byteSel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|byteSel\(2),
	datab => \Inst_top_level|i2c_entity|byteSel\(1),
	datac => \Inst_top_level|i2c_entity|byteSel\(3),
	datad => \Inst_top_level|i2c_entity|Mux6~4_combout\,
	combout => \Inst_top_level|i2c_entity|Mux6~5_combout\);

-- Location: FF_X18_Y14_N25
\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|i2c_entity|Mux6~5_combout\,
	sload => VCC,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(1));

-- Location: LCCOMB_X18_Y14_N24
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux2~0_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0) & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(0) & ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1))))) # 
-- (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0) & (((\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(1)) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(0),
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(1),
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1),
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y14_N6
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux2~1_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1) & (((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux2~0_combout\)))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1) & 
-- ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux2~0_combout\ & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(3))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux2~0_combout\ & ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(3),
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(2),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1),
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux2~0_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux2~1_combout\);

-- Location: LCCOMB_X19_Y14_N24
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~8_combout\ = ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2) & ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux2~1_combout\))) # 
-- (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2) & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~7_combout\))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.slv_ack1~q\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~7_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux2~1_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~8_combout\);

-- Location: LCCOMB_X19_Y14_N4
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~10_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~5_combout\ & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~6_combout\ & 
-- (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~9_combout\ & \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~5_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~6_combout\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~9_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~8_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~10_combout\);

-- Location: LCCOMB_X18_Y14_N0
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux3~0_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0) & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(3) & ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1))))) # 
-- (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0) & (((\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(2)) # (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(3),
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(2),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0),
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1),
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y14_N16
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux3~1_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector25~0_combout\ & ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux3~0_combout\ & 
-- (\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(0))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux3~0_combout\ & ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(1)))))) # 
-- (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector25~0_combout\ & (((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(0),
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector25~0_combout\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(1),
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux3~0_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux3~1_combout\);

-- Location: LCCOMB_X19_Y14_N16
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~1_combout\ = ((!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~0_combout\ & (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2) & 
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(4)))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.wr~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~0_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.wr~q\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_tx\(4),
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~1_combout\);

-- Location: LCCOMB_X19_Y14_N22
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~2_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~1_combout\) # ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~0_combout\ & 
-- ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2)) # (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux3~1_combout\))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~0_combout\ & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2) & 
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal1~0_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux3~1_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~1_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~2_combout\);

-- Location: LCCOMB_X18_Y14_N28
\Inst_top_level|i2c_entity|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux4~0_combout\ = (!\Inst_top_level|i2c_entity|byteSel\(3) & ((\Inst_top_level|i2c_entity|byteSel\(0) & (\Inst_top_level|i2c_entity|byteSel\(1))) # (!\Inst_top_level|i2c_entity|byteSel\(0) & 
-- (!\Inst_top_level|i2c_entity|byteSel\(1) & \Inst_top_level|i2c_entity|byteSel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|byteSel\(3),
	datab => \Inst_top_level|i2c_entity|byteSel\(0),
	datac => \Inst_top_level|i2c_entity|byteSel\(1),
	datad => \Inst_top_level|i2c_entity|byteSel\(2),
	combout => \Inst_top_level|i2c_entity|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y14_N12
\Inst_top_level|i2c_entity|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux4~1_combout\ = (\Inst_top_level|i2c_entity|Mux6~2_combout\ & ((\Inst_top_level|SRAM|data_o\(3)) # ((!\Inst_top_level|i2c_entity|Mux6~1_combout\)))) # (!\Inst_top_level|i2c_entity|Mux6~2_combout\ & 
-- (((\Inst_top_level|SRAM|data_o\(15) & \Inst_top_level|i2c_entity|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(3),
	datab => \Inst_top_level|i2c_entity|Mux6~2_combout\,
	datac => \Inst_top_level|SRAM|data_o\(15),
	datad => \Inst_top_level|i2c_entity|Mux6~1_combout\,
	combout => \Inst_top_level|i2c_entity|Mux4~1_combout\);

-- Location: LCCOMB_X17_Y14_N14
\Inst_top_level|i2c_entity|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux4~2_combout\ = (\Inst_top_level|i2c_entity|Mux6~0_combout\ & ((\Inst_top_level|i2c_entity|Mux4~1_combout\ & (\Inst_top_level|SRAM|data_o\(7))) # (!\Inst_top_level|i2c_entity|Mux4~1_combout\ & 
-- ((\Inst_top_level|SRAM|data_o\(11)))))) # (!\Inst_top_level|i2c_entity|Mux6~0_combout\ & (((\Inst_top_level|i2c_entity|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(7),
	datab => \Inst_top_level|SRAM|data_o\(11),
	datac => \Inst_top_level|i2c_entity|Mux6~0_combout\,
	datad => \Inst_top_level|i2c_entity|Mux4~1_combout\,
	combout => \Inst_top_level|i2c_entity|Mux4~2_combout\);

-- Location: LCCOMB_X18_Y14_N4
\Inst_top_level|i2c_entity|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux4~3_combout\ = (\Inst_top_level|i2c_entity|Mux4~0_combout\) # ((\Inst_top_level|i2c_entity|byteSel\(3) & \Inst_top_level|i2c_entity|Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|byteSel\(3),
	datab => \Inst_top_level|i2c_entity|Mux4~0_combout\,
	datad => \Inst_top_level|i2c_entity|Mux4~2_combout\,
	combout => \Inst_top_level|i2c_entity|Mux4~3_combout\);

-- Location: LCCOMB_X18_Y14_N8
\Inst_top_level|i2c_entity|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux7~0_combout\ = (!\Inst_top_level|i2c_entity|byteSel\(3) & (\Inst_top_level|i2c_entity|byteSel\(2) & ((\Inst_top_level|i2c_entity|byteSel\(0)) # (!\Inst_top_level|i2c_entity|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|byteSel\(3),
	datab => \Inst_top_level|i2c_entity|byteSel\(0),
	datac => \Inst_top_level|i2c_entity|byteSel\(1),
	datad => \Inst_top_level|i2c_entity|byteSel\(2),
	combout => \Inst_top_level|i2c_entity|Mux7~0_combout\);

-- Location: LCCOMB_X17_Y14_N10
\Inst_top_level|i2c_entity|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux7~1_combout\ = (\Inst_top_level|i2c_entity|Mux6~1_combout\ & ((\Inst_top_level|i2c_entity|Mux6~2_combout\ & (\Inst_top_level|SRAM|data_o\(0))) # (!\Inst_top_level|i2c_entity|Mux6~2_combout\ & 
-- ((\Inst_top_level|SRAM|data_o\(12)))))) # (!\Inst_top_level|i2c_entity|Mux6~1_combout\ & (((\Inst_top_level|i2c_entity|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(0),
	datab => \Inst_top_level|i2c_entity|Mux6~1_combout\,
	datac => \Inst_top_level|SRAM|data_o\(12),
	datad => \Inst_top_level|i2c_entity|Mux6~2_combout\,
	combout => \Inst_top_level|i2c_entity|Mux7~1_combout\);

-- Location: LCCOMB_X17_Y14_N20
\Inst_top_level|i2c_entity|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux7~2_combout\ = (\Inst_top_level|i2c_entity|Mux6~0_combout\ & ((\Inst_top_level|i2c_entity|Mux7~1_combout\ & (\Inst_top_level|SRAM|data_o\(4))) # (!\Inst_top_level|i2c_entity|Mux7~1_combout\ & 
-- ((\Inst_top_level|SRAM|data_o\(8)))))) # (!\Inst_top_level|i2c_entity|Mux6~0_combout\ & (((\Inst_top_level|i2c_entity|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|data_o\(4),
	datab => \Inst_top_level|SRAM|data_o\(8),
	datac => \Inst_top_level|i2c_entity|Mux6~0_combout\,
	datad => \Inst_top_level|i2c_entity|Mux7~1_combout\,
	combout => \Inst_top_level|i2c_entity|Mux7~2_combout\);

-- Location: LCCOMB_X18_Y14_N2
\Inst_top_level|i2c_entity|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|Mux7~3_combout\ = (\Inst_top_level|i2c_entity|Mux7~0_combout\) # ((\Inst_top_level|i2c_entity|byteSel\(3) & \Inst_top_level|i2c_entity|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|byteSel\(3),
	datac => \Inst_top_level|i2c_entity|Mux7~0_combout\,
	datad => \Inst_top_level|i2c_entity|Mux7~2_combout\,
	combout => \Inst_top_level|i2c_entity|Mux7~3_combout\);

-- Location: LCCOMB_X18_Y14_N18
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux4~0_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1) & ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0) & ((\Inst_top_level|i2c_entity|Mux7~3_combout\))) # 
-- (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0) & (\Inst_top_level|i2c_entity|Mux6~5_combout\)))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1) & (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1),
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(0),
	datac => \Inst_top_level|i2c_entity|Mux6~5_combout\,
	datad => \Inst_top_level|i2c_entity|Mux7~3_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y14_N10
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux4~1_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1) & (((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux4~0_combout\)))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1) & 
-- ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux4~0_combout\ & ((\Inst_top_level|i2c_entity|Mux4~3_combout\))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux4~0_combout\ & (\Inst_top_level|i2c_entity|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|Mux5~3_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(1),
	datac => \Inst_top_level|i2c_entity|Mux4~3_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux4~0_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux4~1_combout\);

-- Location: LCCOMB_X19_Y14_N0
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~4_combout\ = ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2) & ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux4~1_combout\))) # 
-- (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2) & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~3_combout\))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~3_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|bit_cnt\(2),
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector20~0_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Mux4~1_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~4_combout\);

-- Location: LCCOMB_X19_Y14_N8
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~11_combout\ = (((!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~4_combout\) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~2_combout\)) # 
-- (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~10_combout\)) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~0_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~10_combout\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~2_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~4_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~11_combout\);

-- Location: FF_X19_Y14_N9
\Inst_top_level|i2c_entity|I2C_Transmit_Read|sda_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector23~11_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	ena => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|sda_int~q\);

-- Location: LCCOMB_X19_Y14_N26
\Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector29~0_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.start~q\ & (\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~q\)) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.start~q\ 
-- & (((!\Inst_top_level|i2c_entity|I2C_Transmit_Read|sda_int~q\ & !\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~q\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.start~q\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|sda_int~q\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.stop~q\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Selector29~0_combout\);

-- Location: LCCOMB_X19_Y13_N4
\Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_clk~0_combout\ = (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\ & ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~18_combout\) # 
-- ((!\Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~5_combout\ & \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Equal0~2_combout\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|Add0~18_combout\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~5_combout\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|process_0~6_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_clk~0_combout\);

-- Location: FF_X19_Y13_N5
\Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_clk~0_combout\,
	ena => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_clk~q\);

-- Location: LCCOMB_X20_Y14_N8
\Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena~0_combout\ = (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~q\ & \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk~q\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|data_clk_prev~q\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena~0_combout\);

-- Location: LCCOMB_X21_Y13_N16
\Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena~1_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena~0_combout\ & ((\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.start~q\) # 
-- ((!\Inst_top_level|i2c_entity|I2C_Transmit_Read|state.stop~q\ & \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena~q\)))) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena~0_combout\ & 
-- (((\Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.stop~q\,
	datab => \Inst_top_level|i2c_entity|I2C_Transmit_Read|state.start~q\,
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena~q\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena~0_combout\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena~1_combout\);

-- Location: FF_X21_Y13_N17
\Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena~1_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena~q\);

-- Location: LCCOMB_X21_Y13_N30
\Inst_top_level|i2c_entity|I2C_Transmit_Read|scl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl~1_combout\ = (\Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_clk~q\) # (!\Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_clk~q\,
	datad => \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl_ena~q\,
	combout => \Inst_top_level|i2c_entity|I2C_Transmit_Read|scl~1_combout\);

-- Location: FF_X17_Y13_N15
\Inst_top_level|pwm_entity|num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|SRAM|data_o\(15),
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|num\(7));

-- Location: LCCOMB_X17_Y13_N16
\Inst_top_level|pwm_entity|count8[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count8[1]~7_combout\ = (\Inst_top_level|pwm_entity|count8\(0) & (\Inst_top_level|pwm_entity|count8\(1) $ (VCC))) # (!\Inst_top_level|pwm_entity|count8\(0) & (\Inst_top_level|pwm_entity|count8\(1) & VCC))
-- \Inst_top_level|pwm_entity|count8[1]~8\ = CARRY((\Inst_top_level|pwm_entity|count8\(0) & \Inst_top_level|pwm_entity|count8\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count8\(0),
	datab => \Inst_top_level|pwm_entity|count8\(1),
	datad => VCC,
	combout => \Inst_top_level|pwm_entity|count8[1]~7_combout\,
	cout => \Inst_top_level|pwm_entity|count8[1]~8\);

-- Location: FF_X17_Y13_N17
\Inst_top_level|pwm_entity|count8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count8[1]~7_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count8\(1));

-- Location: LCCOMB_X17_Y13_N18
\Inst_top_level|pwm_entity|count8[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count8[2]~9_combout\ = (\Inst_top_level|pwm_entity|count8\(2) & (!\Inst_top_level|pwm_entity|count8[1]~8\)) # (!\Inst_top_level|pwm_entity|count8\(2) & ((\Inst_top_level|pwm_entity|count8[1]~8\) # (GND)))
-- \Inst_top_level|pwm_entity|count8[2]~10\ = CARRY((!\Inst_top_level|pwm_entity|count8[1]~8\) # (!\Inst_top_level|pwm_entity|count8\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|pwm_entity|count8\(2),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count8[1]~8\,
	combout => \Inst_top_level|pwm_entity|count8[2]~9_combout\,
	cout => \Inst_top_level|pwm_entity|count8[2]~10\);

-- Location: FF_X17_Y13_N19
\Inst_top_level|pwm_entity|count8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count8[2]~9_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count8\(2));

-- Location: LCCOMB_X17_Y13_N20
\Inst_top_level|pwm_entity|count8[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count8[3]~11_combout\ = (\Inst_top_level|pwm_entity|count8\(3) & (\Inst_top_level|pwm_entity|count8[2]~10\ $ (GND))) # (!\Inst_top_level|pwm_entity|count8\(3) & (!\Inst_top_level|pwm_entity|count8[2]~10\ & VCC))
-- \Inst_top_level|pwm_entity|count8[3]~12\ = CARRY((\Inst_top_level|pwm_entity|count8\(3) & !\Inst_top_level|pwm_entity|count8[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|pwm_entity|count8\(3),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count8[2]~10\,
	combout => \Inst_top_level|pwm_entity|count8[3]~11_combout\,
	cout => \Inst_top_level|pwm_entity|count8[3]~12\);

-- Location: FF_X17_Y13_N21
\Inst_top_level|pwm_entity|count8[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count8[3]~11_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count8\(3));

-- Location: LCCOMB_X17_Y13_N24
\Inst_top_level|pwm_entity|count8[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count8[5]~15_combout\ = (\Inst_top_level|pwm_entity|count8\(5) & (\Inst_top_level|pwm_entity|count8[4]~14\ $ (GND))) # (!\Inst_top_level|pwm_entity|count8\(5) & (!\Inst_top_level|pwm_entity|count8[4]~14\ & VCC))
-- \Inst_top_level|pwm_entity|count8[5]~16\ = CARRY((\Inst_top_level|pwm_entity|count8\(5) & !\Inst_top_level|pwm_entity|count8[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|pwm_entity|count8\(5),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|count8[4]~14\,
	combout => \Inst_top_level|pwm_entity|count8[5]~15_combout\,
	cout => \Inst_top_level|pwm_entity|count8[5]~16\);

-- Location: FF_X17_Y13_N25
\Inst_top_level|pwm_entity|count8[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count8[5]~15_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count8\(5));

-- Location: LCCOMB_X17_Y13_N28
\Inst_top_level|pwm_entity|count8[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|count8[7]~19_combout\ = \Inst_top_level|pwm_entity|count8[6]~18\ $ (!\Inst_top_level|pwm_entity|count8\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|pwm_entity|count8\(7),
	cin => \Inst_top_level|pwm_entity|count8[6]~18\,
	combout => \Inst_top_level|pwm_entity|count8[7]~19_combout\);

-- Location: FF_X17_Y13_N29
\Inst_top_level|pwm_entity|count8[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|count8[7]~19_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|count8\(7));

-- Location: FF_X17_Y13_N13
\Inst_top_level|pwm_entity|num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|SRAM|data_o\(14),
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|num\(6));

-- Location: FF_X17_Y13_N9
\Inst_top_level|pwm_entity|num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|SRAM|data_o\(12),
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|num\(4));

-- Location: FF_X17_Y13_N3
\Inst_top_level|pwm_entity|num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|SRAM|data_o\(9),
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|num\(1));

-- Location: FF_X17_Y13_N1
\Inst_top_level|pwm_entity|num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|SRAM|data_o\(8),
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|num\(0));

-- Location: LCCOMB_X17_Y13_N0
\Inst_top_level|pwm_entity|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|LessThan0~1_cout\ = CARRY((\Inst_top_level|pwm_entity|count8\(0) & !\Inst_top_level|pwm_entity|num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count8\(0),
	datab => \Inst_top_level|pwm_entity|num\(0),
	datad => VCC,
	cout => \Inst_top_level|pwm_entity|LessThan0~1_cout\);

-- Location: LCCOMB_X17_Y13_N2
\Inst_top_level|pwm_entity|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|LessThan0~3_cout\ = CARRY((\Inst_top_level|pwm_entity|count8\(1) & (\Inst_top_level|pwm_entity|num\(1) & !\Inst_top_level|pwm_entity|LessThan0~1_cout\)) # (!\Inst_top_level|pwm_entity|count8\(1) & 
-- ((\Inst_top_level|pwm_entity|num\(1)) # (!\Inst_top_level|pwm_entity|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count8\(1),
	datab => \Inst_top_level|pwm_entity|num\(1),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|LessThan0~1_cout\,
	cout => \Inst_top_level|pwm_entity|LessThan0~3_cout\);

-- Location: LCCOMB_X17_Y13_N4
\Inst_top_level|pwm_entity|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|LessThan0~5_cout\ = CARRY((\Inst_top_level|pwm_entity|num\(2) & (\Inst_top_level|pwm_entity|count8\(2) & !\Inst_top_level|pwm_entity|LessThan0~3_cout\)) # (!\Inst_top_level|pwm_entity|num\(2) & 
-- ((\Inst_top_level|pwm_entity|count8\(2)) # (!\Inst_top_level|pwm_entity|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|num\(2),
	datab => \Inst_top_level|pwm_entity|count8\(2),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|LessThan0~3_cout\,
	cout => \Inst_top_level|pwm_entity|LessThan0~5_cout\);

-- Location: LCCOMB_X17_Y13_N6
\Inst_top_level|pwm_entity|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|LessThan0~7_cout\ = CARRY((\Inst_top_level|pwm_entity|num\(3) & ((!\Inst_top_level|pwm_entity|LessThan0~5_cout\) # (!\Inst_top_level|pwm_entity|count8\(3)))) # (!\Inst_top_level|pwm_entity|num\(3) & 
-- (!\Inst_top_level|pwm_entity|count8\(3) & !\Inst_top_level|pwm_entity|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|num\(3),
	datab => \Inst_top_level|pwm_entity|count8\(3),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|LessThan0~5_cout\,
	cout => \Inst_top_level|pwm_entity|LessThan0~7_cout\);

-- Location: LCCOMB_X17_Y13_N8
\Inst_top_level|pwm_entity|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|LessThan0~9_cout\ = CARRY((\Inst_top_level|pwm_entity|count8\(4) & ((!\Inst_top_level|pwm_entity|LessThan0~7_cout\) # (!\Inst_top_level|pwm_entity|num\(4)))) # (!\Inst_top_level|pwm_entity|count8\(4) & 
-- (!\Inst_top_level|pwm_entity|num\(4) & !\Inst_top_level|pwm_entity|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count8\(4),
	datab => \Inst_top_level|pwm_entity|num\(4),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|LessThan0~7_cout\,
	cout => \Inst_top_level|pwm_entity|LessThan0~9_cout\);

-- Location: LCCOMB_X17_Y13_N10
\Inst_top_level|pwm_entity|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|LessThan0~11_cout\ = CARRY((\Inst_top_level|pwm_entity|num\(5) & ((!\Inst_top_level|pwm_entity|LessThan0~9_cout\) # (!\Inst_top_level|pwm_entity|count8\(5)))) # (!\Inst_top_level|pwm_entity|num\(5) & 
-- (!\Inst_top_level|pwm_entity|count8\(5) & !\Inst_top_level|pwm_entity|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|num\(5),
	datab => \Inst_top_level|pwm_entity|count8\(5),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|LessThan0~9_cout\,
	cout => \Inst_top_level|pwm_entity|LessThan0~11_cout\);

-- Location: LCCOMB_X17_Y13_N12
\Inst_top_level|pwm_entity|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|LessThan0~13_cout\ = CARRY((\Inst_top_level|pwm_entity|count8\(6) & ((!\Inst_top_level|pwm_entity|LessThan0~11_cout\) # (!\Inst_top_level|pwm_entity|num\(6)))) # (!\Inst_top_level|pwm_entity|count8\(6) & 
-- (!\Inst_top_level|pwm_entity|num\(6) & !\Inst_top_level|pwm_entity|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|pwm_entity|count8\(6),
	datab => \Inst_top_level|pwm_entity|num\(6),
	datad => VCC,
	cin => \Inst_top_level|pwm_entity|LessThan0~11_cout\,
	cout => \Inst_top_level|pwm_entity|LessThan0~13_cout\);

-- Location: LCCOMB_X17_Y13_N14
\Inst_top_level|pwm_entity|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|LessThan0~14_combout\ = (\Inst_top_level|pwm_entity|num\(7) & (\Inst_top_level|pwm_entity|LessThan0~13_cout\ & \Inst_top_level|pwm_entity|count8\(7))) # (!\Inst_top_level|pwm_entity|num\(7) & 
-- ((\Inst_top_level|pwm_entity|LessThan0~13_cout\) # (\Inst_top_level|pwm_entity|count8\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|pwm_entity|num\(7),
	datad => \Inst_top_level|pwm_entity|count8\(7),
	cin => \Inst_top_level|pwm_entity|LessThan0~13_cout\,
	combout => \Inst_top_level|pwm_entity|LessThan0~14_combout\);

-- Location: LCCOMB_X18_Y13_N0
\Inst_top_level|pwm_entity|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|pwm_entity|output~0_combout\ = !\Inst_top_level|pwm_entity|LessThan0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|pwm_entity|LessThan0~14_combout\,
	combout => \Inst_top_level|pwm_entity|output~0_combout\);

-- Location: FF_X18_Y13_N1
\Inst_top_level|pwm_entity|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|pwm_entity|output~0_combout\,
	clrn => \Inst_top_level|ALT_INV_sys_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|pwm_entity|output~q\);

-- Location: LCCOMB_X9_Y13_N2
\Inst_top_level|SRAM|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM|Selector5~0_combout\ = (\Inst_top_level|SRAM|fstate.read1~q\) # ((!\Inst_top_level|SRAM|fstate.ready~q\ & ((\Inst_top_level|SRAM_RW~q\) # (!\Inst_top_level|en_60ns|clk_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|fstate.ready~q\,
	datab => \Inst_top_level|SRAM_RW~q\,
	datac => \Inst_top_level|SRAM|fstate.read1~q\,
	datad => \Inst_top_level|en_60ns|clk_en~q\,
	combout => \Inst_top_level|SRAM|Selector5~0_combout\);

-- Location: LCCOMB_X9_Y13_N4
\Inst_top_level|SRAM|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM|Selector5~1_combout\ = (!\Inst_top_level|SRAM|fstate.write2~q\ & ((\Inst_top_level|SRAM|WE_n_reg~q\) # ((!\Inst_top_level|SRAM|fstate.read2~q\ & !\Inst_top_level|SRAM|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|fstate.write2~q\,
	datab => \Inst_top_level|SRAM|fstate.read2~q\,
	datac => \Inst_top_level|SRAM|WE_n_reg~q\,
	datad => \Inst_top_level|SRAM|Selector5~0_combout\,
	combout => \Inst_top_level|SRAM|Selector5~1_combout\);

-- Location: FF_X9_Y13_N5
\Inst_top_level|SRAM|WE_n_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|SRAM|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|WE_n_reg~q\);

-- Location: LCCOMB_X9_Y13_N6
\Inst_top_level|SRAM|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|SRAM|Selector1~0_combout\ = (\Inst_top_level|SRAM|fstate~12_combout\ & (((!\Inst_top_level|SRAM|fstate.read2~q\)) # (!\Inst_top_level|SRAM|fstate.ready~q\))) # (!\Inst_top_level|SRAM|fstate~12_combout\ & (\Inst_top_level|SRAM|OE_n_reg~q\ & 
-- ((!\Inst_top_level|SRAM|fstate.read2~q\) # (!\Inst_top_level|SRAM|fstate.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|SRAM|fstate~12_combout\,
	datab => \Inst_top_level|SRAM|fstate.ready~q\,
	datac => \Inst_top_level|SRAM|OE_n_reg~q\,
	datad => \Inst_top_level|SRAM|fstate.read2~q\,
	combout => \Inst_top_level|SRAM|Selector1~0_combout\);

-- Location: FF_X9_Y13_N7
\Inst_top_level|SRAM|OE_n_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|SRAM|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|SRAM|OE_n_reg~q\);

-- Location: LCCOMB_X7_Y12_N4
\Inst_top_level|lcd_entity|EN_sig~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|EN_sig~feeder_combout\ = \Inst_top_level|lcd_entity|state.enable~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|lcd_entity|state.enable~q\,
	combout => \Inst_top_level|lcd_entity|EN_sig~feeder_combout\);

-- Location: FF_X7_Y12_N5
\Inst_top_level|lcd_entity|EN_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|EN_sig~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|EN_sig~q\);

-- Location: LCCOMB_X11_Y11_N20
\Inst_top_level|lcd_entity|Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|lcd_entity|Mux62~1_combout\ = (\Inst_top_level|lcd_entity|byteSel\(5)) # ((!\Inst_top_level|lcd_entity|LessThan6~0_combout\ & ((\Inst_top_level|lcd_entity|Mux62~0_combout\) # (!\Inst_top_level|lcd_entity|byteSel\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|lcd_entity|Mux62~0_combout\,
	datab => \Inst_top_level|lcd_entity|byteSel\(5),
	datac => \Inst_top_level|lcd_entity|LessThan6~0_combout\,
	datad => \Inst_top_level|lcd_entity|byteSel\(4),
	combout => \Inst_top_level|lcd_entity|Mux62~1_combout\);

-- Location: FF_X11_Y11_N21
\Inst_top_level|lcd_entity|RS_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Inst_top_level|lcd_entity|clk_en~clkctrl_outclk\,
	d => \Inst_top_level|lcd_entity|Mux62~1_combout\,
	ena => \Inst_top_level|lcd_entity|ALT_INV_state.start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|lcd_entity|RS_sig~q\);

-- Location: IOIBUF_X96_Y0_N22
\GPIO[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(3),
	o => \GPIO[3]~input_o\);

-- Location: IOIBUF_X102_Y0_N22
\GPIO[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(4),
	o => \GPIO[4]~input_o\);

-- Location: IOIBUF_X96_Y0_N15
\GPIO[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(5),
	o => \GPIO[5]~input_o\);

-- Location: IOIBUF_X102_Y0_N15
\GPIO[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(6),
	o => \GPIO[6]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\GPIO[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(7),
	o => \GPIO[7]~input_o\);

-- Location: IOIBUF_X60_Y0_N15
\GPIO[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(8),
	o => \GPIO[8]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\GPIO[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(9),
	o => \GPIO[9]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\GPIO[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(10),
	o => \GPIO[10]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\GPIO[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(11),
	o => \GPIO[11]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\GPIO[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(12),
	o => \GPIO[12]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\GPIO[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(13),
	o => \GPIO[13]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\GPIO[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(14),
	o => \GPIO[14]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\GPIO[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(15),
	o => \GPIO[15]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\GPIO[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(16),
	o => \GPIO[16]~input_o\);

-- Location: IOIBUF_X109_Y0_N1
\GPIO[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(17),
	o => \GPIO[17]~input_o\);

-- Location: IOIBUF_X96_Y0_N8
\GPIO[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(18),
	o => \GPIO[18]~input_o\);

-- Location: IOIBUF_X87_Y0_N22
\GPIO[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(19),
	o => \GPIO[19]~input_o\);

-- Location: IOIBUF_X96_Y0_N1
\GPIO[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(20),
	o => \GPIO[20]~input_o\);

-- Location: IOIBUF_X111_Y0_N8
\GPIO[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(21),
	o => \GPIO[21]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\GPIO[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(22),
	o => \GPIO[22]~input_o\);

-- Location: IOIBUF_X100_Y0_N22
\GPIO[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(23),
	o => \GPIO[23]~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\GPIO[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(24),
	o => \GPIO[24]~input_o\);

-- Location: IOIBUF_X89_Y0_N8
\GPIO[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(25),
	o => \GPIO[25]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\GPIO[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(26),
	o => \GPIO[26]~input_o\);

-- Location: IOIBUF_X100_Y0_N15
\GPIO[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(27),
	o => \GPIO[27]~input_o\);

-- Location: IOIBUF_X79_Y0_N1
\GPIO[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(28),
	o => \GPIO[28]~input_o\);

-- Location: IOIBUF_X89_Y0_N1
\GPIO[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(29),
	o => \GPIO[29]~input_o\);

-- Location: IOIBUF_X85_Y0_N22
\GPIO[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(30),
	o => \GPIO[30]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\GPIO[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(31),
	o => \GPIO[31]~input_o\);

-- Location: IOIBUF_X85_Y0_N15
\GPIO[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(32),
	o => \GPIO[32]~input_o\);

-- Location: IOIBUF_X113_Y0_N1
\GPIO[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(33),
	o => \GPIO[33]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\GPIO[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(34),
	o => \GPIO[34]~input_o\);

-- Location: IOIBUF_X113_Y0_N8
\GPIO[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(35),
	o => \GPIO[35]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\LCD_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(0),
	o => \LCD_DATA[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\LCD_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(1),
	o => \LCD_DATA[1]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\LCD_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(2),
	o => \LCD_DATA[2]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\LCD_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(3),
	o => \LCD_DATA[3]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\LCD_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(4),
	o => \LCD_DATA[4]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\LCD_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(5),
	o => \LCD_DATA[5]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\LCD_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(6),
	o => \LCD_DATA[6]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\LCD_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(7),
	o => \LCD_DATA[7]~input_o\);

-- Location: IOIBUF_X107_Y0_N1
\GPIO[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(0),
	o => \GPIO[0]~input_o\);

-- Location: IOIBUF_X109_Y0_N8
\GPIO[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(2),
	o => \GPIO[2]~input_o\);

ww_SRAM_ADDR(0) <= \SRAM_ADDR[0]~output_o\;

ww_SRAM_ADDR(1) <= \SRAM_ADDR[1]~output_o\;

ww_SRAM_ADDR(2) <= \SRAM_ADDR[2]~output_o\;

ww_SRAM_ADDR(3) <= \SRAM_ADDR[3]~output_o\;

ww_SRAM_ADDR(4) <= \SRAM_ADDR[4]~output_o\;

ww_SRAM_ADDR(5) <= \SRAM_ADDR[5]~output_o\;

ww_SRAM_ADDR(6) <= \SRAM_ADDR[6]~output_o\;

ww_SRAM_ADDR(7) <= \SRAM_ADDR[7]~output_o\;

ww_SRAM_ADDR(8) <= \SRAM_ADDR[8]~output_o\;

ww_SRAM_ADDR(9) <= \SRAM_ADDR[9]~output_o\;

ww_SRAM_ADDR(10) <= \SRAM_ADDR[10]~output_o\;

ww_SRAM_ADDR(11) <= \SRAM_ADDR[11]~output_o\;

ww_SRAM_ADDR(12) <= \SRAM_ADDR[12]~output_o\;

ww_SRAM_ADDR(13) <= \SRAM_ADDR[13]~output_o\;

ww_SRAM_ADDR(14) <= \SRAM_ADDR[14]~output_o\;

ww_SRAM_ADDR(15) <= \SRAM_ADDR[15]~output_o\;

ww_SRAM_ADDR(16) <= \SRAM_ADDR[16]~output_o\;

ww_SRAM_ADDR(17) <= \SRAM_ADDR[17]~output_o\;

ww_SRAM_ADDR(18) <= \SRAM_ADDR[18]~output_o\;

ww_SRAM_ADDR(19) <= \SRAM_ADDR[19]~output_o\;

ww_SRAM_UB_N <= \SRAM_UB_N~output_o\;

ww_SRAM_LB_N <= \SRAM_LB_N~output_o\;

ww_SRAM_WE_N <= \SRAM_WE_N~output_o\;

ww_SRAM_CE_N <= \SRAM_CE_N~output_o\;

ww_SRAM_OE_N <= \SRAM_OE_N~output_o\;

ww_LCD_ON <= \LCD_ON~output_o\;

ww_LCD_BLON <= \LCD_BLON~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

ww_LCD_EN <= \LCD_EN~output_o\;

ww_LCD_RS <= \LCD_RS~output_o\;

GPIO(3) <= \GPIO[3]~output_o\;

GPIO(4) <= \GPIO[4]~output_o\;

GPIO(5) <= \GPIO[5]~output_o\;

GPIO(6) <= \GPIO[6]~output_o\;

GPIO(7) <= \GPIO[7]~output_o\;

GPIO(8) <= \GPIO[8]~output_o\;

GPIO(9) <= \GPIO[9]~output_o\;

GPIO(10) <= \GPIO[10]~output_o\;

GPIO(11) <= \GPIO[11]~output_o\;

GPIO(12) <= \GPIO[12]~output_o\;

GPIO(13) <= \GPIO[13]~output_o\;

GPIO(14) <= \GPIO[14]~output_o\;

GPIO(15) <= \GPIO[15]~output_o\;

GPIO(16) <= \GPIO[16]~output_o\;

GPIO(17) <= \GPIO[17]~output_o\;

GPIO(18) <= \GPIO[18]~output_o\;

GPIO(19) <= \GPIO[19]~output_o\;

GPIO(20) <= \GPIO[20]~output_o\;

GPIO(21) <= \GPIO[21]~output_o\;

GPIO(22) <= \GPIO[22]~output_o\;

GPIO(23) <= \GPIO[23]~output_o\;

GPIO(24) <= \GPIO[24]~output_o\;

GPIO(25) <= \GPIO[25]~output_o\;

GPIO(26) <= \GPIO[26]~output_o\;

GPIO(27) <= \GPIO[27]~output_o\;

GPIO(28) <= \GPIO[28]~output_o\;

GPIO(29) <= \GPIO[29]~output_o\;

GPIO(30) <= \GPIO[30]~output_o\;

GPIO(31) <= \GPIO[31]~output_o\;

GPIO(32) <= \GPIO[32]~output_o\;

GPIO(33) <= \GPIO[33]~output_o\;

GPIO(34) <= \GPIO[34]~output_o\;

GPIO(35) <= \GPIO[35]~output_o\;

SRAM_DQ(0) <= \SRAM_DQ[0]~output_o\;

SRAM_DQ(1) <= \SRAM_DQ[1]~output_o\;

SRAM_DQ(2) <= \SRAM_DQ[2]~output_o\;

SRAM_DQ(3) <= \SRAM_DQ[3]~output_o\;

SRAM_DQ(4) <= \SRAM_DQ[4]~output_o\;

SRAM_DQ(5) <= \SRAM_DQ[5]~output_o\;

SRAM_DQ(6) <= \SRAM_DQ[6]~output_o\;

SRAM_DQ(7) <= \SRAM_DQ[7]~output_o\;

SRAM_DQ(8) <= \SRAM_DQ[8]~output_o\;

SRAM_DQ(9) <= \SRAM_DQ[9]~output_o\;

SRAM_DQ(10) <= \SRAM_DQ[10]~output_o\;

SRAM_DQ(11) <= \SRAM_DQ[11]~output_o\;

SRAM_DQ(12) <= \SRAM_DQ[12]~output_o\;

SRAM_DQ(13) <= \SRAM_DQ[13]~output_o\;

SRAM_DQ(14) <= \SRAM_DQ[14]~output_o\;

SRAM_DQ(15) <= \SRAM_DQ[15]~output_o\;

LCD_DATA(0) <= \LCD_DATA[0]~output_o\;

LCD_DATA(1) <= \LCD_DATA[1]~output_o\;

LCD_DATA(2) <= \LCD_DATA[2]~output_o\;

LCD_DATA(3) <= \LCD_DATA[3]~output_o\;

LCD_DATA(4) <= \LCD_DATA[4]~output_o\;

LCD_DATA(5) <= \LCD_DATA[5]~output_o\;

LCD_DATA(6) <= \LCD_DATA[6]~output_o\;

LCD_DATA(7) <= \LCD_DATA[7]~output_o\;

GPIO(0) <= \GPIO[0]~output_o\;

GPIO(1) <= \GPIO[1]~output_o\;

GPIO(2) <= \GPIO[2]~output_o\;
END structure;


