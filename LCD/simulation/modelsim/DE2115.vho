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

-- DATE "02/14/2022 12:03:46"

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
	SW : IN std_logic_vector(17 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
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
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_ON	=>  Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_BLON	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_EN	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[0]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[1]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
-- LCD_DATA[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[1]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[2]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[3]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[4]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[5]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[6]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[7]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_LCD_BLON : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LCD|clk_en~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LCD|Add0~10_combout\ : std_logic;
SIGNAL \LCD|Add0~23\ : std_logic;
SIGNAL \LCD|Add0~24_combout\ : std_logic;
SIGNAL \LCD|Add0~25\ : std_logic;
SIGNAL \LCD|Add0~26_combout\ : std_logic;
SIGNAL \LCD|Add0~27\ : std_logic;
SIGNAL \LCD|Add0~28_combout\ : std_logic;
SIGNAL \LCD|Add0~29\ : std_logic;
SIGNAL \LCD|Add0~30_combout\ : std_logic;
SIGNAL \LCD|Equal39~0_combout\ : std_logic;
SIGNAL \LCD|clk_cnt~0_combout\ : std_logic;
SIGNAL \LCD|clk_cnt~1_combout\ : std_logic;
SIGNAL \LCD|second_line[2][24]~0_combout\ : std_logic;
SIGNAL \LCD|second_line[2][32]~2_combout\ : std_logic;
SIGNAL \LCD|Mux70~63_combout\ : std_logic;
SIGNAL \LCD|second_line[2][33]~4_combout\ : std_logic;
SIGNAL \LCD|second_line[2][17]~6_combout\ : std_logic;
SIGNAL \LCD|second_line[2][41]~7_combout\ : std_logic;
SIGNAL \LCD|Mux68~12_combout\ : std_logic;
SIGNAL \LCD|Mux68~13_combout\ : std_logic;
SIGNAL \LCD|Mux68~23_combout\ : std_logic;
SIGNAL \LCD|Mux67~3_combout\ : std_logic;
SIGNAL \LCD|Mux65~2_combout\ : std_logic;
SIGNAL \LCD|Mux70~51_combout\ : std_logic;
SIGNAL \LCD|Mux70~104_combout\ : std_logic;
SIGNAL \LCD|Mux70~55_combout\ : std_logic;
SIGNAL \LCD|Mux70~105_combout\ : std_logic;
SIGNAL \LCD|Mux68~31_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \GPIO[0]~input_o\ : std_logic;
SIGNAL \GPIO[1]~input_o\ : std_logic;
SIGNAL \GPIO[2]~input_o\ : std_logic;
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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \GPIO[0]~output_o\ : std_logic;
SIGNAL \GPIO[1]~output_o\ : std_logic;
SIGNAL \GPIO[2]~output_o\ : std_logic;
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
SIGNAL \LCD_DATA[0]~output_o\ : std_logic;
SIGNAL \LCD_DATA[1]~output_o\ : std_logic;
SIGNAL \LCD_DATA[2]~output_o\ : std_logic;
SIGNAL \LCD_DATA[3]~output_o\ : std_logic;
SIGNAL \LCD_DATA[4]~output_o\ : std_logic;
SIGNAL \LCD_DATA[5]~output_o\ : std_logic;
SIGNAL \LCD_DATA[6]~output_o\ : std_logic;
SIGNAL \LCD_DATA[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \LCD_ON~output_o\ : std_logic;
SIGNAL \LCD_BLON~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \LCD_EN~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \LCD|Add0~0_combout\ : std_logic;
SIGNAL \LCD|clk_cnt~6_combout\ : std_logic;
SIGNAL \LCD|Add0~1\ : std_logic;
SIGNAL \LCD|Add0~2_combout\ : std_logic;
SIGNAL \LCD|clk_cnt~5_combout\ : std_logic;
SIGNAL \LCD|Add0~3\ : std_logic;
SIGNAL \LCD|Add0~4_combout\ : std_logic;
SIGNAL \LCD|Add0~5\ : std_logic;
SIGNAL \LCD|Add0~7\ : std_logic;
SIGNAL \LCD|Add0~8_combout\ : std_logic;
SIGNAL \LCD|Add0~9\ : std_logic;
SIGNAL \LCD|Add0~11\ : std_logic;
SIGNAL \LCD|Add0~12_combout\ : std_logic;
SIGNAL \LCD|clk_cnt~4_combout\ : std_logic;
SIGNAL \LCD|Add0~13\ : std_logic;
SIGNAL \LCD|Add0~14_combout\ : std_logic;
SIGNAL \LCD|clk_cnt~3_combout\ : std_logic;
SIGNAL \LCD|Equal39~2_combout\ : std_logic;
SIGNAL \LCD|Add0~15\ : std_logic;
SIGNAL \LCD|Add0~16_combout\ : std_logic;
SIGNAL \LCD|Add0~17\ : std_logic;
SIGNAL \LCD|Add0~18_combout\ : std_logic;
SIGNAL \LCD|clk_cnt~2_combout\ : std_logic;
SIGNAL \LCD|Add0~19\ : std_logic;
SIGNAL \LCD|Add0~20_combout\ : std_logic;
SIGNAL \LCD|Add0~21\ : std_logic;
SIGNAL \LCD|Add0~22_combout\ : std_logic;
SIGNAL \LCD|Equal39~1_combout\ : std_logic;
SIGNAL \LCD|Add0~6_combout\ : std_logic;
SIGNAL \LCD|Equal39~3_combout\ : std_logic;
SIGNAL \LCD|Equal39~4_combout\ : std_logic;
SIGNAL \LCD|clk_en~feeder_combout\ : std_logic;
SIGNAL \LCD|clk_en~q\ : std_logic;
SIGNAL \LCD|clk_en~clkctrl_outclk\ : std_logic;
SIGNAL \LCD|byteSel[0]~7_combout\ : std_logic;
SIGNAL \LCD|LessThan6~0_combout\ : std_logic;
SIGNAL \LCD|byteSel[4]~15_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \LCD|state.start~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \LCD|state.start~q\ : std_logic;
SIGNAL \LCD|state.enable~0_combout\ : std_logic;
SIGNAL \LCD|state.enable~q\ : std_logic;
SIGNAL \LCD|state.repeat~q\ : std_logic;
SIGNAL \LCD|byteSel[5]~19_combout\ : std_logic;
SIGNAL \LCD|LessThan6~1_combout\ : std_logic;
SIGNAL \LCD|byteSel[0]~8\ : std_logic;
SIGNAL \LCD|byteSel[1]~9_combout\ : std_logic;
SIGNAL \LCD|byteSel[1]~10\ : std_logic;
SIGNAL \LCD|byteSel[2]~11_combout\ : std_logic;
SIGNAL \LCD|byteSel[2]~12\ : std_logic;
SIGNAL \LCD|byteSel[3]~13_combout\ : std_logic;
SIGNAL \LCD|byteSel[3]~14\ : std_logic;
SIGNAL \LCD|byteSel[4]~16\ : std_logic;
SIGNAL \LCD|byteSel[5]~17_combout\ : std_logic;
SIGNAL \LCD|Mux70~61_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \LCD|second_line[2][16]~3_combout\ : std_logic;
SIGNAL \LCD|Mux70~59_combout\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \LCD|second_line[2][40]~1_combout\ : std_logic;
SIGNAL \LCD|Mux70~58_combout\ : std_logic;
SIGNAL \LCD|Mux70~60_combout\ : std_logic;
SIGNAL \LCD|Mux70~62_combout\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \LCD|Mux70~68_combout\ : std_logic;
SIGNAL \LCD|Mux70~48_combout\ : std_logic;
SIGNAL \LCD|Mux70~103_combout\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \LCD|Mux1~0_combout\ : std_logic;
SIGNAL \LCD|Mux70~93_combout\ : std_logic;
SIGNAL \LCD|Mux33~0_combout\ : std_logic;
SIGNAL \LCD|Mux70~92_combout\ : std_logic;
SIGNAL \LCD|Mux70~65_combout\ : std_logic;
SIGNAL \LCD|Mux70~67_combout\ : std_logic;
SIGNAL \LCD|Mux70~69_combout\ : std_logic;
SIGNAL \LCD|Mux70~70_combout\ : std_logic;
SIGNAL \LCD|data_o[0]~1_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \LCD|second_line[2][25]~5_combout\ : std_logic;
SIGNAL \LCD|Mux70~72_combout\ : std_logic;
SIGNAL \LCD|Mux69~10_combout\ : std_logic;
SIGNAL \LCD|Mux69~4_combout\ : std_logic;
SIGNAL \LCD|Mux70~73_combout\ : std_logic;
SIGNAL \LCD|Mux69~5_combout\ : std_logic;
SIGNAL \LCD|Mux69~6_combout\ : std_logic;
SIGNAL \LCD|Mux69~7_combout\ : std_logic;
SIGNAL \LCD|Mux69~8_combout\ : std_logic;
SIGNAL \LCD|Mux70~71_combout\ : std_logic;
SIGNAL \LCD|Mux68~8_combout\ : std_logic;
SIGNAL \LCD|Mux68~32_combout\ : std_logic;
SIGNAL \LCD|Mux68~9_combout\ : std_logic;
SIGNAL \LCD|Mux68~10_combout\ : std_logic;
SIGNAL \LCD|Mux69~2_combout\ : std_logic;
SIGNAL \LCD|Mux69~3_combout\ : std_logic;
SIGNAL \LCD|Mux69~9_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \LCD|Mux68~26_combout\ : std_logic;
SIGNAL \LCD|Mux68~24_combout\ : std_logic;
SIGNAL \LCD|Mux68~25_combout\ : std_logic;
SIGNAL \LCD|Mux68~29_combout\ : std_logic;
SIGNAL \LCD|Mux68~20_combout\ : std_logic;
SIGNAL \LCD|Mux68~21_combout\ : std_logic;
SIGNAL \LCD|Mux68~22_combout\ : std_logic;
SIGNAL \LCD|Mux68~27_combout\ : std_logic;
SIGNAL \LCD|Mux68~14_combout\ : std_logic;
SIGNAL \LCD|Mux68~15_combout\ : std_logic;
SIGNAL \LCD|Mux68~16_combout\ : std_logic;
SIGNAL \LCD|Mux70~106_combout\ : std_logic;
SIGNAL \LCD|Mux70~64_combout\ : std_logic;
SIGNAL \LCD|Mux68~17_combout\ : std_logic;
SIGNAL \LCD|Mux68~18_combout\ : std_logic;
SIGNAL \LCD|Mux68~19_combout\ : std_logic;
SIGNAL \LCD|Mux68~28_combout\ : std_logic;
SIGNAL \LCD|Mux67~2_combout\ : std_logic;
SIGNAL \LCD|Mux37~2_combout\ : std_logic;
SIGNAL \LCD|Mux37~3_combout\ : std_logic;
SIGNAL \LCD|Mux44~0_combout\ : std_logic;
SIGNAL \LCD|Mux44~1_combout\ : std_logic;
SIGNAL \LCD|Mux70~78_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \LCD|Mux51~0_combout\ : std_logic;
SIGNAL \LCD|Mux70~79_combout\ : std_logic;
SIGNAL \LCD|Mux67~4_combout\ : std_logic;
SIGNAL \LCD|Mux70~75_combout\ : std_logic;
SIGNAL \LCD|Mux70~94_combout\ : std_logic;
SIGNAL \LCD|Mux67~0_combout\ : std_logic;
SIGNAL \LCD|Mux70~66_combout\ : std_logic;
SIGNAL \LCD|Mux70~74_combout\ : std_logic;
SIGNAL \LCD|Mux68~30_combout\ : std_logic;
SIGNAL \LCD|Mux70~76_combout\ : std_logic;
SIGNAL \LCD|Mux70~77_combout\ : std_logic;
SIGNAL \LCD|Mux67~1_combout\ : std_logic;
SIGNAL \LCD|Mux67~5_combout\ : std_logic;
SIGNAL \LCD|Mux68~11_combout\ : std_logic;
SIGNAL \LCD|Mux70~95_combout\ : std_logic;
SIGNAL \LCD|Mux70~80_combout\ : std_logic;
SIGNAL \LCD|Mux66~0_combout\ : std_logic;
SIGNAL \LCD|Mux70~81_combout\ : std_logic;
SIGNAL \LCD|Mux70~82_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \LCD|Mux64~0_combout\ : std_logic;
SIGNAL \LCD|Mux66~1_combout\ : std_logic;
SIGNAL \LCD|Mux66~2_combout\ : std_logic;
SIGNAL \LCD|Mux70~83_combout\ : std_logic;
SIGNAL \LCD|Mux70~84_combout\ : std_logic;
SIGNAL \LCD|Mux70~96_combout\ : std_logic;
SIGNAL \LCD|Mux70~97_combout\ : std_logic;
SIGNAL \LCD|Mux66~3_combout\ : std_logic;
SIGNAL \LCD|Mux66~4_combout\ : std_logic;
SIGNAL \LCD|Mux66~5_combout\ : std_logic;
SIGNAL \LCD|Mux70~99_combout\ : std_logic;
SIGNAL \LCD|Mux70~85_combout\ : std_logic;
SIGNAL \LCD|Mux70~86_combout\ : std_logic;
SIGNAL \LCD|Mux70~98_combout\ : std_logic;
SIGNAL \LCD|Mux70~101_combout\ : std_logic;
SIGNAL \LCD|Mux70~87_combout\ : std_logic;
SIGNAL \LCD|Mux65~0_combout\ : std_logic;
SIGNAL \LCD|Mux65~1_combout\ : std_logic;
SIGNAL \LCD|Mux65~6_combout\ : std_logic;
SIGNAL \LCD|Mux65~7_combout\ : std_logic;
SIGNAL \LCD|LessThan3~0_combout\ : std_logic;
SIGNAL \LCD|Mux65~3_combout\ : std_logic;
SIGNAL \LCD|Mux65~4_combout\ : std_logic;
SIGNAL \LCD|Mux65~5_combout\ : std_logic;
SIGNAL \LCD|Mux65~8_combout\ : std_logic;
SIGNAL \LCD|Mux65~9_combout\ : std_logic;
SIGNAL \LCD|Mux64~2_combout\ : std_logic;
SIGNAL \LCD|Mux64~3_combout\ : std_logic;
SIGNAL \LCD|LessThan2~0_combout\ : std_logic;
SIGNAL \LCD|Mux70~102_combout\ : std_logic;
SIGNAL \LCD|LessThan4~0_combout\ : std_logic;
SIGNAL \LCD|Mux70~88_combout\ : std_logic;
SIGNAL \LCD|Mux70~89_combout\ : std_logic;
SIGNAL \LCD|Mux70~90_combout\ : std_logic;
SIGNAL \LCD|Mux64~1_combout\ : std_logic;
SIGNAL \LCD|Mux70~91_combout\ : std_logic;
SIGNAL \LCD|Mux70~100_combout\ : std_logic;
SIGNAL \LCD|Mux64~5_combout\ : std_logic;
SIGNAL \LCD|Mux64~4_combout\ : std_logic;
SIGNAL \LCD|Mux64~6_combout\ : std_logic;
SIGNAL \LCD|Mux64~7_combout\ : std_logic;
SIGNAL \LCD|Mux64~8_combout\ : std_logic;
SIGNAL \LCD|Mux63~0_combout\ : std_logic;
SIGNAL \LCD|Mux63~1_combout\ : std_logic;
SIGNAL \LCD|EN_sig~q\ : std_logic;
SIGNAL \LCD|RS_sig~0_combout\ : std_logic;
SIGNAL \LCD|RS_sig~1_combout\ : std_logic;
SIGNAL \LCD|RS_sig~2_combout\ : std_logic;
SIGNAL \LCD|RS_sig~q\ : std_logic;
SIGNAL \LCD|byteSel\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \LCD|clk_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \LCD|data_o\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
LCD_ON <= ww_LCD_ON;
LCD_BLON <= ww_LCD_BLON;
LCD_RW <= ww_LCD_RW;
LCD_EN <= ww_LCD_EN;
LCD_RS <= ww_LCD_RS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\LCD|clk_en~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \LCD|clk_en~q\);

-- Location: LCCOMB_X55_Y72_N10
\LCD|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~10_combout\ = (\LCD|clk_cnt\(5) & (!\LCD|Add0~9\)) # (!\LCD|clk_cnt\(5) & ((\LCD|Add0~9\) # (GND)))
-- \LCD|Add0~11\ = CARRY((!\LCD|Add0~9\) # (!\LCD|clk_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_cnt\(5),
	datad => VCC,
	cin => \LCD|Add0~9\,
	combout => \LCD|Add0~10_combout\,
	cout => \LCD|Add0~11\);

-- Location: LCCOMB_X55_Y72_N22
\LCD|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~22_combout\ = (\LCD|clk_cnt\(11) & (!\LCD|Add0~21\)) # (!\LCD|clk_cnt\(11) & ((\LCD|Add0~21\) # (GND)))
-- \LCD|Add0~23\ = CARRY((!\LCD|Add0~21\) # (!\LCD|clk_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_cnt\(11),
	datad => VCC,
	cin => \LCD|Add0~21\,
	combout => \LCD|Add0~22_combout\,
	cout => \LCD|Add0~23\);

-- Location: LCCOMB_X55_Y72_N24
\LCD|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~24_combout\ = (\LCD|clk_cnt\(12) & (\LCD|Add0~23\ $ (GND))) # (!\LCD|clk_cnt\(12) & (!\LCD|Add0~23\ & VCC))
-- \LCD|Add0~25\ = CARRY((\LCD|clk_cnt\(12) & !\LCD|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_cnt\(12),
	datad => VCC,
	cin => \LCD|Add0~23\,
	combout => \LCD|Add0~24_combout\,
	cout => \LCD|Add0~25\);

-- Location: LCCOMB_X55_Y72_N26
\LCD|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~26_combout\ = (\LCD|clk_cnt\(13) & (!\LCD|Add0~25\)) # (!\LCD|clk_cnt\(13) & ((\LCD|Add0~25\) # (GND)))
-- \LCD|Add0~27\ = CARRY((!\LCD|Add0~25\) # (!\LCD|clk_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_cnt\(13),
	datad => VCC,
	cin => \LCD|Add0~25\,
	combout => \LCD|Add0~26_combout\,
	cout => \LCD|Add0~27\);

-- Location: LCCOMB_X55_Y72_N28
\LCD|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~28_combout\ = (\LCD|clk_cnt\(14) & (\LCD|Add0~27\ $ (GND))) # (!\LCD|clk_cnt\(14) & (!\LCD|Add0~27\ & VCC))
-- \LCD|Add0~29\ = CARRY((\LCD|clk_cnt\(14) & !\LCD|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_cnt\(14),
	datad => VCC,
	cin => \LCD|Add0~27\,
	combout => \LCD|Add0~28_combout\,
	cout => \LCD|Add0~29\);

-- Location: LCCOMB_X55_Y72_N30
\LCD|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~30_combout\ = \LCD|Add0~29\ $ (\LCD|clk_cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LCD|clk_cnt\(15),
	cin => \LCD|Add0~29\,
	combout => \LCD|Add0~30_combout\);

-- Location: FF_X56_Y72_N27
\LCD|clk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_cnt\(15));

-- Location: FF_X56_Y72_N7
\LCD|clk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_cnt\(13));

-- Location: FF_X55_Y72_N29
\LCD|clk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_cnt\(14));

-- Location: FF_X55_Y72_N25
\LCD|clk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_cnt\(12));

-- Location: LCCOMB_X56_Y72_N12
\LCD|Equal39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Equal39~0_combout\ = (\LCD|clk_cnt\(13) & (!\LCD|clk_cnt\(14) & (\LCD|clk_cnt\(15) & !\LCD|clk_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_cnt\(13),
	datab => \LCD|clk_cnt\(14),
	datac => \LCD|clk_cnt\(15),
	datad => \LCD|clk_cnt\(12),
	combout => \LCD|Equal39~0_combout\);

-- Location: FF_X55_Y72_N11
\LCD|clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_cnt\(5));

-- Location: LCCOMB_X56_Y72_N26
\LCD|clk_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_cnt~0_combout\ = (!\LCD|Equal39~4_combout\ & \LCD|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Equal39~4_combout\,
	datad => \LCD|Add0~30_combout\,
	combout => \LCD|clk_cnt~0_combout\);

-- Location: LCCOMB_X56_Y72_N6
\LCD|clk_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_cnt~1_combout\ = (!\LCD|Equal39~4_combout\ & \LCD|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Equal39~4_combout\,
	datac => \LCD|Add0~26_combout\,
	combout => \LCD|clk_cnt~1_combout\);

-- Location: LCCOMB_X113_Y11_N24
\LCD|second_line[2][24]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|second_line[2][24]~0_combout\ = \SW[4]~input_o\ $ (((\SW[7]~input_o\ & ((\SW[5]~input_o\) # (\SW[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \LCD|second_line[2][24]~0_combout\);

-- Location: LCCOMB_X114_Y12_N24
\LCD|second_line[2][32]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|second_line[2][32]~2_combout\ = \SW[8]~input_o\ $ (((\SW[11]~input_o\ & ((\SW[10]~input_o\) # (\SW[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \LCD|second_line[2][32]~2_combout\);

-- Location: LCCOMB_X109_Y11_N0
\LCD|Mux70~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~63_combout\ = (!\LCD|byteSel\(4) & (\LCD|byteSel\(5) & (\SW[16]~input_o\ $ (\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \LCD|byteSel\(4),
	datad => \LCD|byteSel\(5),
	combout => \LCD|Mux70~63_combout\);

-- Location: LCCOMB_X114_Y12_N20
\LCD|second_line[2][33]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|second_line[2][33]~4_combout\ = (\SW[8]~input_o\ & (((\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[11]~input_o\ & (\SW[10]~input_o\ & !\SW[9]~input_o\)) # (!\SW[11]~input_o\ & ((\SW[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \LCD|second_line[2][33]~4_combout\);

-- Location: LCCOMB_X114_Y12_N10
\LCD|second_line[2][17]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|second_line[2][17]~6_combout\ = (\SW[3]~input_o\ & ((\SW[1]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ & !\SW[0]~input_o\)))) # (!\SW[3]~input_o\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \LCD|second_line[2][17]~6_combout\);

-- Location: LCCOMB_X112_Y11_N30
\LCD|second_line[2][41]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|second_line[2][41]~7_combout\ = (\SW[12]~input_o\ & (\SW[13]~input_o\)) # (!\SW[12]~input_o\ & ((\SW[13]~input_o\ & (!\SW[15]~input_o\)) # (!\SW[13]~input_o\ & (\SW[15]~input_o\ & \SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \LCD|second_line[2][41]~7_combout\);

-- Location: LCCOMB_X112_Y12_N0
\LCD|Mux68~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~12_combout\ = (!\SW[17]~input_o\ & \LCD|byteSel\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datad => \LCD|byteSel\(3),
	combout => \LCD|Mux68~12_combout\);

-- Location: LCCOMB_X109_Y12_N12
\LCD|Mux68~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~13_combout\ = (\LCD|byteSel\(1) & ((\LCD|Mux68~12_combout\ $ (\LCD|byteSel\(0))))) # (!\LCD|byteSel\(1) & (\LCD|Mux68~12_combout\ & (\SW[16]~input_o\ $ (!\LCD|byteSel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(1),
	datab => \SW[16]~input_o\,
	datac => \LCD|Mux68~12_combout\,
	datad => \LCD|byteSel\(0),
	combout => \LCD|Mux68~13_combout\);

-- Location: LCCOMB_X113_Y12_N6
\LCD|Mux68~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~23_combout\ = (\SW[6]~input_o\ & (((\SW[5]~input_o\) # (\SW[4]~input_o\)) # (!\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \LCD|Mux68~23_combout\);

-- Location: LCCOMB_X111_Y11_N22
\LCD|Mux67~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~3_combout\ = (\LCD|Mux33~0_combout\ & (!\SW[1]~input_o\ & (!\SW[2]~input_o\ & !\LCD|byteSel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux33~0_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \LCD|byteSel\(2),
	combout => \LCD|Mux67~3_combout\);

-- Location: LCCOMB_X108_Y12_N12
\LCD|Mux65~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~2_combout\ = (!\SW[16]~input_o\ & (!\SW[17]~input_o\ & !\LCD|byteSel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \LCD|byteSel\(1),
	combout => \LCD|Mux65~2_combout\);

-- Location: LCCOMB_X111_Y11_N0
\LCD|Mux70~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~51_combout\ = (\LCD|byteSel\(0) & ((\LCD|byteSel\(1)) # ((!\SW[16]~input_o\ & !\SW[17]~input_o\)))) # (!\LCD|byteSel\(0) & ((\SW[17]~input_o\ & (\SW[16]~input_o\)) # (!\SW[17]~input_o\ & ((\LCD|byteSel\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \LCD|byteSel\(0),
	datac => \SW[17]~input_o\,
	datad => \LCD|byteSel\(1),
	combout => \LCD|Mux70~51_combout\);

-- Location: LCCOMB_X111_Y11_N30
\LCD|Mux70~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~104_combout\ = (!\LCD|byteSel\(3) & \LCD|Mux70~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|byteSel\(3),
	datad => \LCD|Mux70~51_combout\,
	combout => \LCD|Mux70~104_combout\);

-- Location: LCCOMB_X110_Y12_N26
\LCD|Mux70~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~55_combout\ = (\SW[16]~input_o\ & (\LCD|byteSel\(0) & !\SW[17]~input_o\)) # (!\SW[16]~input_o\ & ((\LCD|byteSel\(0)) # (!\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \LCD|byteSel\(0),
	datad => \SW[17]~input_o\,
	combout => \LCD|Mux70~55_combout\);

-- Location: LCCOMB_X110_Y12_N12
\LCD|Mux70~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~105_combout\ = (\LCD|byteSel\(3) & ((\LCD|Mux70~55_combout\) # (\LCD|byteSel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(3),
	datac => \LCD|Mux70~55_combout\,
	datad => \LCD|byteSel\(1),
	combout => \LCD|Mux70~105_combout\);

-- Location: LCCOMB_X107_Y12_N12
\LCD|Mux68~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~31_combout\ = (\LCD|byteSel\(3) & (\LCD|byteSel\(0) & ((\LCD|byteSel\(1))))) # (!\LCD|byteSel\(3) & (!\SW[16]~input_o\ & ((\LCD|byteSel\(0)) # (\LCD|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(0),
	datab => \LCD|byteSel\(3),
	datac => \SW[16]~input_o\,
	datad => \LCD|byteSel\(1),
	combout => \LCD|Mux68~31_combout\);

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

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

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

-- Location: IOOBUF_X107_Y0_N2
\GPIO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
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
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[1]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\GPIO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[2]~output_o\);

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

-- Location: IOOBUF_X0_Y52_N16
\LCD_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|data_o\(0),
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
	i => \LCD|data_o\(1),
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
	i => \LCD|data_o\(2),
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
	i => \LCD|data_o\(3),
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
	i => \LCD|data_o\(4),
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
	i => \LCD|data_o\(5),
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
	i => \LCD|data_o\(6),
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
	i => \LCD|data_o\(7),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

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
	i => \LCD|EN_sig~q\,
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
	i => \LCD|RS_sig~q\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: LCCOMB_X55_Y72_N0
\LCD|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~0_combout\ = \LCD|clk_cnt\(0) $ (VCC)
-- \LCD|Add0~1\ = CARRY(\LCD|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_cnt\(0),
	datad => VCC,
	combout => \LCD|Add0~0_combout\,
	cout => \LCD|Add0~1\);

-- Location: LCCOMB_X56_Y72_N10
\LCD|clk_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_cnt~6_combout\ = (\LCD|Add0~0_combout\ & !\LCD|Equal39~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|Add0~0_combout\,
	datac => \LCD|Equal39~4_combout\,
	combout => \LCD|clk_cnt~6_combout\);

-- Location: FF_X55_Y72_N1
\LCD|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \LCD|clk_cnt~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_cnt\(0));

-- Location: LCCOMB_X55_Y72_N2
\LCD|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~2_combout\ = (\LCD|clk_cnt\(1) & (!\LCD|Add0~1\)) # (!\LCD|clk_cnt\(1) & ((\LCD|Add0~1\) # (GND)))
-- \LCD|Add0~3\ = CARRY((!\LCD|Add0~1\) # (!\LCD|clk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_cnt\(1),
	datad => VCC,
	cin => \LCD|Add0~1\,
	combout => \LCD|Add0~2_combout\,
	cout => \LCD|Add0~3\);

-- Location: LCCOMB_X56_Y72_N8
\LCD|clk_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_cnt~5_combout\ = (!\LCD|Equal39~4_combout\ & \LCD|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Equal39~4_combout\,
	datad => \LCD|Add0~2_combout\,
	combout => \LCD|clk_cnt~5_combout\);

-- Location: FF_X55_Y72_N3
\LCD|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \LCD|clk_cnt~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_cnt\(1));

-- Location: LCCOMB_X55_Y72_N4
\LCD|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~4_combout\ = (\LCD|clk_cnt\(2) & (\LCD|Add0~3\ $ (GND))) # (!\LCD|clk_cnt\(2) & (!\LCD|Add0~3\ & VCC))
-- \LCD|Add0~5\ = CARRY((\LCD|clk_cnt\(2) & !\LCD|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_cnt\(2),
	datad => VCC,
	cin => \LCD|Add0~3\,
	combout => \LCD|Add0~4_combout\,
	cout => \LCD|Add0~5\);

-- Location: FF_X55_Y72_N5
\LCD|clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_cnt\(2));

-- Location: LCCOMB_X55_Y72_N6
\LCD|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~6_combout\ = (\LCD|clk_cnt\(3) & (!\LCD|Add0~5\)) # (!\LCD|clk_cnt\(3) & ((\LCD|Add0~5\) # (GND)))
-- \LCD|Add0~7\ = CARRY((!\LCD|Add0~5\) # (!\LCD|clk_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_cnt\(3),
	datad => VCC,
	cin => \LCD|Add0~5\,
	combout => \LCD|Add0~6_combout\,
	cout => \LCD|Add0~7\);

-- Location: LCCOMB_X55_Y72_N8
\LCD|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~8_combout\ = (\LCD|clk_cnt\(4) & (\LCD|Add0~7\ $ (GND))) # (!\LCD|clk_cnt\(4) & (!\LCD|Add0~7\ & VCC))
-- \LCD|Add0~9\ = CARRY((\LCD|clk_cnt\(4) & !\LCD|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_cnt\(4),
	datad => VCC,
	cin => \LCD|Add0~7\,
	combout => \LCD|Add0~8_combout\,
	cout => \LCD|Add0~9\);

-- Location: FF_X55_Y72_N9
\LCD|clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_cnt\(4));

-- Location: LCCOMB_X55_Y72_N12
\LCD|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~12_combout\ = (\LCD|clk_cnt\(6) & (\LCD|Add0~11\ $ (GND))) # (!\LCD|clk_cnt\(6) & (!\LCD|Add0~11\ & VCC))
-- \LCD|Add0~13\ = CARRY((\LCD|clk_cnt\(6) & !\LCD|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_cnt\(6),
	datad => VCC,
	cin => \LCD|Add0~11\,
	combout => \LCD|Add0~12_combout\,
	cout => \LCD|Add0~13\);

-- Location: LCCOMB_X56_Y72_N18
\LCD|clk_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_cnt~4_combout\ = (!\LCD|Equal39~4_combout\ & \LCD|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Equal39~4_combout\,
	datad => \LCD|Add0~12_combout\,
	combout => \LCD|clk_cnt~4_combout\);

-- Location: FF_X56_Y72_N19
\LCD|clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_cnt\(6));

-- Location: LCCOMB_X55_Y72_N14
\LCD|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~14_combout\ = (\LCD|clk_cnt\(7) & (!\LCD|Add0~13\)) # (!\LCD|clk_cnt\(7) & ((\LCD|Add0~13\) # (GND)))
-- \LCD|Add0~15\ = CARRY((!\LCD|Add0~13\) # (!\LCD|clk_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_cnt\(7),
	datad => VCC,
	cin => \LCD|Add0~13\,
	combout => \LCD|Add0~14_combout\,
	cout => \LCD|Add0~15\);

-- Location: LCCOMB_X56_Y72_N30
\LCD|clk_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_cnt~3_combout\ = (!\LCD|Equal39~4_combout\ & \LCD|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Equal39~4_combout\,
	datad => \LCD|Add0~14_combout\,
	combout => \LCD|clk_cnt~3_combout\);

-- Location: FF_X56_Y72_N31
\LCD|clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_cnt\(7));

-- Location: LCCOMB_X56_Y72_N20
\LCD|Equal39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Equal39~2_combout\ = (!\LCD|clk_cnt\(5) & (\LCD|clk_cnt\(6) & (\LCD|clk_cnt\(7) & !\LCD|clk_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_cnt\(5),
	datab => \LCD|clk_cnt\(6),
	datac => \LCD|clk_cnt\(7),
	datad => \LCD|clk_cnt\(4),
	combout => \LCD|Equal39~2_combout\);

-- Location: LCCOMB_X55_Y72_N16
\LCD|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~16_combout\ = (\LCD|clk_cnt\(8) & (\LCD|Add0~15\ $ (GND))) # (!\LCD|clk_cnt\(8) & (!\LCD|Add0~15\ & VCC))
-- \LCD|Add0~17\ = CARRY((\LCD|clk_cnt\(8) & !\LCD|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_cnt\(8),
	datad => VCC,
	cin => \LCD|Add0~15\,
	combout => \LCD|Add0~16_combout\,
	cout => \LCD|Add0~17\);

-- Location: FF_X55_Y72_N17
\LCD|clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_cnt\(8));

-- Location: LCCOMB_X55_Y72_N18
\LCD|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~18_combout\ = (\LCD|clk_cnt\(9) & (!\LCD|Add0~17\)) # (!\LCD|clk_cnt\(9) & ((\LCD|Add0~17\) # (GND)))
-- \LCD|Add0~19\ = CARRY((!\LCD|Add0~17\) # (!\LCD|clk_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_cnt\(9),
	datad => VCC,
	cin => \LCD|Add0~17\,
	combout => \LCD|Add0~18_combout\,
	cout => \LCD|Add0~19\);

-- Location: LCCOMB_X56_Y72_N28
\LCD|clk_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_cnt~2_combout\ = (!\LCD|Equal39~4_combout\ & \LCD|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Equal39~4_combout\,
	datad => \LCD|Add0~18_combout\,
	combout => \LCD|clk_cnt~2_combout\);

-- Location: FF_X56_Y72_N29
\LCD|clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_cnt\(9));

-- Location: LCCOMB_X55_Y72_N20
\LCD|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~20_combout\ = (\LCD|clk_cnt\(10) & (\LCD|Add0~19\ $ (GND))) # (!\LCD|clk_cnt\(10) & (!\LCD|Add0~19\ & VCC))
-- \LCD|Add0~21\ = CARRY((\LCD|clk_cnt\(10) & !\LCD|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_cnt\(10),
	datad => VCC,
	cin => \LCD|Add0~19\,
	combout => \LCD|Add0~20_combout\,
	cout => \LCD|Add0~21\);

-- Location: FF_X55_Y72_N21
\LCD|clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_cnt\(10));

-- Location: FF_X55_Y72_N23
\LCD|clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_cnt\(11));

-- Location: LCCOMB_X56_Y72_N14
\LCD|Equal39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Equal39~1_combout\ = (\LCD|clk_cnt\(9) & (!\LCD|clk_cnt\(10) & (!\LCD|clk_cnt\(8) & !\LCD|clk_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_cnt\(9),
	datab => \LCD|clk_cnt\(10),
	datac => \LCD|clk_cnt\(8),
	datad => \LCD|clk_cnt\(11),
	combout => \LCD|Equal39~1_combout\);

-- Location: FF_X55_Y72_N7
\LCD|clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_cnt\(3));

-- Location: LCCOMB_X56_Y72_N16
\LCD|Equal39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Equal39~3_combout\ = (!\LCD|clk_cnt\(0) & (!\LCD|clk_cnt\(2) & (!\LCD|clk_cnt\(3) & \LCD|clk_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_cnt\(0),
	datab => \LCD|clk_cnt\(2),
	datac => \LCD|clk_cnt\(3),
	datad => \LCD|clk_cnt\(1),
	combout => \LCD|Equal39~3_combout\);

-- Location: LCCOMB_X56_Y72_N22
\LCD|Equal39~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Equal39~4_combout\ = (\LCD|Equal39~0_combout\ & (\LCD|Equal39~2_combout\ & (\LCD|Equal39~1_combout\ & \LCD|Equal39~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Equal39~0_combout\,
	datab => \LCD|Equal39~2_combout\,
	datac => \LCD|Equal39~1_combout\,
	datad => \LCD|Equal39~3_combout\,
	combout => \LCD|Equal39~4_combout\);

-- Location: LCCOMB_X56_Y72_N24
\LCD|clk_en~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_en~feeder_combout\ = \LCD|Equal39~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Equal39~4_combout\,
	combout => \LCD|clk_en~feeder_combout\);

-- Location: FF_X56_Y72_N25
\LCD|clk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_en~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_en~q\);

-- Location: CLKCTRL_G11
\LCD|clk_en~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LCD|clk_en~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LCD|clk_en~clkctrl_outclk\);

-- Location: LCCOMB_X111_Y12_N14
\LCD|byteSel[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|byteSel[0]~7_combout\ = \LCD|byteSel\(0) $ (VCC)
-- \LCD|byteSel[0]~8\ = CARRY(\LCD|byteSel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|byteSel\(0),
	datad => VCC,
	combout => \LCD|byteSel[0]~7_combout\,
	cout => \LCD|byteSel[0]~8\);

-- Location: LCCOMB_X112_Y12_N14
\LCD|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan6~0_combout\ = (!\LCD|byteSel\(1) & !\LCD|byteSel\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|byteSel\(1),
	datad => \LCD|byteSel\(2),
	combout => \LCD|LessThan6~0_combout\);

-- Location: LCCOMB_X111_Y12_N22
\LCD|byteSel[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|byteSel[4]~15_combout\ = (\LCD|byteSel\(4) & (\LCD|byteSel[3]~14\ $ (GND))) # (!\LCD|byteSel\(4) & (!\LCD|byteSel[3]~14\ & VCC))
-- \LCD|byteSel[4]~16\ = CARRY((\LCD|byteSel\(4) & !\LCD|byteSel[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(4),
	datad => VCC,
	cin => \LCD|byteSel[3]~14\,
	combout => \LCD|byteSel[4]~15_combout\,
	cout => \LCD|byteSel[4]~16\);

-- Location: LCCOMB_X109_Y11_N6
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

-- Location: LCCOMB_X112_Y12_N16
\LCD|state.start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state.start~0_combout\ = !\LCD|state.repeat~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LCD|state.repeat~q\,
	combout => \LCD|state.start~0_combout\);

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

-- Location: FF_X112_Y12_N17
\LCD|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LCD|clk_en~clkctrl_outclk\,
	d => \LCD|state.start~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.start~q\);

-- Location: LCCOMB_X112_Y12_N2
\LCD|state.enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state.enable~0_combout\ = !\LCD|state.start~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LCD|state.start~q\,
	combout => \LCD|state.enable~0_combout\);

-- Location: FF_X112_Y12_N3
\LCD|state.enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LCD|clk_en~clkctrl_outclk\,
	d => \LCD|state.enable~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.enable~q\);

-- Location: FF_X112_Y12_N7
\LCD|state.repeat\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LCD|clk_en~clkctrl_outclk\,
	asdata => \LCD|state.enable~q\,
	sload => VCC,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.repeat~q\);

-- Location: LCCOMB_X112_Y12_N6
\LCD|byteSel[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|byteSel[5]~19_combout\ = (\LCD|state.repeat~q\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|state.repeat~q\,
	datad => \KEY[0]~input_o\,
	combout => \LCD|byteSel[5]~19_combout\);

-- Location: FF_X111_Y12_N23
\LCD|byteSel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LCD|clk_en~clkctrl_outclk\,
	d => \LCD|byteSel[4]~15_combout\,
	asdata => \~GND~combout\,
	sload => \LCD|LessThan6~1_combout\,
	ena => \LCD|byteSel[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|byteSel\(4));

-- Location: LCCOMB_X112_Y12_N22
\LCD|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan6~1_combout\ = (\LCD|byteSel\(5) & ((\LCD|byteSel\(4)) # ((\LCD|byteSel\(3) & !\LCD|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(5),
	datab => \LCD|byteSel\(3),
	datac => \LCD|LessThan6~0_combout\,
	datad => \LCD|byteSel\(4),
	combout => \LCD|LessThan6~1_combout\);

-- Location: FF_X111_Y12_N15
\LCD|byteSel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LCD|clk_en~clkctrl_outclk\,
	d => \LCD|byteSel[0]~7_combout\,
	asdata => VCC,
	sload => \LCD|LessThan6~1_combout\,
	ena => \LCD|byteSel[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|byteSel\(0));

-- Location: LCCOMB_X111_Y12_N16
\LCD|byteSel[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|byteSel[1]~9_combout\ = (\LCD|byteSel\(1) & (!\LCD|byteSel[0]~8\)) # (!\LCD|byteSel\(1) & ((\LCD|byteSel[0]~8\) # (GND)))
-- \LCD|byteSel[1]~10\ = CARRY((!\LCD|byteSel[0]~8\) # (!\LCD|byteSel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|byteSel\(1),
	datad => VCC,
	cin => \LCD|byteSel[0]~8\,
	combout => \LCD|byteSel[1]~9_combout\,
	cout => \LCD|byteSel[1]~10\);

-- Location: FF_X111_Y12_N17
\LCD|byteSel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LCD|clk_en~clkctrl_outclk\,
	d => \LCD|byteSel[1]~9_combout\,
	asdata => \~GND~combout\,
	sload => \LCD|LessThan6~1_combout\,
	ena => \LCD|byteSel[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|byteSel\(1));

-- Location: LCCOMB_X111_Y12_N18
\LCD|byteSel[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|byteSel[2]~11_combout\ = (\LCD|byteSel\(2) & (\LCD|byteSel[1]~10\ $ (GND))) # (!\LCD|byteSel\(2) & (!\LCD|byteSel[1]~10\ & VCC))
-- \LCD|byteSel[2]~12\ = CARRY((\LCD|byteSel\(2) & !\LCD|byteSel[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|byteSel\(2),
	datad => VCC,
	cin => \LCD|byteSel[1]~10\,
	combout => \LCD|byteSel[2]~11_combout\,
	cout => \LCD|byteSel[2]~12\);

-- Location: FF_X111_Y12_N19
\LCD|byteSel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LCD|clk_en~clkctrl_outclk\,
	d => \LCD|byteSel[2]~11_combout\,
	asdata => \~GND~combout\,
	sload => \LCD|LessThan6~1_combout\,
	ena => \LCD|byteSel[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|byteSel\(2));

-- Location: LCCOMB_X111_Y12_N20
\LCD|byteSel[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|byteSel[3]~13_combout\ = (\LCD|byteSel\(3) & (!\LCD|byteSel[2]~12\)) # (!\LCD|byteSel\(3) & ((\LCD|byteSel[2]~12\) # (GND)))
-- \LCD|byteSel[3]~14\ = CARRY((!\LCD|byteSel[2]~12\) # (!\LCD|byteSel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|byteSel\(3),
	datad => VCC,
	cin => \LCD|byteSel[2]~12\,
	combout => \LCD|byteSel[3]~13_combout\,
	cout => \LCD|byteSel[3]~14\);

-- Location: FF_X111_Y12_N21
\LCD|byteSel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LCD|clk_en~clkctrl_outclk\,
	d => \LCD|byteSel[3]~13_combout\,
	asdata => VCC,
	sload => \LCD|LessThan6~1_combout\,
	ena => \LCD|byteSel[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|byteSel\(3));

-- Location: LCCOMB_X111_Y12_N24
\LCD|byteSel[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|byteSel[5]~17_combout\ = \LCD|byteSel[4]~16\ $ (\LCD|byteSel\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LCD|byteSel\(5),
	cin => \LCD|byteSel[4]~16\,
	combout => \LCD|byteSel[5]~17_combout\);

-- Location: FF_X111_Y12_N25
\LCD|byteSel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LCD|clk_en~clkctrl_outclk\,
	d => \LCD|byteSel[5]~17_combout\,
	asdata => \~GND~combout\,
	sload => \LCD|LessThan6~1_combout\,
	ena => \LCD|byteSel[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|byteSel\(5));

-- Location: LCCOMB_X109_Y12_N26
\LCD|Mux70~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~61_combout\ = (!\LCD|byteSel\(0) & (!\LCD|byteSel\(1) & \LCD|byteSel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|byteSel\(0),
	datac => \LCD|byteSel\(1),
	datad => \LCD|byteSel\(3),
	combout => \LCD|Mux70~61_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X114_Y12_N18
\LCD|second_line[2][16]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|second_line[2][16]~3_combout\ = \SW[0]~input_o\ $ (((\SW[3]~input_o\ & ((\SW[1]~input_o\) # (\SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \LCD|second_line[2][16]~3_combout\);

-- Location: LCCOMB_X111_Y12_N10
\LCD|Mux70~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~59_combout\ = (!\LCD|byteSel\(0) & \LCD|byteSel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|byteSel\(0),
	datad => \LCD|byteSel\(1),
	combout => \LCD|Mux70~59_combout\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: LCCOMB_X112_Y11_N20
\LCD|second_line[2][40]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|second_line[2][40]~1_combout\ = \SW[12]~input_o\ $ (((\SW[15]~input_o\ & ((\SW[13]~input_o\) # (\SW[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \LCD|second_line[2][40]~1_combout\);

-- Location: LCCOMB_X111_Y11_N26
\LCD|Mux70~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~58_combout\ = (\LCD|byteSel\(0) & ((\LCD|byteSel\(1) & (\LCD|second_line[2][24]~0_combout\)) # (!\LCD|byteSel\(1) & ((\LCD|second_line[2][40]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|second_line[2][24]~0_combout\,
	datab => \LCD|second_line[2][40]~1_combout\,
	datac => \LCD|byteSel\(0),
	datad => \LCD|byteSel\(1),
	combout => \LCD|Mux70~58_combout\);

-- Location: LCCOMB_X110_Y11_N24
\LCD|Mux70~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~60_combout\ = (\LCD|byteSel\(2) & ((\LCD|Mux70~58_combout\) # ((\LCD|second_line[2][32]~2_combout\ & \LCD|Mux70~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|second_line[2][32]~2_combout\,
	datab => \LCD|byteSel\(2),
	datac => \LCD|Mux70~59_combout\,
	datad => \LCD|Mux70~58_combout\,
	combout => \LCD|Mux70~60_combout\);

-- Location: LCCOMB_X110_Y11_N30
\LCD|Mux70~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~62_combout\ = (\LCD|Mux70~60_combout\) # ((!\LCD|byteSel\(2) & (\LCD|Mux70~61_combout\ & \LCD|second_line[2][16]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(2),
	datab => \LCD|Mux70~61_combout\,
	datac => \LCD|second_line[2][16]~3_combout\,
	datad => \LCD|Mux70~60_combout\,
	combout => \LCD|Mux70~62_combout\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: LCCOMB_X110_Y11_N4
\LCD|Mux70~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~68_combout\ = (!\LCD|byteSel\(3) & ((\LCD|byteSel\(0) & (\SW[16]~input_o\ & !\LCD|byteSel\(1))) # (!\LCD|byteSel\(0) & (!\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(0),
	datab => \LCD|byteSel\(3),
	datac => \SW[16]~input_o\,
	datad => \LCD|byteSel\(1),
	combout => \LCD|Mux70~68_combout\);

-- Location: LCCOMB_X110_Y11_N28
\LCD|Mux70~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~48_combout\ = (\SW[16]~input_o\ & ((\LCD|byteSel\(1)) # ((\SW[17]~input_o\ & !\LCD|byteSel\(0))))) # (!\SW[16]~input_o\ & ((\SW[17]~input_o\ & ((\LCD|byteSel\(0)) # (!\LCD|byteSel\(1)))) # (!\SW[17]~input_o\ & (!\LCD|byteSel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \LCD|byteSel\(0),
	datad => \LCD|byteSel\(1),
	combout => \LCD|Mux70~48_combout\);

-- Location: LCCOMB_X110_Y11_N14
\LCD|Mux70~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~103_combout\ = (!\LCD|byteSel\(3) & \LCD|Mux70~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|byteSel\(3),
	datad => \LCD|Mux70~48_combout\,
	combout => \LCD|Mux70~103_combout\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X112_Y11_N0
\LCD|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux1~0_combout\ = (\SW[16]~input_o\) # (\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \LCD|Mux1~0_combout\);

-- Location: LCCOMB_X110_Y11_N26
\LCD|Mux70~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~93_combout\ = (\LCD|byteSel\(1) & (!\LCD|Mux1~0_combout\ & (\LCD|byteSel\(0) & \LCD|byteSel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(1),
	datab => \LCD|Mux1~0_combout\,
	datac => \LCD|byteSel\(0),
	datad => \LCD|byteSel\(3),
	combout => \LCD|Mux70~93_combout\);

-- Location: LCCOMB_X112_Y11_N2
\LCD|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux33~0_combout\ = \SW[16]~input_o\ $ (\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \LCD|Mux33~0_combout\);

-- Location: LCCOMB_X110_Y11_N20
\LCD|Mux70~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~92_combout\ = (\LCD|byteSel\(1)) # ((!\SW[17]~input_o\ & (!\SW[16]~input_o\ & \LCD|byteSel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \LCD|byteSel\(0),
	datad => \LCD|byteSel\(1),
	combout => \LCD|Mux70~92_combout\);

-- Location: LCCOMB_X110_Y11_N16
\LCD|Mux70~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~65_combout\ = (\LCD|Mux70~92_combout\ & ((\LCD|byteSel\(0) & (\LCD|byteSel\(3))) # (!\LCD|byteSel\(0) & ((\LCD|Mux33~0_combout\) # (!\LCD|byteSel\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(0),
	datab => \LCD|byteSel\(3),
	datac => \LCD|Mux33~0_combout\,
	datad => \LCD|Mux70~92_combout\,
	combout => \LCD|Mux70~65_combout\);

-- Location: LCCOMB_X110_Y11_N6
\LCD|Mux70~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~67_combout\ = (\LCD|byteSel\(4) & (\LCD|byteSel\(2))) # (!\LCD|byteSel\(4) & ((\LCD|byteSel\(2) & ((\LCD|Mux70~65_combout\))) # (!\LCD|byteSel\(2) & (\LCD|Mux70~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(4),
	datab => \LCD|byteSel\(2),
	datac => \LCD|Mux70~93_combout\,
	datad => \LCD|Mux70~65_combout\,
	combout => \LCD|Mux70~67_combout\);

-- Location: LCCOMB_X110_Y11_N2
\LCD|Mux70~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~69_combout\ = (\LCD|byteSel\(4) & ((\LCD|Mux70~67_combout\ & (\LCD|Mux70~68_combout\)) # (!\LCD|Mux70~67_combout\ & ((\LCD|Mux70~103_combout\))))) # (!\LCD|byteSel\(4) & (((\LCD|Mux70~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(4),
	datab => \LCD|Mux70~68_combout\,
	datac => \LCD|Mux70~103_combout\,
	datad => \LCD|Mux70~67_combout\,
	combout => \LCD|Mux70~69_combout\);

-- Location: LCCOMB_X110_Y11_N0
\LCD|Mux70~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~70_combout\ = (\LCD|Mux70~63_combout\ & ((\LCD|Mux70~62_combout\) # ((!\LCD|byteSel\(5) & \LCD|Mux70~69_combout\)))) # (!\LCD|Mux70~63_combout\ & (!\LCD|byteSel\(5) & ((\LCD|Mux70~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux70~63_combout\,
	datab => \LCD|byteSel\(5),
	datac => \LCD|Mux70~62_combout\,
	datad => \LCD|Mux70~69_combout\,
	combout => \LCD|Mux70~70_combout\);

-- Location: LCCOMB_X112_Y12_N20
\LCD|data_o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|data_o[0]~1_combout\ = (\KEY[0]~input_o\ & !\LCD|state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \LCD|state.start~q\,
	combout => \LCD|data_o[0]~1_combout\);

-- Location: FF_X110_Y11_N1
\LCD|data_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LCD|clk_en~clkctrl_outclk\,
	d => \LCD|Mux70~70_combout\,
	ena => \LCD|data_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|data_o\(0));

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X113_Y12_N20
\LCD|second_line[2][25]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|second_line[2][25]~5_combout\ = (\SW[7]~input_o\ & ((\SW[5]~input_o\ & ((\SW[4]~input_o\))) # (!\SW[5]~input_o\ & (\SW[6]~input_o\ & !\SW[4]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \LCD|second_line[2][25]~5_combout\);

-- Location: LCCOMB_X110_Y12_N0
\LCD|Mux70~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~72_combout\ = (\LCD|byteSel\(0) & (\SW[16]~input_o\ $ (\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \LCD|byteSel\(0),
	datad => \SW[17]~input_o\,
	combout => \LCD|Mux70~72_combout\);

-- Location: LCCOMB_X107_Y12_N2
\LCD|Mux69~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux69~10_combout\ = (!\LCD|byteSel\(0) & ((\LCD|second_line[2][33]~4_combout\ & ((\SW[17]~input_o\) # (\SW[16]~input_o\))) # (!\LCD|second_line[2][33]~4_combout\ & (\SW[17]~input_o\ & \SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|second_line[2][33]~4_combout\,
	datab => \SW[17]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \LCD|byteSel\(0),
	combout => \LCD|Mux69~10_combout\);

-- Location: LCCOMB_X107_Y12_N26
\LCD|Mux69~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux69~4_combout\ = (\LCD|Mux69~10_combout\) # ((\LCD|second_line[2][25]~5_combout\ & \LCD|Mux70~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|second_line[2][25]~5_combout\,
	datac => \LCD|Mux70~72_combout\,
	datad => \LCD|Mux69~10_combout\,
	combout => \LCD|Mux69~4_combout\);

-- Location: LCCOMB_X111_Y12_N4
\LCD|Mux70~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~73_combout\ = (\SW[17]~input_o\ & (\SW[16]~input_o\ & !\LCD|byteSel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \LCD|byteSel\(3),
	combout => \LCD|Mux70~73_combout\);

-- Location: LCCOMB_X107_Y12_N28
\LCD|Mux69~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux69~5_combout\ = (\LCD|Mux33~0_combout\ & (!\LCD|byteSel\(0) & ((\LCD|second_line[2][17]~6_combout\) # (!\LCD|byteSel\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|second_line[2][17]~6_combout\,
	datab => \LCD|Mux33~0_combout\,
	datac => \LCD|byteSel\(0),
	datad => \LCD|byteSel\(3),
	combout => \LCD|Mux69~5_combout\);

-- Location: LCCOMB_X107_Y12_N14
\LCD|Mux69~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux69~6_combout\ = (!\LCD|byteSel\(2) & ((\LCD|Mux69~5_combout\) # ((\LCD|byteSel\(0) & \LCD|Mux70~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(0),
	datab => \LCD|byteSel\(2),
	datac => \LCD|Mux70~73_combout\,
	datad => \LCD|Mux69~5_combout\,
	combout => \LCD|Mux69~6_combout\);

-- Location: LCCOMB_X107_Y12_N24
\LCD|Mux69~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux69~7_combout\ = (\LCD|Mux69~6_combout\) # ((\LCD|second_line[2][41]~7_combout\ & (\LCD|byteSel\(2) & \LCD|Mux70~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|second_line[2][41]~7_combout\,
	datab => \LCD|byteSel\(2),
	datac => \LCD|Mux69~6_combout\,
	datad => \LCD|Mux70~72_combout\,
	combout => \LCD|Mux69~7_combout\);

-- Location: LCCOMB_X107_Y12_N22
\LCD|Mux69~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux69~8_combout\ = (\LCD|byteSel\(1) & (\LCD|byteSel\(2) & (\LCD|Mux69~4_combout\))) # (!\LCD|byteSel\(1) & (((\LCD|Mux69~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(1),
	datab => \LCD|byteSel\(2),
	datac => \LCD|Mux69~4_combout\,
	datad => \LCD|Mux69~7_combout\,
	combout => \LCD|Mux69~8_combout\);

-- Location: LCCOMB_X111_Y12_N28
\LCD|Mux70~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~71_combout\ = (!\LCD|byteSel\(3) & (\LCD|byteSel\(0) $ (!\LCD|byteSel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|byteSel\(3),
	datac => \LCD|byteSel\(0),
	datad => \LCD|byteSel\(1),
	combout => \LCD|Mux70~71_combout\);

-- Location: LCCOMB_X107_Y12_N0
\LCD|Mux68~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~8_combout\ = (\LCD|Mux70~71_combout\ & (\LCD|byteSel\(1) $ (((\SW[17]~input_o\ & !\SW[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(1),
	datab => \SW[17]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \LCD|Mux70~71_combout\,
	combout => \LCD|Mux68~8_combout\);

-- Location: LCCOMB_X107_Y12_N30
\LCD|Mux68~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~32_combout\ = (\SW[17]~input_o\ & (!\SW[16]~input_o\ & (\LCD|Mux68~31_combout\ $ (!\LCD|byteSel\(3))))) # (!\SW[17]~input_o\ & (\LCD|Mux68~31_combout\ & (\SW[16]~input_o\ $ (!\LCD|byteSel\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux68~31_combout\,
	datab => \SW[17]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \LCD|byteSel\(3),
	combout => \LCD|Mux68~32_combout\);

-- Location: LCCOMB_X107_Y12_N6
\LCD|Mux68~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~9_combout\ = (\SW[16]~input_o\ & (((\LCD|byteSel\(0) & \LCD|byteSel\(1))))) # (!\SW[16]~input_o\ & (!\SW[17]~input_o\ & (!\LCD|byteSel\(0) & !\LCD|byteSel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \LCD|byteSel\(0),
	datad => \LCD|byteSel\(1),
	combout => \LCD|Mux68~9_combout\);

-- Location: LCCOMB_X107_Y12_N16
\LCD|Mux68~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~10_combout\ = (\LCD|byteSel\(3) & \LCD|Mux68~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|byteSel\(3),
	datad => \LCD|Mux68~9_combout\,
	combout => \LCD|Mux68~10_combout\);

-- Location: LCCOMB_X107_Y12_N18
\LCD|Mux69~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux69~2_combout\ = (\LCD|byteSel\(4) & (\LCD|byteSel\(2))) # (!\LCD|byteSel\(4) & ((\LCD|byteSel\(2) & ((\LCD|Mux68~10_combout\))) # (!\LCD|byteSel\(2) & (\LCD|Mux70~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(4),
	datab => \LCD|byteSel\(2),
	datac => \LCD|Mux70~61_combout\,
	datad => \LCD|Mux68~10_combout\,
	combout => \LCD|Mux69~2_combout\);

-- Location: LCCOMB_X107_Y12_N20
\LCD|Mux69~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux69~3_combout\ = (\LCD|byteSel\(4) & ((\LCD|Mux69~2_combout\ & ((\LCD|Mux68~32_combout\))) # (!\LCD|Mux69~2_combout\ & (\LCD|Mux68~8_combout\)))) # (!\LCD|byteSel\(4) & (((\LCD|Mux69~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(4),
	datab => \LCD|Mux68~8_combout\,
	datac => \LCD|Mux68~32_combout\,
	datad => \LCD|Mux69~2_combout\,
	combout => \LCD|Mux69~3_combout\);

-- Location: LCCOMB_X107_Y12_N8
\LCD|Mux69~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux69~9_combout\ = (\LCD|byteSel\(5) & (!\LCD|byteSel\(4) & (\LCD|Mux69~8_combout\))) # (!\LCD|byteSel\(5) & (((\LCD|Mux69~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(4),
	datab => \LCD|byteSel\(5),
	datac => \LCD|Mux69~8_combout\,
	datad => \LCD|Mux69~3_combout\,
	combout => \LCD|Mux69~9_combout\);

-- Location: FF_X107_Y12_N9
\LCD|data_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LCD|clk_en~clkctrl_outclk\,
	d => \LCD|Mux69~9_combout\,
	ena => \LCD|data_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|data_o\(1));

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X114_Y12_N26
\LCD|Mux68~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~26_combout\ = (\SW[10]~input_o\ & ((\SW[8]~input_o\) # ((\SW[9]~input_o\) # (!\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \LCD|Mux68~26_combout\);

-- Location: LCCOMB_X112_Y11_N4
\LCD|Mux68~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~24_combout\ = (\SW[14]~input_o\ & ((\SW[12]~input_o\) # ((\SW[13]~input_o\) # (!\SW[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \LCD|Mux68~24_combout\);

-- Location: LCCOMB_X109_Y12_N2
\LCD|Mux68~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~25_combout\ = (\LCD|byteSel\(0) & ((\LCD|byteSel\(1) & (\LCD|Mux68~23_combout\)) # (!\LCD|byteSel\(1) & ((\LCD|Mux68~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux68~23_combout\,
	datab => \LCD|Mux68~24_combout\,
	datac => \LCD|byteSel\(1),
	datad => \LCD|byteSel\(0),
	combout => \LCD|Mux68~25_combout\);

-- Location: LCCOMB_X109_Y12_N4
\LCD|Mux68~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~29_combout\ = (\LCD|Mux68~25_combout\) # ((\LCD|byteSel\(1) & (!\LCD|byteSel\(0) & \LCD|Mux68~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(1),
	datab => \LCD|byteSel\(0),
	datac => \LCD|Mux68~26_combout\,
	datad => \LCD|Mux68~25_combout\,
	combout => \LCD|Mux68~29_combout\);

-- Location: LCCOMB_X114_Y12_N0
\LCD|Mux68~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~20_combout\ = (\SW[2]~input_o\ & (((\SW[1]~input_o\) # (\SW[0]~input_o\)) # (!\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \LCD|Mux68~20_combout\);

-- Location: LCCOMB_X109_Y12_N18
\LCD|Mux68~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~21_combout\ = (\LCD|Mux33~0_combout\ & (!\LCD|byteSel\(0) & ((\LCD|Mux68~20_combout\) # (!\LCD|byteSel\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux33~0_combout\,
	datab => \LCD|byteSel\(3),
	datac => \LCD|Mux68~20_combout\,
	datad => \LCD|byteSel\(0),
	combout => \LCD|Mux68~21_combout\);

-- Location: LCCOMB_X109_Y12_N28
\LCD|Mux68~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~22_combout\ = (\LCD|LessThan6~0_combout\ & ((\LCD|Mux68~21_combout\) # ((\LCD|byteSel\(0) & \LCD|Mux70~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(0),
	datab => \LCD|Mux70~73_combout\,
	datac => \LCD|LessThan6~0_combout\,
	datad => \LCD|Mux68~21_combout\,
	combout => \LCD|Mux68~22_combout\);

-- Location: LCCOMB_X109_Y12_N8
\LCD|Mux68~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~27_combout\ = (\LCD|Mux68~22_combout\) # ((\LCD|Mux33~0_combout\ & (\LCD|byteSel\(2) & \LCD|Mux68~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux33~0_combout\,
	datab => \LCD|byteSel\(2),
	datac => \LCD|Mux68~29_combout\,
	datad => \LCD|Mux68~22_combout\,
	combout => \LCD|Mux68~27_combout\);

-- Location: LCCOMB_X109_Y12_N6
\LCD|Mux68~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~14_combout\ = (\LCD|byteSel\(1) & ((\SW[16]~input_o\) # ((\SW[17]~input_o\ & \LCD|byteSel\(0))))) # (!\LCD|byteSel\(1) & ((\SW[16]~input_o\ $ (\LCD|byteSel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(1),
	datab => \SW[17]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \LCD|byteSel\(0),
	combout => \LCD|Mux68~14_combout\);

-- Location: LCCOMB_X109_Y12_N20
\LCD|Mux68~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~15_combout\ = (!\LCD|byteSel\(3) & \LCD|Mux68~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|byteSel\(3),
	datad => \LCD|Mux68~14_combout\,
	combout => \LCD|Mux68~15_combout\);

-- Location: LCCOMB_X109_Y12_N30
\LCD|Mux68~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~16_combout\ = (\LCD|byteSel\(4) & ((\LCD|byteSel\(2)) # ((\LCD|Mux68~15_combout\)))) # (!\LCD|byteSel\(4) & (!\LCD|byteSel\(2) & (\LCD|Mux70~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(4),
	datab => \LCD|byteSel\(2),
	datac => \LCD|Mux70~61_combout\,
	datad => \LCD|Mux68~15_combout\,
	combout => \LCD|Mux68~16_combout\);

-- Location: LCCOMB_X109_Y12_N22
\LCD|Mux70~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~106_combout\ = (\SW[17]~input_o\ & (!\SW[16]~input_o\ & \LCD|byteSel\(3))) # (!\SW[17]~input_o\ & (\SW[16]~input_o\ $ (!\LCD|byteSel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \LCD|byteSel\(3),
	combout => \LCD|Mux70~106_combout\);

-- Location: LCCOMB_X110_Y12_N24
\LCD|Mux70~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~64_combout\ = (!\LCD|byteSel\(3) & ((\SW[16]~input_o\) # (\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \LCD|byteSel\(3),
	datad => \SW[17]~input_o\,
	combout => \LCD|Mux70~64_combout\);

-- Location: LCCOMB_X109_Y12_N0
\LCD|Mux68~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~17_combout\ = (\LCD|byteSel\(0) & (((\LCD|byteSel\(1))))) # (!\LCD|byteSel\(0) & ((\LCD|byteSel\(1) & (\LCD|Mux70~74_combout\)) # (!\LCD|byteSel\(1) & ((\LCD|Mux70~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux70~74_combout\,
	datab => \LCD|byteSel\(0),
	datac => \LCD|byteSel\(1),
	datad => \LCD|Mux70~64_combout\,
	combout => \LCD|Mux68~17_combout\);

-- Location: LCCOMB_X109_Y12_N10
\LCD|Mux68~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~18_combout\ = (\LCD|byteSel\(0) & ((\LCD|Mux68~17_combout\ & ((\LCD|Mux70~106_combout\))) # (!\LCD|Mux68~17_combout\ & (!\LCD|byteSel\(3))))) # (!\LCD|byteSel\(0) & (((\LCD|Mux68~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(3),
	datab => \LCD|byteSel\(0),
	datac => \LCD|Mux70~106_combout\,
	datad => \LCD|Mux68~17_combout\,
	combout => \LCD|Mux68~18_combout\);

-- Location: LCCOMB_X109_Y12_N16
\LCD|Mux68~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~19_combout\ = (\LCD|byteSel\(2) & ((\LCD|Mux68~16_combout\ & ((\LCD|Mux68~18_combout\))) # (!\LCD|Mux68~16_combout\ & (\LCD|Mux68~13_combout\)))) # (!\LCD|byteSel\(2) & (((\LCD|Mux68~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux68~13_combout\,
	datab => \LCD|byteSel\(2),
	datac => \LCD|Mux68~16_combout\,
	datad => \LCD|Mux68~18_combout\,
	combout => \LCD|Mux68~19_combout\);

-- Location: LCCOMB_X109_Y12_N24
\LCD|Mux68~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~28_combout\ = (\LCD|byteSel\(5) & (!\LCD|byteSel\(4) & (\LCD|Mux68~27_combout\))) # (!\LCD|byteSel\(5) & (((\LCD|Mux68~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(4),
	datab => \LCD|byteSel\(5),
	datac => \LCD|Mux68~27_combout\,
	datad => \LCD|Mux68~19_combout\,
	combout => \LCD|Mux68~28_combout\);

-- Location: FF_X109_Y12_N25
\LCD|data_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LCD|clk_en~clkctrl_outclk\,
	d => \LCD|Mux68~28_combout\,
	ena => \LCD|data_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|data_o\(2));

-- Location: LCCOMB_X111_Y11_N4
\LCD|Mux67~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~2_combout\ = (\SW[3]~input_o\ & (!\LCD|byteSel\(0) & (\LCD|byteSel\(3) & !\LCD|byteSel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \LCD|byteSel\(0),
	datac => \LCD|byteSel\(3),
	datad => \LCD|byteSel\(1),
	combout => \LCD|Mux67~2_combout\);

-- Location: LCCOMB_X112_Y11_N26
\LCD|Mux37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux37~2_combout\ = (!\SW[13]~input_o\ & \SW[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datac => \SW[15]~input_o\,
	combout => \LCD|Mux37~2_combout\);

-- Location: LCCOMB_X112_Y11_N24
\LCD|Mux37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux37~3_combout\ = (\SW[16]~input_o\ & ((\SW[17]~input_o\) # ((!\SW[14]~input_o\ & \LCD|Mux37~2_combout\)))) # (!\SW[16]~input_o\ & (!\SW[14]~input_o\ & (\LCD|Mux37~2_combout\ & \SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \LCD|Mux37~2_combout\,
	datad => \SW[17]~input_o\,
	combout => \LCD|Mux37~3_combout\);

-- Location: LCCOMB_X114_Y12_N12
\LCD|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux44~0_combout\ = (\SW[11]~input_o\ & !\SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[11]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \LCD|Mux44~0_combout\);

-- Location: LCCOMB_X114_Y12_N30
\LCD|Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux44~1_combout\ = (\SW[16]~input_o\ & ((\SW[17]~input_o\) # ((!\SW[10]~input_o\ & \LCD|Mux44~0_combout\)))) # (!\SW[16]~input_o\ & (!\SW[10]~input_o\ & (\SW[17]~input_o\ & \LCD|Mux44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[17]~input_o\,
	datad => \LCD|Mux44~0_combout\,
	combout => \LCD|Mux44~1_combout\);

-- Location: LCCOMB_X111_Y11_N8
\LCD|Mux70~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~78_combout\ = (\LCD|byteSel\(0) & (((\LCD|byteSel\(1))))) # (!\LCD|byteSel\(0) & ((\LCD|byteSel\(1) & ((\LCD|Mux44~1_combout\))) # (!\LCD|byteSel\(1) & (\LCD|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux33~0_combout\,
	datab => \LCD|Mux44~1_combout\,
	datac => \LCD|byteSel\(0),
	datad => \LCD|byteSel\(1),
	combout => \LCD|Mux70~78_combout\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X111_Y11_N2
\LCD|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux51~0_combout\ = (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & (\SW[7]~input_o\ & \LCD|Mux33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \LCD|Mux33~0_combout\,
	combout => \LCD|Mux51~0_combout\);

-- Location: LCCOMB_X111_Y11_N28
\LCD|Mux70~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~79_combout\ = (\LCD|byteSel\(0) & ((\LCD|Mux70~78_combout\ & ((\LCD|Mux51~0_combout\))) # (!\LCD|Mux70~78_combout\ & (\LCD|Mux37~3_combout\)))) # (!\LCD|byteSel\(0) & (((\LCD|Mux70~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(0),
	datab => \LCD|Mux37~3_combout\,
	datac => \LCD|Mux70~78_combout\,
	datad => \LCD|Mux51~0_combout\,
	combout => \LCD|Mux70~79_combout\);

-- Location: LCCOMB_X111_Y11_N14
\LCD|Mux67~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~4_combout\ = (\LCD|Mux67~3_combout\ & ((\LCD|Mux67~2_combout\) # ((\LCD|byteSel\(2) & \LCD|Mux70~79_combout\)))) # (!\LCD|Mux67~3_combout\ & (\LCD|byteSel\(2) & ((\LCD|Mux70~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux67~3_combout\,
	datab => \LCD|byteSel\(2),
	datac => \LCD|Mux67~2_combout\,
	datad => \LCD|Mux70~79_combout\,
	combout => \LCD|Mux67~4_combout\);

-- Location: LCCOMB_X112_Y12_N8
\LCD|Mux70~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~75_combout\ = ((!\LCD|Mux1~0_combout\ & (\LCD|byteSel\(1) & \LCD|byteSel\(0)))) # (!\LCD|byteSel\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux1~0_combout\,
	datab => \LCD|byteSel\(3),
	datac => \LCD|byteSel\(1),
	datad => \LCD|byteSel\(0),
	combout => \LCD|Mux70~75_combout\);

-- Location: LCCOMB_X112_Y12_N18
\LCD|Mux70~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~94_combout\ = (!\LCD|Mux70~59_combout\ & (((!\SW[17]~input_o\ & !\SW[16]~input_o\)) # (!\LCD|byteSel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \LCD|byteSel\(3),
	datac => \SW[16]~input_o\,
	datad => \LCD|Mux70~59_combout\,
	combout => \LCD|Mux70~94_combout\);

-- Location: LCCOMB_X112_Y12_N30
\LCD|Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~0_combout\ = (\LCD|byteSel\(2) & ((\LCD|byteSel\(4)) # ((\LCD|Mux70~94_combout\)))) # (!\LCD|byteSel\(2) & (!\LCD|byteSel\(4) & (\LCD|Mux70~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(2),
	datab => \LCD|byteSel\(4),
	datac => \LCD|Mux70~75_combout\,
	datad => \LCD|Mux70~94_combout\,
	combout => \LCD|Mux67~0_combout\);

-- Location: LCCOMB_X110_Y12_N10
\LCD|Mux70~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~66_combout\ = (\LCD|byteSel\(3) & \LCD|byteSel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|byteSel\(3),
	datad => \LCD|byteSel\(1),
	combout => \LCD|Mux70~66_combout\);

-- Location: LCCOMB_X110_Y12_N22
\LCD|Mux70~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~74_combout\ = (!\SW[16]~input_o\ & !\LCD|byteSel\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \LCD|byteSel\(3),
	combout => \LCD|Mux70~74_combout\);

-- Location: LCCOMB_X110_Y12_N18
\LCD|Mux68~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~30_combout\ = (!\SW[16]~input_o\ & (!\LCD|byteSel\(3) & !\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \LCD|byteSel\(3),
	datad => \SW[17]~input_o\,
	combout => \LCD|Mux68~30_combout\);

-- Location: LCCOMB_X110_Y12_N8
\LCD|Mux70~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~76_combout\ = (\LCD|byteSel\(0) & (((\LCD|Mux68~30_combout\)))) # (!\LCD|byteSel\(0) & (!\LCD|byteSel\(1) & (\LCD|Mux70~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(1),
	datab => \LCD|byteSel\(0),
	datac => \LCD|Mux70~74_combout\,
	datad => \LCD|Mux68~30_combout\,
	combout => \LCD|Mux70~76_combout\);

-- Location: LCCOMB_X111_Y11_N16
\LCD|Mux70~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~77_combout\ = (\LCD|Mux70~76_combout\) # ((\LCD|Mux33~0_combout\ & (!\LCD|byteSel\(0) & \LCD|Mux70~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux33~0_combout\,
	datab => \LCD|byteSel\(0),
	datac => \LCD|Mux70~66_combout\,
	datad => \LCD|Mux70~76_combout\,
	combout => \LCD|Mux70~77_combout\);

-- Location: LCCOMB_X111_Y11_N18
\LCD|Mux67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~1_combout\ = (\LCD|byteSel\(4) & ((\LCD|Mux67~0_combout\ & ((\LCD|Mux70~77_combout\))) # (!\LCD|Mux67~0_combout\ & (\LCD|Mux70~104_combout\)))) # (!\LCD|byteSel\(4) & (((\LCD|Mux67~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux70~104_combout\,
	datab => \LCD|byteSel\(4),
	datac => \LCD|Mux67~0_combout\,
	datad => \LCD|Mux70~77_combout\,
	combout => \LCD|Mux67~1_combout\);

-- Location: LCCOMB_X111_Y11_N12
\LCD|Mux67~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~5_combout\ = (\LCD|byteSel\(5) & (!\LCD|byteSel\(4) & (\LCD|Mux67~4_combout\))) # (!\LCD|byteSel\(5) & (((\LCD|Mux67~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(5),
	datab => \LCD|byteSel\(4),
	datac => \LCD|Mux67~4_combout\,
	datad => \LCD|Mux67~1_combout\,
	combout => \LCD|Mux67~5_combout\);

-- Location: FF_X111_Y11_N13
\LCD|data_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LCD|clk_en~clkctrl_outclk\,
	d => \LCD|Mux67~5_combout\,
	ena => \LCD|data_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|data_o\(3));

-- Location: LCCOMB_X111_Y12_N2
\LCD|Mux68~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux68~11_combout\ = \LCD|byteSel\(0) $ (\LCD|byteSel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|byteSel\(0),
	datad => \LCD|byteSel\(1),
	combout => \LCD|Mux68~11_combout\);

-- Location: LCCOMB_X112_Y12_N4
\LCD|Mux70~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~95_combout\ = (\LCD|byteSel\(3) & (\LCD|Mux68~11_combout\ & (\SW[17]~input_o\ $ (\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \LCD|byteSel\(3),
	datac => \SW[16]~input_o\,
	datad => \LCD|Mux68~11_combout\,
	combout => \LCD|Mux70~95_combout\);

-- Location: LCCOMB_X112_Y12_N28
\LCD|Mux70~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~80_combout\ = (\LCD|Mux70~71_combout\ & ((\LCD|byteSel\(1) & (!\LCD|Mux1~0_combout\)) # (!\LCD|byteSel\(1) & ((\LCD|Mux33~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux1~0_combout\,
	datab => \LCD|Mux33~0_combout\,
	datac => \LCD|byteSel\(1),
	datad => \LCD|Mux70~71_combout\,
	combout => \LCD|Mux70~80_combout\);

-- Location: LCCOMB_X112_Y12_N12
\LCD|Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~0_combout\ = (\LCD|byteSel\(2) & (\LCD|Mux70~95_combout\)) # (!\LCD|byteSel\(2) & ((\LCD|Mux70~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|byteSel\(2),
	datac => \LCD|Mux70~95_combout\,
	datad => \LCD|Mux70~80_combout\,
	combout => \LCD|Mux66~0_combout\);

-- Location: LCCOMB_X110_Y12_N30
\LCD|Mux70~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~81_combout\ = (\LCD|Mux70~66_combout\ & ((\LCD|byteSel\(0) & (\LCD|Mux1~0_combout\)) # (!\LCD|byteSel\(0) & ((!\LCD|Mux33~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux1~0_combout\,
	datab => \LCD|Mux33~0_combout\,
	datac => \LCD|byteSel\(0),
	datad => \LCD|Mux70~66_combout\,
	combout => \LCD|Mux70~81_combout\);

-- Location: LCCOMB_X110_Y12_N16
\LCD|Mux70~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~82_combout\ = (\LCD|Mux70~81_combout\) # ((!\LCD|byteSel\(1) & ((\LCD|Mux70~72_combout\) # (!\LCD|byteSel\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(3),
	datab => \LCD|byteSel\(1),
	datac => \LCD|Mux70~81_combout\,
	datad => \LCD|Mux70~72_combout\,
	combout => \LCD|Mux70~82_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X111_Y12_N30
\LCD|Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~0_combout\ = (\LCD|byteSel\(3) & (((!\SW[2]~input_o\ & !\SW[1]~input_o\)) # (!\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \LCD|byteSel\(3),
	combout => \LCD|Mux64~0_combout\);

-- Location: LCCOMB_X111_Y12_N8
\LCD|Mux66~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~1_combout\ = (\LCD|byteSel\(1) & ((!\LCD|byteSel\(3)))) # (!\LCD|byteSel\(1) & (\LCD|Mux64~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|byteSel\(1),
	datac => \LCD|Mux64~0_combout\,
	datad => \LCD|byteSel\(3),
	combout => \LCD|Mux66~1_combout\);

-- Location: LCCOMB_X111_Y12_N26
\LCD|Mux66~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~2_combout\ = (\LCD|Mux68~11_combout\ & (((\LCD|Mux70~73_combout\)))) # (!\LCD|Mux68~11_combout\ & (\LCD|Mux33~0_combout\ & ((\LCD|Mux66~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux33~0_combout\,
	datab => \LCD|Mux70~73_combout\,
	datac => \LCD|Mux66~1_combout\,
	datad => \LCD|Mux68~11_combout\,
	combout => \LCD|Mux66~2_combout\);

-- Location: LCCOMB_X112_Y11_N12
\LCD|Mux70~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~83_combout\ = (\SW[15]~input_o\ & ((\SW[13]~input_o\) # (\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \LCD|Mux70~83_combout\);

-- Location: LCCOMB_X110_Y12_N14
\LCD|Mux70~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~84_combout\ = (\LCD|byteSel\(0) & ((\LCD|byteSel\(1) & (\LCD|LessThan4~0_combout\)) # (!\LCD|byteSel\(1) & ((\LCD|Mux70~83_combout\))))) # (!\LCD|byteSel\(0) & (((\LCD|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan4~0_combout\,
	datab => \LCD|Mux70~83_combout\,
	datac => \LCD|byteSel\(0),
	datad => \LCD|byteSel\(1),
	combout => \LCD|Mux70~84_combout\);

-- Location: LCCOMB_X110_Y12_N20
\LCD|Mux70~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~96_combout\ = (\LCD|byteSel\(0)) # ((\LCD|LessThan3~0_combout\ & (\SW[16]~input_o\ $ (\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan3~0_combout\,
	datab => \SW[16]~input_o\,
	datac => \LCD|byteSel\(0),
	datad => \SW[17]~input_o\,
	combout => \LCD|Mux70~96_combout\);

-- Location: LCCOMB_X110_Y12_N2
\LCD|Mux70~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~97_combout\ = (\LCD|Mux70~84_combout\ & (!\LCD|Mux70~96_combout\ & ((\SW[16]~input_o\) # (\SW[17]~input_o\)))) # (!\LCD|Mux70~84_combout\ & (\SW[16]~input_o\ $ ((\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \LCD|Mux70~84_combout\,
	datad => \LCD|Mux70~96_combout\,
	combout => \LCD|Mux70~97_combout\);

-- Location: LCCOMB_X111_Y12_N12
\LCD|Mux66~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~3_combout\ = (\LCD|byteSel\(5) & ((\LCD|byteSel\(2) & ((\LCD|Mux70~97_combout\))) # (!\LCD|byteSel\(2) & (\LCD|Mux66~2_combout\)))) # (!\LCD|byteSel\(5) & (\LCD|byteSel\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(5),
	datab => \LCD|byteSel\(2),
	datac => \LCD|Mux66~2_combout\,
	datad => \LCD|Mux70~97_combout\,
	combout => \LCD|Mux66~3_combout\);

-- Location: LCCOMB_X111_Y12_N6
\LCD|Mux66~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~4_combout\ = (\LCD|byteSel\(5) & (((\LCD|Mux66~3_combout\)))) # (!\LCD|byteSel\(5) & ((\LCD|Mux66~3_combout\ & ((!\LCD|Mux70~82_combout\))) # (!\LCD|Mux66~3_combout\ & (\LCD|byteSel\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(5),
	datab => \LCD|byteSel\(3),
	datac => \LCD|Mux70~82_combout\,
	datad => \LCD|Mux66~3_combout\,
	combout => \LCD|Mux66~4_combout\);

-- Location: LCCOMB_X111_Y12_N0
\LCD|Mux66~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~5_combout\ = (\LCD|byteSel\(4) & (!\LCD|byteSel\(5) & (\LCD|Mux66~0_combout\))) # (!\LCD|byteSel\(4) & (\LCD|byteSel\(5) $ (((!\LCD|Mux66~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(4),
	datab => \LCD|byteSel\(5),
	datac => \LCD|Mux66~0_combout\,
	datad => \LCD|Mux66~4_combout\,
	combout => \LCD|Mux66~5_combout\);

-- Location: FF_X111_Y12_N1
\LCD|data_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LCD|clk_en~clkctrl_outclk\,
	d => \LCD|Mux66~5_combout\,
	ena => \LCD|data_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|data_o\(4));

-- Location: LCCOMB_X108_Y12_N4
\LCD|Mux70~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~99_combout\ = (((!\LCD|byteSel\(0)) # (!\LCD|byteSel\(3))) # (!\LCD|Mux33~0_combout\)) # (!\LCD|byteSel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(1),
	datab => \LCD|Mux33~0_combout\,
	datac => \LCD|byteSel\(3),
	datad => \LCD|byteSel\(0),
	combout => \LCD|Mux70~99_combout\);

-- Location: LCCOMB_X108_Y12_N30
\LCD|Mux70~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~85_combout\ = (\SW[16]~input_o\ & (((\LCD|byteSel\(0))))) # (!\SW[16]~input_o\ & (((!\LCD|byteSel\(3) & !\LCD|byteSel\(0))) # (!\LCD|byteSel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(3),
	datab => \SW[16]~input_o\,
	datac => \LCD|byteSel\(1),
	datad => \LCD|byteSel\(0),
	combout => \LCD|Mux70~85_combout\);

-- Location: LCCOMB_X108_Y12_N8
\LCD|Mux70~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~86_combout\ = (\LCD|Mux70~85_combout\) # ((!\LCD|Mux70~59_combout\ & ((\LCD|byteSel\(3)) # (!\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(3),
	datab => \SW[17]~input_o\,
	datac => \LCD|Mux70~85_combout\,
	datad => \LCD|Mux70~59_combout\,
	combout => \LCD|Mux70~86_combout\);

-- Location: LCCOMB_X108_Y12_N26
\LCD|Mux70~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~98_combout\ = ((\LCD|byteSel\(1) & ((\LCD|Mux1~0_combout\) # (!\LCD|byteSel\(0))))) # (!\LCD|byteSel\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(3),
	datab => \LCD|Mux1~0_combout\,
	datac => \LCD|byteSel\(1),
	datad => \LCD|byteSel\(0),
	combout => \LCD|Mux70~98_combout\);

-- Location: LCCOMB_X108_Y12_N10
\LCD|Mux70~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~101_combout\ = (\SW[16]~input_o\ & (\SW[17]~input_o\ $ (\LCD|byteSel\(1)))) # (!\SW[16]~input_o\ & ((\LCD|byteSel\(1)) # (!\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \LCD|byteSel\(1),
	combout => \LCD|Mux70~101_combout\);

-- Location: LCCOMB_X108_Y12_N18
\LCD|Mux70~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~87_combout\ = (\LCD|byteSel\(3) & ((\LCD|Mux70~101_combout\) # ((!\LCD|byteSel\(0) & !\LCD|byteSel\(1))))) # (!\LCD|byteSel\(3) & (((!\LCD|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(0),
	datab => \LCD|byteSel\(3),
	datac => \LCD|byteSel\(1),
	datad => \LCD|Mux70~101_combout\,
	combout => \LCD|Mux70~87_combout\);

-- Location: LCCOMB_X108_Y12_N24
\LCD|Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~0_combout\ = (\LCD|byteSel\(4) & (\LCD|byteSel\(2))) # (!\LCD|byteSel\(4) & ((\LCD|byteSel\(2) & ((\LCD|Mux70~87_combout\))) # (!\LCD|byteSel\(2) & (\LCD|Mux70~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(4),
	datab => \LCD|byteSel\(2),
	datac => \LCD|Mux70~98_combout\,
	datad => \LCD|Mux70~87_combout\,
	combout => \LCD|Mux65~0_combout\);

-- Location: LCCOMB_X108_Y12_N14
\LCD|Mux65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~1_combout\ = (\LCD|byteSel\(4) & ((\LCD|Mux65~0_combout\ & (\LCD|Mux70~99_combout\)) # (!\LCD|Mux65~0_combout\ & ((\LCD|Mux70~86_combout\))))) # (!\LCD|byteSel\(4) & (((\LCD|Mux65~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(4),
	datab => \LCD|Mux70~99_combout\,
	datac => \LCD|Mux70~86_combout\,
	datad => \LCD|Mux65~0_combout\,
	combout => \LCD|Mux65~1_combout\);

-- Location: LCCOMB_X108_Y12_N28
\LCD|Mux65~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~6_combout\ = (\LCD|byteSel\(1) & ((!\LCD|byteSel\(0)) # (!\LCD|byteSel\(3)))) # (!\LCD|byteSel\(1) & ((\LCD|byteSel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(3),
	datac => \LCD|byteSel\(1),
	datad => \LCD|byteSel\(0),
	combout => \LCD|Mux65~6_combout\);

-- Location: LCCOMB_X108_Y12_N22
\LCD|Mux65~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~7_combout\ = (\LCD|Mux65~6_combout\) # ((!\LCD|byteSel\(1) & ((\LCD|Mux64~0_combout\) # (!\LCD|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(1),
	datab => \LCD|Mux33~0_combout\,
	datac => \LCD|Mux64~0_combout\,
	datad => \LCD|Mux65~6_combout\,
	combout => \LCD|Mux65~7_combout\);

-- Location: LCCOMB_X114_Y12_N4
\LCD|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan3~0_combout\ = (\SW[11]~input_o\ & ((\SW[10]~input_o\) # (\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[11]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \LCD|LessThan3~0_combout\);

-- Location: LCCOMB_X108_Y12_N2
\LCD|Mux65~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~3_combout\ = (\LCD|byteSel\(0) & (((!\SW[6]~input_o\ & !\SW[5]~input_o\)) # (!\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \LCD|byteSel\(0),
	combout => \LCD|Mux65~3_combout\);

-- Location: LCCOMB_X108_Y12_N20
\LCD|Mux65~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~4_combout\ = (\LCD|Mux33~0_combout\ & ((\LCD|byteSel\(1) & ((\LCD|Mux65~3_combout\))) # (!\LCD|byteSel\(1) & (!\LCD|LessThan2~0_combout\)))) # (!\LCD|Mux33~0_combout\ & (((\LCD|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan2~0_combout\,
	datab => \LCD|Mux33~0_combout\,
	datac => \LCD|byteSel\(1),
	datad => \LCD|Mux65~3_combout\,
	combout => \LCD|Mux65~4_combout\);

-- Location: LCCOMB_X108_Y12_N6
\LCD|Mux65~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~5_combout\ = (\LCD|Mux65~4_combout\) # ((!\LCD|byteSel\(0) & ((!\LCD|byteSel\(1)) # (!\LCD|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(0),
	datab => \LCD|LessThan3~0_combout\,
	datac => \LCD|byteSel\(1),
	datad => \LCD|Mux65~4_combout\,
	combout => \LCD|Mux65~5_combout\);

-- Location: LCCOMB_X108_Y12_N16
\LCD|Mux65~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~8_combout\ = (\LCD|Mux65~2_combout\) # ((\LCD|byteSel\(2) & ((\LCD|Mux65~5_combout\))) # (!\LCD|byteSel\(2) & (\LCD|Mux65~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux65~2_combout\,
	datab => \LCD|byteSel\(2),
	datac => \LCD|Mux65~7_combout\,
	datad => \LCD|Mux65~5_combout\,
	combout => \LCD|Mux65~8_combout\);

-- Location: LCCOMB_X108_Y12_N0
\LCD|Mux65~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~9_combout\ = (\LCD|byteSel\(5) & (!\LCD|byteSel\(4) & ((\LCD|Mux65~8_combout\)))) # (!\LCD|byteSel\(5) & (((\LCD|Mux65~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(4),
	datab => \LCD|byteSel\(5),
	datac => \LCD|Mux65~1_combout\,
	datad => \LCD|Mux65~8_combout\,
	combout => \LCD|Mux65~9_combout\);

-- Location: FF_X108_Y12_N1
\LCD|data_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LCD|clk_en~clkctrl_outclk\,
	d => \LCD|Mux65~9_combout\,
	ena => \LCD|data_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|data_o\(5));

-- Location: LCCOMB_X109_Y12_N14
\LCD|Mux64~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~2_combout\ = (!\LCD|byteSel\(1) & (!\LCD|byteSel\(0) & (\LCD|byteSel\(5) & !\LCD|byteSel\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(1),
	datab => \LCD|byteSel\(0),
	datac => \LCD|byteSel\(5),
	datad => \LCD|byteSel\(4),
	combout => \LCD|Mux64~2_combout\);

-- Location: LCCOMB_X110_Y11_N8
\LCD|Mux64~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~3_combout\ = (!\LCD|byteSel\(2) & (\LCD|Mux33~0_combout\ & (!\LCD|Mux64~0_combout\ & \LCD|Mux64~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(2),
	datab => \LCD|Mux33~0_combout\,
	datac => \LCD|Mux64~0_combout\,
	datad => \LCD|Mux64~2_combout\,
	combout => \LCD|Mux64~3_combout\);

-- Location: LCCOMB_X112_Y11_N22
\LCD|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan2~0_combout\ = (\SW[15]~input_o\ & ((\SW[13]~input_o\) # (\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \LCD|LessThan2~0_combout\);

-- Location: LCCOMB_X112_Y11_N10
\LCD|Mux70~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~102_combout\ = (\SW[17]~input_o\ & (!\LCD|LessThan2~0_combout\ & !\SW[16]~input_o\)) # (!\SW[17]~input_o\ & ((!\SW[16]~input_o\) # (!\LCD|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \LCD|LessThan2~0_combout\,
	datad => \SW[16]~input_o\,
	combout => \LCD|Mux70~102_combout\);

-- Location: LCCOMB_X113_Y11_N22
\LCD|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan4~0_combout\ = (\SW[7]~input_o\ & ((\SW[5]~input_o\) # (\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \LCD|LessThan4~0_combout\);

-- Location: LCCOMB_X111_Y11_N20
\LCD|Mux70~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~88_combout\ = (\SW[16]~input_o\ & ((\SW[17]~input_o\ & ((!\LCD|byteSel\(0)))) # (!\SW[17]~input_o\ & ((\LCD|LessThan3~0_combout\) # (\LCD|byteSel\(0)))))) # (!\SW[16]~input_o\ & (\SW[17]~input_o\ & ((\LCD|LessThan3~0_combout\) # 
-- (\LCD|byteSel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \LCD|LessThan3~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \LCD|byteSel\(0),
	combout => \LCD|Mux70~88_combout\);

-- Location: LCCOMB_X111_Y11_N6
\LCD|Mux70~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~89_combout\ = (\LCD|byteSel\(1) & (\LCD|Mux70~88_combout\ & ((\LCD|LessThan4~0_combout\) # (!\LCD|byteSel\(0))))) # (!\LCD|byteSel\(1) & (\LCD|byteSel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(1),
	datab => \LCD|byteSel\(0),
	datac => \LCD|LessThan4~0_combout\,
	datad => \LCD|Mux70~88_combout\,
	combout => \LCD|Mux70~89_combout\);

-- Location: LCCOMB_X111_Y11_N24
\LCD|Mux70~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~90_combout\ = (\LCD|byteSel\(1) & (((\LCD|Mux70~89_combout\)))) # (!\LCD|byteSel\(1) & ((\LCD|Mux70~89_combout\ & ((!\LCD|Mux70~102_combout\))) # (!\LCD|Mux70~89_combout\ & (\LCD|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux33~0_combout\,
	datab => \LCD|Mux70~102_combout\,
	datac => \LCD|byteSel\(1),
	datad => \LCD|Mux70~89_combout\,
	combout => \LCD|Mux70~90_combout\);

-- Location: LCCOMB_X111_Y11_N10
\LCD|Mux64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~1_combout\ = (\LCD|byteSel\(2) & (!\LCD|byteSel\(4) & (\LCD|byteSel\(5) & \LCD|Mux70~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(2),
	datab => \LCD|byteSel\(4),
	datac => \LCD|byteSel\(5),
	datad => \LCD|Mux70~90_combout\,
	combout => \LCD|Mux64~1_combout\);

-- Location: LCCOMB_X110_Y12_N6
\LCD|Mux70~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~91_combout\ = (!\LCD|byteSel\(3) & (((!\SW[16]~input_o\ & !\LCD|byteSel\(0))) # (!\LCD|byteSel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(3),
	datab => \SW[16]~input_o\,
	datac => \LCD|byteSel\(0),
	datad => \LCD|byteSel\(1),
	combout => \LCD|Mux70~91_combout\);

-- Location: LCCOMB_X110_Y12_N4
\LCD|Mux70~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux70~100_combout\ = (\LCD|Mux70~91_combout\) # ((\LCD|Mux33~0_combout\ & (\LCD|byteSel\(1) & \LCD|byteSel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux33~0_combout\,
	datab => \LCD|byteSel\(1),
	datac => \LCD|byteSel\(3),
	datad => \LCD|Mux70~91_combout\,
	combout => \LCD|Mux70~100_combout\);

-- Location: LCCOMB_X110_Y11_N22
\LCD|Mux64~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~5_combout\ = (\LCD|byteSel\(2) & (\LCD|byteSel\(4))) # (!\LCD|byteSel\(2) & ((\LCD|Mux70~71_combout\) # (!\LCD|byteSel\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|byteSel\(2),
	datac => \LCD|byteSel\(4),
	datad => \LCD|Mux70~71_combout\,
	combout => \LCD|Mux64~5_combout\);

-- Location: LCCOMB_X110_Y12_N28
\LCD|Mux64~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~4_combout\ = (\LCD|byteSel\(0) & (((\LCD|Mux70~74_combout\ & !\LCD|byteSel\(1))))) # (!\LCD|byteSel\(0) & (\LCD|byteSel\(1) & ((!\LCD|Mux70~74_combout\) # (!\LCD|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux1~0_combout\,
	datab => \LCD|byteSel\(0),
	datac => \LCD|Mux70~74_combout\,
	datad => \LCD|byteSel\(1),
	combout => \LCD|Mux64~4_combout\);

-- Location: LCCOMB_X110_Y11_N12
\LCD|Mux64~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~6_combout\ = (\LCD|byteSel\(4) & (((\LCD|Mux64~5_combout\) # (\LCD|Mux64~4_combout\)))) # (!\LCD|byteSel\(4) & (\LCD|Mux70~93_combout\ & (\LCD|Mux64~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux70~93_combout\,
	datab => \LCD|byteSel\(4),
	datac => \LCD|Mux64~5_combout\,
	datad => \LCD|Mux64~4_combout\,
	combout => \LCD|Mux64~6_combout\);

-- Location: LCCOMB_X110_Y11_N18
\LCD|Mux64~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~7_combout\ = (\LCD|byteSel\(2) & ((\LCD|Mux64~6_combout\ & ((\LCD|Mux70~100_combout\))) # (!\LCD|Mux64~6_combout\ & (\LCD|Mux70~105_combout\)))) # (!\LCD|byteSel\(2) & (((\LCD|Mux64~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux70~105_combout\,
	datab => \LCD|byteSel\(2),
	datac => \LCD|Mux70~100_combout\,
	datad => \LCD|Mux64~6_combout\,
	combout => \LCD|Mux64~7_combout\);

-- Location: LCCOMB_X110_Y11_N10
\LCD|Mux64~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~8_combout\ = (\LCD|Mux64~3_combout\) # ((\LCD|Mux64~1_combout\) # ((!\LCD|byteSel\(5) & \LCD|Mux64~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(5),
	datab => \LCD|Mux64~3_combout\,
	datac => \LCD|Mux64~1_combout\,
	datad => \LCD|Mux64~7_combout\,
	combout => \LCD|Mux64~8_combout\);

-- Location: FF_X110_Y11_N11
\LCD|data_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LCD|clk_en~clkctrl_outclk\,
	d => \LCD|Mux64~8_combout\,
	ena => \LCD|data_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|data_o\(6));

-- Location: LCCOMB_X107_Y12_N4
\LCD|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~0_combout\ = (!\LCD|byteSel\(2) & ((\LCD|byteSel\(4) & (\LCD|byteSel\(1) & !\LCD|byteSel\(0))) # (!\LCD|byteSel\(4) & (!\LCD|byteSel\(1) & \LCD|byteSel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(4),
	datab => \LCD|byteSel\(1),
	datac => \LCD|byteSel\(0),
	datad => \LCD|byteSel\(2),
	combout => \LCD|Mux63~0_combout\);

-- Location: LCCOMB_X107_Y12_N10
\LCD|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~1_combout\ = (!\LCD|byteSel\(5) & (\LCD|Mux63~0_combout\ & \LCD|byteSel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|byteSel\(5),
	datac => \LCD|Mux63~0_combout\,
	datad => \LCD|byteSel\(3),
	combout => \LCD|Mux63~1_combout\);

-- Location: FF_X107_Y12_N11
\LCD|data_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LCD|clk_en~clkctrl_outclk\,
	d => \LCD|Mux63~1_combout\,
	ena => \LCD|data_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|data_o\(7));

-- Location: FF_X112_Y12_N1
\LCD|EN_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LCD|clk_en~clkctrl_outclk\,
	asdata => \LCD|state.enable~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|EN_sig~q\);

-- Location: LCCOMB_X112_Y12_N26
\LCD|RS_sig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|RS_sig~0_combout\ = (\LCD|byteSel\(3) & ((\LCD|byteSel\(2) & (!\LCD|byteSel\(4))) # (!\LCD|byteSel\(2) & ((\LCD|byteSel\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(4),
	datab => \LCD|byteSel\(2),
	datac => \LCD|byteSel\(1),
	datad => \LCD|byteSel\(3),
	combout => \LCD|RS_sig~0_combout\);

-- Location: LCCOMB_X112_Y12_N10
\LCD|RS_sig~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|RS_sig~1_combout\ = (\LCD|RS_sig~0_combout\ & ((\LCD|byteSel\(0)) # (!\LCD|byteSel\(4)))) # (!\LCD|RS_sig~0_combout\ & ((\LCD|byteSel\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(0),
	datac => \LCD|RS_sig~0_combout\,
	datad => \LCD|byteSel\(4),
	combout => \LCD|RS_sig~1_combout\);

-- Location: LCCOMB_X112_Y12_N24
\LCD|RS_sig~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|RS_sig~2_combout\ = (\LCD|state.start~q\ & (((\LCD|RS_sig~q\)))) # (!\LCD|state.start~q\ & ((\LCD|byteSel\(5)) # ((\LCD|RS_sig~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|byteSel\(5),
	datab => \LCD|state.start~q\,
	datac => \LCD|RS_sig~q\,
	datad => \LCD|RS_sig~1_combout\,
	combout => \LCD|RS_sig~2_combout\);

-- Location: FF_X112_Y12_N25
\LCD|RS_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \LCD|clk_en~clkctrl_outclk\,
	d => \LCD|RS_sig~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|RS_sig~q\);

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

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_LCD_ON <= \LCD_ON~output_o\;

ww_LCD_BLON <= \LCD_BLON~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

ww_LCD_EN <= \LCD_EN~output_o\;

ww_LCD_RS <= \LCD_RS~output_o\;

GPIO(0) <= \GPIO[0]~output_o\;

GPIO(1) <= \GPIO[1]~output_o\;

GPIO(2) <= \GPIO[2]~output_o\;

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

LCD_DATA(0) <= \LCD_DATA[0]~output_o\;

LCD_DATA(1) <= \LCD_DATA[1]~output_o\;

LCD_DATA(2) <= \LCD_DATA[2]~output_o\;

LCD_DATA(3) <= \LCD_DATA[3]~output_o\;

LCD_DATA(4) <= \LCD_DATA[4]~output_o\;

LCD_DATA(5) <= \LCD_DATA[5]~output_o\;

LCD_DATA(6) <= \LCD_DATA[6]~output_o\;

LCD_DATA(7) <= \LCD_DATA[7]~output_o\;
END structure;


