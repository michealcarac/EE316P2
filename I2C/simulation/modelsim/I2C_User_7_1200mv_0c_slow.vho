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

-- DATE "02/08/2022 14:48:15"

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
	GPIO : INOUT std_logic_vector(35 DOWNTO 0)
	);
END DE2115;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- GPIO[0]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[1]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add0~10_combout\ : std_logic;
SIGNAL \Inst_top_level|count[7]~33_combout\ : std_logic;
SIGNAL \Inst_top_level|count[9]~37_combout\ : std_logic;
SIGNAL \Inst_top_level|count[15]~49_combout\ : std_logic;
SIGNAL \Inst_top_level|count[16]~51_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|state.ready~q\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|state.slv_ack2~q\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector23~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Mux0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector23~3_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector23~4_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Mux3~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Mux3~1_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Equal1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector23~5_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector23~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Mux5~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector21~3_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|process_0~5_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|process_0~7_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|process_0~8_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|process_0~9_combout\ : std_logic;
SIGNAL \Inst_top_level|Equal0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector17~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|state~14_combout\ : std_logic;
SIGNAL \Inst_top_level|byteSel~4_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|data_tx[7]~2_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|count~6_combout\ : std_logic;
SIGNAL \Inst_top_level|count[0]~60_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
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
SIGNAL \GPIO[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
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
SIGNAL \GPIO[0]~output_o\ : std_logic;
SIGNAL \GPIO[1]~output_o\ : std_logic;
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
SIGNAL \Inst_top_level|I2C_Transmit_Read|count~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \GPIO[1]~input_o\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add0~16_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add0~1\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|count~8_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add0~3\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add0~5\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add0~6_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|count~2_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add0~7\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add0~8_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|LessThan1~8_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|process_0~10_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|process_0~11_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|stretch~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|stretch~q\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|count~9_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|count~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Equal0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|count~7_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Equal0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|count~3_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add0~9\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add0~11\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add0~12_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|count~5_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add0~13\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add0~14_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|count~4_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add0~15\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add0~17\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add0~18_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|LessThan1~9_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|LessThan1~10_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|process_0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|process_0~6_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|data_clk~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|data_clk~q\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|data_clk_prev~q\ : std_logic;
SIGNAL \Inst_top_level|count[1]~20_cout\ : std_logic;
SIGNAL \Inst_top_level|count[1]~21_combout\ : std_logic;
SIGNAL \Inst_top_level|state.start~q\ : std_logic;
SIGNAL \Inst_top_level|count[19]~53_combout\ : std_logic;
SIGNAL \Inst_top_level|count[1]~22\ : std_logic;
SIGNAL \Inst_top_level|count[2]~23_combout\ : std_logic;
SIGNAL \Inst_top_level|count[2]~24\ : std_logic;
SIGNAL \Inst_top_level|count[3]~25_combout\ : std_logic;
SIGNAL \Inst_top_level|Equal0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|count[3]~26\ : std_logic;
SIGNAL \Inst_top_level|count[4]~27_combout\ : std_logic;
SIGNAL \Inst_top_level|count[4]~28\ : std_logic;
SIGNAL \Inst_top_level|count[5]~30\ : std_logic;
SIGNAL \Inst_top_level|count[6]~31_combout\ : std_logic;
SIGNAL \Inst_top_level|count[5]~29_combout\ : std_logic;
SIGNAL \Inst_top_level|Equal0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Equal0~3_combout\ : std_logic;
SIGNAL \Inst_top_level|count[6]~32\ : std_logic;
SIGNAL \Inst_top_level|count[7]~34\ : std_logic;
SIGNAL \Inst_top_level|count[8]~35_combout\ : std_logic;
SIGNAL \Inst_top_level|count[8]~36\ : std_logic;
SIGNAL \Inst_top_level|count[9]~38\ : std_logic;
SIGNAL \Inst_top_level|count[10]~39_combout\ : std_logic;
SIGNAL \Inst_top_level|count[10]~40\ : std_logic;
SIGNAL \Inst_top_level|count[11]~41_combout\ : std_logic;
SIGNAL \Inst_top_level|count[11]~42\ : std_logic;
SIGNAL \Inst_top_level|count[12]~43_combout\ : std_logic;
SIGNAL \Inst_top_level|count[12]~44\ : std_logic;
SIGNAL \Inst_top_level|count[13]~46\ : std_logic;
SIGNAL \Inst_top_level|count[14]~47_combout\ : std_logic;
SIGNAL \Inst_top_level|count[13]~45_combout\ : std_logic;
SIGNAL \Inst_top_level|Equal0~5_combout\ : std_logic;
SIGNAL \Inst_top_level|count[14]~48\ : std_logic;
SIGNAL \Inst_top_level|count[15]~50\ : std_logic;
SIGNAL \Inst_top_level|count[16]~52\ : std_logic;
SIGNAL \Inst_top_level|count[17]~54_combout\ : std_logic;
SIGNAL \Inst_top_level|count[17]~55\ : std_logic;
SIGNAL \Inst_top_level|count[18]~56_combout\ : std_logic;
SIGNAL \Inst_top_level|count[18]~57\ : std_logic;
SIGNAL \Inst_top_level|count[19]~58_combout\ : std_logic;
SIGNAL \Inst_top_level|Equal0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Equal0~6_combout\ : std_logic;
SIGNAL \Inst_top_level|ena~0_combout\ : std_logic;
SIGNAL \Inst_top_level|ena~q\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|bit_cnt[0]~5_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Equal1~1_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector21~4_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|process_1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|state.rd~q\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector18~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|state.start~q\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector19~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|state.command~q\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|state~15_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|state.slv_ack1~q\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector20~1_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|state.wr~q\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|bit_cnt[2]~4_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector25~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|state~13_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|state.mstr_ack~q\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector22~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|state.stop~q\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector21~2_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector23~1_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Add1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector20~0_combout\ : std_logic;
SIGNAL \Inst_top_level|byteSel~2_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|busy~q\ : std_logic;
SIGNAL \Inst_top_level|Selector0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|state.write_data~q\ : std_logic;
SIGNAL \Inst_top_level|byteSel[3]~1_combout\ : std_logic;
SIGNAL \Inst_top_level|byteSel~3_combout\ : std_logic;
SIGNAL \Inst_top_level|byteSel~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Mux1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector23~2_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector23~12_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector23~13_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector23~9_combout\ : std_logic;
SIGNAL \Inst_top_level|Mux4~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Mux7~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Mux4~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Mux4~1_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|data_tx[7]~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Mux6~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Mux2~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Mux2~1_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector23~7_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector23~8_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector23~10_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector23~11_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|sda_int~q\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|Selector29~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|scl_ena~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|scl_ena~1_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|scl_ena~q\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|scl_clk~0_combout\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|scl_clk~q\ : std_logic;
SIGNAL \Inst_top_level|I2C_Transmit_Read|scl~1_combout\ : std_logic;
SIGNAL \Inst_top_level|count\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Inst_top_level|byteSel\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_top_level|I2C_Transmit_Read|data_tx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Inst_top_level|I2C_Transmit_Read|bit_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Inst_top_level|I2C_Transmit_Read|count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Inst_top_level|ALT_INV_count[19]~53_combout\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\Inst_top_level|ALT_INV_count[19]~53_combout\ <= NOT \Inst_top_level|count[19]~53_combout\;

-- Location: LCCOMB_X110_Y38_N12
\Inst_top_level|I2C_Transmit_Read|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Add0~10_combout\ = (\Inst_top_level|I2C_Transmit_Read|count\(5) & (!\Inst_top_level|I2C_Transmit_Read|Add0~9\)) # (!\Inst_top_level|I2C_Transmit_Read|count\(5) & ((\Inst_top_level|I2C_Transmit_Read|Add0~9\) # (GND)))
-- \Inst_top_level|I2C_Transmit_Read|Add0~11\ = CARRY((!\Inst_top_level|I2C_Transmit_Read|Add0~9\) # (!\Inst_top_level|I2C_Transmit_Read|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|count\(5),
	datad => VCC,
	cin => \Inst_top_level|I2C_Transmit_Read|Add0~9\,
	combout => \Inst_top_level|I2C_Transmit_Read|Add0~10_combout\,
	cout => \Inst_top_level|I2C_Transmit_Read|Add0~11\);

-- Location: FF_X112_Y38_N13
\Inst_top_level|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[16]~51_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(16));

-- Location: FF_X112_Y39_N27
\Inst_top_level|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[7]~33_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(7));

-- Location: FF_X112_Y39_N31
\Inst_top_level|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[9]~37_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(9));

-- Location: FF_X112_Y38_N11
\Inst_top_level|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[15]~49_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(15));

-- Location: LCCOMB_X112_Y39_N26
\Inst_top_level|count[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[7]~33_combout\ = (\Inst_top_level|count\(7) & (\Inst_top_level|count[6]~32\ $ (GND))) # (!\Inst_top_level|count\(7) & (!\Inst_top_level|count[6]~32\ & VCC))
-- \Inst_top_level|count[7]~34\ = CARRY((\Inst_top_level|count\(7) & !\Inst_top_level|count[6]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count\(7),
	datad => VCC,
	cin => \Inst_top_level|count[6]~32\,
	combout => \Inst_top_level|count[7]~33_combout\,
	cout => \Inst_top_level|count[7]~34\);

-- Location: LCCOMB_X112_Y39_N30
\Inst_top_level|count[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[9]~37_combout\ = (\Inst_top_level|count\(9) & (\Inst_top_level|count[8]~36\ $ (GND))) # (!\Inst_top_level|count\(9) & (!\Inst_top_level|count[8]~36\ & VCC))
-- \Inst_top_level|count[9]~38\ = CARRY((\Inst_top_level|count\(9) & !\Inst_top_level|count[8]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count\(9),
	datad => VCC,
	cin => \Inst_top_level|count[8]~36\,
	combout => \Inst_top_level|count[9]~37_combout\,
	cout => \Inst_top_level|count[9]~38\);

-- Location: LCCOMB_X112_Y38_N10
\Inst_top_level|count[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[15]~49_combout\ = (\Inst_top_level|count\(15) & (\Inst_top_level|count[14]~48\ & VCC)) # (!\Inst_top_level|count\(15) & (!\Inst_top_level|count[14]~48\))
-- \Inst_top_level|count[15]~50\ = CARRY((!\Inst_top_level|count\(15) & !\Inst_top_level|count[14]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count\(15),
	datad => VCC,
	cin => \Inst_top_level|count[14]~48\,
	combout => \Inst_top_level|count[15]~49_combout\,
	cout => \Inst_top_level|count[15]~50\);

-- Location: LCCOMB_X112_Y38_N12
\Inst_top_level|count[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[16]~51_combout\ = (\Inst_top_level|count\(16) & ((GND) # (!\Inst_top_level|count[15]~50\))) # (!\Inst_top_level|count\(16) & (\Inst_top_level|count[15]~50\ $ (GND)))
-- \Inst_top_level|count[16]~52\ = CARRY((\Inst_top_level|count\(16)) # (!\Inst_top_level|count[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count\(16),
	datad => VCC,
	cin => \Inst_top_level|count[15]~50\,
	combout => \Inst_top_level|count[16]~51_combout\,
	cout => \Inst_top_level|count[16]~52\);

-- Location: FF_X109_Y39_N13
\Inst_top_level|I2C_Transmit_Read|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|I2C_Transmit_Read|Selector17~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|state.ready~q\);

-- Location: FF_X109_Y39_N7
\Inst_top_level|I2C_Transmit_Read|state.slv_ack2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|I2C_Transmit_Read|state~14_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|state.slv_ack2~q\);

-- Location: LCCOMB_X109_Y39_N30
\Inst_top_level|I2C_Transmit_Read|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector23~0_combout\ = ((\Inst_top_level|I2C_Transmit_Read|state.mstr_ack~q\) # ((!\Inst_top_level|ena~q\ & \Inst_top_level|I2C_Transmit_Read|state.slv_ack2~q\))) # (!\Inst_top_level|I2C_Transmit_Read|state.ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|state.ready~q\,
	datab => \Inst_top_level|ena~q\,
	datac => \Inst_top_level|I2C_Transmit_Read|state.mstr_ack~q\,
	datad => \Inst_top_level|I2C_Transmit_Read|state.slv_ack2~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector23~0_combout\);

-- Location: FF_X107_Y39_N31
\Inst_top_level|byteSel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|byteSel~4_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|byteSel[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|byteSel\(3));

-- Location: FF_X108_Y39_N9
\Inst_top_level|I2C_Transmit_Read|data_tx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Mux1~0_combout\,
	sload => VCC,
	ena => \Inst_top_level|I2C_Transmit_Read|data_tx[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|data_tx\(4));

-- Location: FF_X108_Y39_N25
\Inst_top_level|I2C_Transmit_Read|data_tx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Mux0~0_combout\,
	sload => VCC,
	ena => \Inst_top_level|I2C_Transmit_Read|data_tx[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|data_tx\(7));

-- Location: LCCOMB_X107_Y39_N2
\Inst_top_level|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Mux0~0_combout\ = (!\Inst_top_level|byteSel\(3) & (!\Inst_top_level|byteSel\(0) & (!\Inst_top_level|byteSel\(1) & \Inst_top_level|byteSel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|byteSel\(3),
	datab => \Inst_top_level|byteSel\(0),
	datac => \Inst_top_level|byteSel\(1),
	datad => \Inst_top_level|byteSel\(2),
	combout => \Inst_top_level|Mux0~0_combout\);

-- Location: LCCOMB_X108_Y39_N22
\Inst_top_level|I2C_Transmit_Read|Selector23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector23~3_combout\ = (\Inst_top_level|Mux0~0_combout\ & ((\Inst_top_level|I2C_Transmit_Read|Selector20~0_combout\) # ((\Inst_top_level|I2C_Transmit_Read|data_tx\(7) & 
-- \Inst_top_level|I2C_Transmit_Read|state.slv_ack1~q\)))) # (!\Inst_top_level|Mux0~0_combout\ & (((\Inst_top_level|I2C_Transmit_Read|data_tx\(7) & \Inst_top_level|I2C_Transmit_Read|state.slv_ack1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Mux0~0_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|Selector20~0_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|data_tx\(7),
	datad => \Inst_top_level|I2C_Transmit_Read|state.slv_ack1~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector23~3_combout\);

-- Location: LCCOMB_X110_Y39_N4
\Inst_top_level|I2C_Transmit_Read|Selector23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector23~4_combout\ = (\Inst_top_level|I2C_Transmit_Read|state.command~q\ & ((\Inst_top_level|I2C_Transmit_Read|bit_cnt\(2) & (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(0))) # 
-- (!\Inst_top_level|I2C_Transmit_Read|bit_cnt\(2) & ((!\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(2),
	datab => \Inst_top_level|I2C_Transmit_Read|state.command~q\,
	datac => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(0),
	datad => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(1),
	combout => \Inst_top_level|I2C_Transmit_Read|Selector23~4_combout\);

-- Location: FF_X107_Y39_N29
\Inst_top_level|I2C_Transmit_Read|data_tx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Mux5~0_combout\,
	sload => VCC,
	ena => \Inst_top_level|I2C_Transmit_Read|data_tx[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|data_tx\(2));

-- Location: LCCOMB_X107_Y39_N28
\Inst_top_level|I2C_Transmit_Read|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Mux3~0_combout\ = (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(0) & (\Inst_top_level|I2C_Transmit_Read|data_tx\(3) & ((\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1))))) # (!\Inst_top_level|I2C_Transmit_Read|bit_cnt\(0) & 
-- (((\Inst_top_level|I2C_Transmit_Read|data_tx\(2)) # (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(0),
	datab => \Inst_top_level|I2C_Transmit_Read|data_tx\(3),
	datac => \Inst_top_level|I2C_Transmit_Read|data_tx\(2),
	datad => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(1),
	combout => \Inst_top_level|I2C_Transmit_Read|Mux3~0_combout\);

-- Location: LCCOMB_X107_Y39_N18
\Inst_top_level|I2C_Transmit_Read|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Mux3~1_combout\ = (\Inst_top_level|I2C_Transmit_Read|Selector25~0_combout\ & ((\Inst_top_level|I2C_Transmit_Read|Mux3~0_combout\ & ((\Inst_top_level|I2C_Transmit_Read|data_tx\(0)))) # 
-- (!\Inst_top_level|I2C_Transmit_Read|Mux3~0_combout\ & (\Inst_top_level|I2C_Transmit_Read|data_tx\(1))))) # (!\Inst_top_level|I2C_Transmit_Read|Selector25~0_combout\ & (((\Inst_top_level|I2C_Transmit_Read|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|data_tx\(1),
	datab => \Inst_top_level|I2C_Transmit_Read|Selector25~0_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|data_tx\(0),
	datad => \Inst_top_level|I2C_Transmit_Read|Mux3~0_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|Mux3~1_combout\);

-- Location: LCCOMB_X108_Y39_N8
\Inst_top_level|I2C_Transmit_Read|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Equal1~0_combout\ = (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1) & \Inst_top_level|I2C_Transmit_Read|bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(1),
	datab => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(0),
	combout => \Inst_top_level|I2C_Transmit_Read|Equal1~0_combout\);

-- Location: LCCOMB_X108_Y39_N14
\Inst_top_level|I2C_Transmit_Read|Selector23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector23~5_combout\ = (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(2) & (((\Inst_top_level|I2C_Transmit_Read|Equal1~0_combout\) # (\Inst_top_level|I2C_Transmit_Read|Mux3~1_combout\)))) # 
-- (!\Inst_top_level|I2C_Transmit_Read|bit_cnt\(2) & ((\Inst_top_level|I2C_Transmit_Read|Equal1~0_combout\ & ((\Inst_top_level|I2C_Transmit_Read|Mux3~1_combout\))) # (!\Inst_top_level|I2C_Transmit_Read|Equal1~0_combout\ & 
-- (\Inst_top_level|I2C_Transmit_Read|data_tx\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|data_tx\(4),
	datab => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(2),
	datac => \Inst_top_level|I2C_Transmit_Read|Equal1~0_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|Mux3~1_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector23~5_combout\);

-- Location: LCCOMB_X109_Y39_N10
\Inst_top_level|I2C_Transmit_Read|Selector23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector23~6_combout\ = (\Inst_top_level|I2C_Transmit_Read|Selector23~4_combout\) # ((\Inst_top_level|I2C_Transmit_Read|state.wr~q\ & \Inst_top_level|I2C_Transmit_Read|Selector23~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|Selector23~4_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|state.wr~q\,
	datad => \Inst_top_level|I2C_Transmit_Read|Selector23~5_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector23~6_combout\);

-- Location: LCCOMB_X107_Y39_N12
\Inst_top_level|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Mux5~0_combout\ = (\Inst_top_level|byteSel\(1) & (!\Inst_top_level|byteSel\(2) & (\Inst_top_level|byteSel\(3) $ (!\Inst_top_level|byteSel\(0))))) # (!\Inst_top_level|byteSel\(1) & (((!\Inst_top_level|byteSel\(0) & 
-- \Inst_top_level|byteSel\(2))) # (!\Inst_top_level|byteSel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|byteSel\(3),
	datab => \Inst_top_level|byteSel\(0),
	datac => \Inst_top_level|byteSel\(1),
	datad => \Inst_top_level|byteSel\(2),
	combout => \Inst_top_level|Mux5~0_combout\);

-- Location: LCCOMB_X108_Y39_N30
\Inst_top_level|I2C_Transmit_Read|Selector21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector21~3_combout\ = (\Inst_top_level|I2C_Transmit_Read|state.mstr_ack~q\ & \Inst_top_level|ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|state.mstr_ack~q\,
	datad => \Inst_top_level|ena~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector21~3_combout\);

-- Location: FF_X110_Y38_N31
\Inst_top_level|I2C_Transmit_Read|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|I2C_Transmit_Read|count~6_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|count\(5));

-- Location: LCCOMB_X111_Y38_N22
\Inst_top_level|I2C_Transmit_Read|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|process_0~5_combout\ = (\Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\) # (\Inst_top_level|I2C_Transmit_Read|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|Add0~18_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|process_0~5_combout\);

-- Location: LCCOMB_X111_Y38_N26
\Inst_top_level|I2C_Transmit_Read|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|process_0~7_combout\ = (\Inst_top_level|I2C_Transmit_Read|Add0~10_combout\ & (\Inst_top_level|I2C_Transmit_Read|Add0~14_combout\ & \Inst_top_level|I2C_Transmit_Read|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|Add0~10_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|Add0~14_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|Add0~18_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|process_0~7_combout\);

-- Location: LCCOMB_X111_Y38_N16
\Inst_top_level|I2C_Transmit_Read|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|process_0~8_combout\ = (\Inst_top_level|I2C_Transmit_Read|count~3_combout\) # ((\Inst_top_level|I2C_Transmit_Read|Add0~4_combout\ & (\Inst_top_level|I2C_Transmit_Read|Add0~2_combout\ & 
-- \Inst_top_level|I2C_Transmit_Read|count~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|Add0~4_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|Add0~2_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|count~3_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|count~2_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|process_0~8_combout\);

-- Location: LCCOMB_X111_Y38_N10
\Inst_top_level|I2C_Transmit_Read|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|process_0~9_combout\ = (\Inst_top_level|I2C_Transmit_Read|Add0~12_combout\ & (!\Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\ & (\Inst_top_level|I2C_Transmit_Read|process_0~7_combout\ & 
-- \Inst_top_level|I2C_Transmit_Read|process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|Add0~12_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|process_0~7_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|process_0~8_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|process_0~9_combout\);

-- Location: FF_X111_Y39_N17
\Inst_top_level|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[0]~60_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(0));

-- Location: LCCOMB_X112_Y39_N6
\Inst_top_level|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Equal0~4_combout\ = (\Inst_top_level|count\(10) & (\Inst_top_level|count\(8) & (\Inst_top_level|count\(9) & \Inst_top_level|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count\(10),
	datab => \Inst_top_level|count\(8),
	datac => \Inst_top_level|count\(9),
	datad => \Inst_top_level|count\(11),
	combout => \Inst_top_level|Equal0~4_combout\);

-- Location: LCCOMB_X109_Y39_N12
\Inst_top_level|I2C_Transmit_Read|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector17~0_combout\ = (!\Inst_top_level|I2C_Transmit_Read|state.stop~q\ & ((\Inst_top_level|I2C_Transmit_Read|state.ready~q\) # (\Inst_top_level|ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|state.stop~q\,
	datac => \Inst_top_level|I2C_Transmit_Read|state.ready~q\,
	datad => \Inst_top_level|ena~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector17~0_combout\);

-- Location: LCCOMB_X110_Y39_N12
\Inst_top_level|I2C_Transmit_Read|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|state~14_combout\ = (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(2) & (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1) & (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(0) & \Inst_top_level|I2C_Transmit_Read|state.wr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(2),
	datab => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(1),
	datac => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(0),
	datad => \Inst_top_level|I2C_Transmit_Read|state.wr~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|state~14_combout\);

-- Location: LCCOMB_X107_Y39_N30
\Inst_top_level|byteSel~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|byteSel~4_combout\ = (\Inst_top_level|byteSel\(3)) # ((\Inst_top_level|byteSel\(0) & (\Inst_top_level|byteSel\(1) & \Inst_top_level|byteSel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|byteSel\(0),
	datab => \Inst_top_level|byteSel\(1),
	datac => \Inst_top_level|byteSel\(3),
	datad => \Inst_top_level|byteSel\(2),
	combout => \Inst_top_level|byteSel~4_combout\);

-- Location: LCCOMB_X108_Y39_N12
\Inst_top_level|I2C_Transmit_Read|data_tx[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|data_tx[7]~2_combout\ = (\KEY[0]~input_o\ & (((\Inst_top_level|I2C_Transmit_Read|state.mstr_ack~q\) # (\Inst_top_level|I2C_Transmit_Read|state.slv_ack2~q\)) # (!\Inst_top_level|I2C_Transmit_Read|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Inst_top_level|I2C_Transmit_Read|state.ready~q\,
	datac => \Inst_top_level|I2C_Transmit_Read|state.mstr_ack~q\,
	datad => \Inst_top_level|I2C_Transmit_Read|state.slv_ack2~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|data_tx[7]~2_combout\);

-- Location: LCCOMB_X110_Y38_N30
\Inst_top_level|I2C_Transmit_Read|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|count~6_combout\ = (!\Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\ & \Inst_top_level|I2C_Transmit_Read|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|Add0~10_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|count~6_combout\);

-- Location: LCCOMB_X111_Y39_N16
\Inst_top_level|count[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[0]~60_combout\ = \Inst_top_level|count\(0) $ (((!\Inst_top_level|Equal0~6_combout\ & !\Inst_top_level|state.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Equal0~6_combout\,
	datac => \Inst_top_level|count\(0),
	datad => \Inst_top_level|state.start~q\,
	combout => \Inst_top_level|count[0]~60_combout\);

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

-- Location: IOOBUF_X107_Y0_N2
\GPIO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|I2C_Transmit_Read|Selector29~0_combout\,
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
	i => \Inst_top_level|I2C_Transmit_Read|scl~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO[1]~output_o\);

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

-- Location: LCCOMB_X109_Y38_N8
\Inst_top_level|I2C_Transmit_Read|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|count~1_combout\ = (!\Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\ & \Inst_top_level|I2C_Transmit_Read|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|Add0~18_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|count~1_combout\);

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

-- Location: FF_X109_Y38_N9
\Inst_top_level|I2C_Transmit_Read|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|I2C_Transmit_Read|count~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|count\(9));

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

-- Location: LCCOMB_X110_Y38_N18
\Inst_top_level|I2C_Transmit_Read|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Add0~16_combout\ = (\Inst_top_level|I2C_Transmit_Read|count\(8) & (\Inst_top_level|I2C_Transmit_Read|Add0~15\ $ (GND))) # (!\Inst_top_level|I2C_Transmit_Read|count\(8) & (!\Inst_top_level|I2C_Transmit_Read|Add0~15\ & 
-- VCC))
-- \Inst_top_level|I2C_Transmit_Read|Add0~17\ = CARRY((\Inst_top_level|I2C_Transmit_Read|count\(8) & !\Inst_top_level|I2C_Transmit_Read|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|count\(8),
	datad => VCC,
	cin => \Inst_top_level|I2C_Transmit_Read|Add0~15\,
	combout => \Inst_top_level|I2C_Transmit_Read|Add0~16_combout\,
	cout => \Inst_top_level|I2C_Transmit_Read|Add0~17\);

-- Location: LCCOMB_X110_Y38_N2
\Inst_top_level|I2C_Transmit_Read|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Add0~0_combout\ = (\Inst_top_level|I2C_Transmit_Read|count\(0) & (\Inst_top_level|I2C_Transmit_Read|stretch~q\ $ (GND))) # (!\Inst_top_level|I2C_Transmit_Read|count\(0) & (!\Inst_top_level|I2C_Transmit_Read|stretch~q\ & 
-- VCC))
-- \Inst_top_level|I2C_Transmit_Read|Add0~1\ = CARRY((\Inst_top_level|I2C_Transmit_Read|count\(0) & !\Inst_top_level|I2C_Transmit_Read|stretch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|count\(0),
	datab => \Inst_top_level|I2C_Transmit_Read|stretch~q\,
	datad => VCC,
	combout => \Inst_top_level|I2C_Transmit_Read|Add0~0_combout\,
	cout => \Inst_top_level|I2C_Transmit_Read|Add0~1\);

-- Location: LCCOMB_X110_Y38_N4
\Inst_top_level|I2C_Transmit_Read|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Add0~2_combout\ = (\Inst_top_level|I2C_Transmit_Read|count\(1) & (!\Inst_top_level|I2C_Transmit_Read|Add0~1\)) # (!\Inst_top_level|I2C_Transmit_Read|count\(1) & ((\Inst_top_level|I2C_Transmit_Read|Add0~1\) # (GND)))
-- \Inst_top_level|I2C_Transmit_Read|Add0~3\ = CARRY((!\Inst_top_level|I2C_Transmit_Read|Add0~1\) # (!\Inst_top_level|I2C_Transmit_Read|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|I2C_Transmit_Read|count\(1),
	datad => VCC,
	cin => \Inst_top_level|I2C_Transmit_Read|Add0~1\,
	combout => \Inst_top_level|I2C_Transmit_Read|Add0~2_combout\,
	cout => \Inst_top_level|I2C_Transmit_Read|Add0~3\);

-- Location: LCCOMB_X110_Y38_N28
\Inst_top_level|I2C_Transmit_Read|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|count~8_combout\ = (\Inst_top_level|I2C_Transmit_Read|Add0~2_combout\ & !\Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|I2C_Transmit_Read|Add0~2_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|count~8_combout\);

-- Location: FF_X110_Y38_N29
\Inst_top_level|I2C_Transmit_Read|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|I2C_Transmit_Read|count~8_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|count\(1));

-- Location: LCCOMB_X110_Y38_N6
\Inst_top_level|I2C_Transmit_Read|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Add0~4_combout\ = (\Inst_top_level|I2C_Transmit_Read|count\(2) & (\Inst_top_level|I2C_Transmit_Read|Add0~3\ $ (GND))) # (!\Inst_top_level|I2C_Transmit_Read|count\(2) & (!\Inst_top_level|I2C_Transmit_Read|Add0~3\ & VCC))
-- \Inst_top_level|I2C_Transmit_Read|Add0~5\ = CARRY((\Inst_top_level|I2C_Transmit_Read|count\(2) & !\Inst_top_level|I2C_Transmit_Read|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|count\(2),
	datad => VCC,
	cin => \Inst_top_level|I2C_Transmit_Read|Add0~3\,
	combout => \Inst_top_level|I2C_Transmit_Read|Add0~4_combout\,
	cout => \Inst_top_level|I2C_Transmit_Read|Add0~5\);

-- Location: LCCOMB_X110_Y38_N8
\Inst_top_level|I2C_Transmit_Read|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Add0~6_combout\ = (\Inst_top_level|I2C_Transmit_Read|count\(3) & (!\Inst_top_level|I2C_Transmit_Read|Add0~5\)) # (!\Inst_top_level|I2C_Transmit_Read|count\(3) & ((\Inst_top_level|I2C_Transmit_Read|Add0~5\) # (GND)))
-- \Inst_top_level|I2C_Transmit_Read|Add0~7\ = CARRY((!\Inst_top_level|I2C_Transmit_Read|Add0~5\) # (!\Inst_top_level|I2C_Transmit_Read|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|I2C_Transmit_Read|count\(3),
	datad => VCC,
	cin => \Inst_top_level|I2C_Transmit_Read|Add0~5\,
	combout => \Inst_top_level|I2C_Transmit_Read|Add0~6_combout\,
	cout => \Inst_top_level|I2C_Transmit_Read|Add0~7\);

-- Location: LCCOMB_X111_Y38_N30
\Inst_top_level|I2C_Transmit_Read|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|count~2_combout\ = (!\Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\ & \Inst_top_level|I2C_Transmit_Read|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|Add0~6_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|count~2_combout\);

-- Location: FF_X110_Y38_N1
\Inst_top_level|I2C_Transmit_Read|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|I2C_Transmit_Read|count~2_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|count\(3));

-- Location: LCCOMB_X110_Y38_N10
\Inst_top_level|I2C_Transmit_Read|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Add0~8_combout\ = (\Inst_top_level|I2C_Transmit_Read|count\(4) & (\Inst_top_level|I2C_Transmit_Read|Add0~7\ $ (GND))) # (!\Inst_top_level|I2C_Transmit_Read|count\(4) & (!\Inst_top_level|I2C_Transmit_Read|Add0~7\ & VCC))
-- \Inst_top_level|I2C_Transmit_Read|Add0~9\ = CARRY((\Inst_top_level|I2C_Transmit_Read|count\(4) & !\Inst_top_level|I2C_Transmit_Read|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|I2C_Transmit_Read|count\(4),
	datad => VCC,
	cin => \Inst_top_level|I2C_Transmit_Read|Add0~7\,
	combout => \Inst_top_level|I2C_Transmit_Read|Add0~8_combout\,
	cout => \Inst_top_level|I2C_Transmit_Read|Add0~9\);

-- Location: LCCOMB_X111_Y38_N0
\Inst_top_level|I2C_Transmit_Read|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|LessThan1~8_combout\ = (\Inst_top_level|I2C_Transmit_Read|Add0~10_combout\ & (\Inst_top_level|I2C_Transmit_Read|Add0~8_combout\ & (\Inst_top_level|I2C_Transmit_Read|Add0~14_combout\ & 
-- \Inst_top_level|I2C_Transmit_Read|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|Add0~10_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|Add0~8_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|Add0~14_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|Add0~12_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|LessThan1~8_combout\);

-- Location: LCCOMB_X111_Y38_N24
\Inst_top_level|I2C_Transmit_Read|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|process_0~10_combout\ = ((!\Inst_top_level|I2C_Transmit_Read|Add0~6_combout\ & !\Inst_top_level|I2C_Transmit_Read|Add0~4_combout\)) # (!\Inst_top_level|I2C_Transmit_Read|LessThan1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|Add0~6_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|Add0~4_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|LessThan1~8_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|process_0~10_combout\);

-- Location: LCCOMB_X111_Y38_N12
\Inst_top_level|I2C_Transmit_Read|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|process_0~11_combout\ = (\Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\) # ((\Inst_top_level|I2C_Transmit_Read|Add0~18_combout\ & (\Inst_top_level|I2C_Transmit_Read|Add0~16_combout\)) # 
-- (!\Inst_top_level|I2C_Transmit_Read|Add0~18_combout\ & ((\Inst_top_level|I2C_Transmit_Read|process_0~10_combout\) # (!\Inst_top_level|I2C_Transmit_Read|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|Add0~18_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|Add0~16_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|process_0~10_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|process_0~11_combout\);

-- Location: LCCOMB_X111_Y38_N28
\Inst_top_level|I2C_Transmit_Read|stretch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|stretch~0_combout\ = (\Inst_top_level|I2C_Transmit_Read|process_0~9_combout\ & (((\Inst_top_level|I2C_Transmit_Read|stretch~q\)))) # (!\Inst_top_level|I2C_Transmit_Read|process_0~9_combout\ & 
-- ((\Inst_top_level|I2C_Transmit_Read|process_0~11_combout\ & ((\Inst_top_level|I2C_Transmit_Read|stretch~q\))) # (!\Inst_top_level|I2C_Transmit_Read|process_0~11_combout\ & (!\GPIO[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|process_0~9_combout\,
	datab => \GPIO[1]~input_o\,
	datac => \Inst_top_level|I2C_Transmit_Read|stretch~q\,
	datad => \Inst_top_level|I2C_Transmit_Read|process_0~11_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|stretch~0_combout\);

-- Location: FF_X111_Y38_N29
\Inst_top_level|I2C_Transmit_Read|stretch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|I2C_Transmit_Read|stretch~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|stretch~q\);

-- Location: LCCOMB_X110_Y38_N26
\Inst_top_level|I2C_Transmit_Read|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|count~9_combout\ = (!\Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\ & \Inst_top_level|I2C_Transmit_Read|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|Add0~0_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|count~9_combout\);

-- Location: FF_X110_Y38_N27
\Inst_top_level|I2C_Transmit_Read|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|I2C_Transmit_Read|count~9_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|count\(0));

-- Location: LCCOMB_X109_Y38_N16
\Inst_top_level|I2C_Transmit_Read|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|count~0_combout\ = (!\Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\ & \Inst_top_level|I2C_Transmit_Read|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|Add0~16_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|count~0_combout\);

-- Location: FF_X109_Y38_N17
\Inst_top_level|I2C_Transmit_Read|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|I2C_Transmit_Read|count~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|count\(8));

-- Location: LCCOMB_X109_Y38_N30
\Inst_top_level|I2C_Transmit_Read|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Equal0~0_combout\ = (\Inst_top_level|I2C_Transmit_Read|count\(7) & (\Inst_top_level|I2C_Transmit_Read|count\(8) & (\Inst_top_level|I2C_Transmit_Read|count\(9) & \Inst_top_level|I2C_Transmit_Read|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|count\(7),
	datab => \Inst_top_level|I2C_Transmit_Read|count\(8),
	datac => \Inst_top_level|I2C_Transmit_Read|count\(9),
	datad => \Inst_top_level|I2C_Transmit_Read|count\(6),
	combout => \Inst_top_level|I2C_Transmit_Read|Equal0~0_combout\);

-- Location: LCCOMB_X110_Y38_N22
\Inst_top_level|I2C_Transmit_Read|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|count~7_combout\ = (!\Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\ & \Inst_top_level|I2C_Transmit_Read|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|Add0~4_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|count~7_combout\);

-- Location: FF_X110_Y38_N23
\Inst_top_level|I2C_Transmit_Read|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|I2C_Transmit_Read|count~7_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|count\(2));

-- Location: LCCOMB_X109_Y38_N12
\Inst_top_level|I2C_Transmit_Read|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Equal0~1_combout\ = (\Inst_top_level|I2C_Transmit_Read|count\(5) & (!\Inst_top_level|I2C_Transmit_Read|count\(3) & (\Inst_top_level|I2C_Transmit_Read|count\(2) & !\Inst_top_level|I2C_Transmit_Read|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|count\(5),
	datab => \Inst_top_level|I2C_Transmit_Read|count\(3),
	datac => \Inst_top_level|I2C_Transmit_Read|count\(2),
	datad => \Inst_top_level|I2C_Transmit_Read|count\(4),
	combout => \Inst_top_level|I2C_Transmit_Read|Equal0~1_combout\);

-- Location: LCCOMB_X109_Y38_N22
\Inst_top_level|I2C_Transmit_Read|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\ = (\Inst_top_level|I2C_Transmit_Read|count\(1) & (\Inst_top_level|I2C_Transmit_Read|count\(0) & (\Inst_top_level|I2C_Transmit_Read|Equal0~0_combout\ & 
-- \Inst_top_level|I2C_Transmit_Read|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|count\(1),
	datab => \Inst_top_level|I2C_Transmit_Read|count\(0),
	datac => \Inst_top_level|I2C_Transmit_Read|Equal0~0_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|Equal0~1_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\);

-- Location: LCCOMB_X110_Y38_N0
\Inst_top_level|I2C_Transmit_Read|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|count~3_combout\ = (!\Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\ & \Inst_top_level|I2C_Transmit_Read|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|Add0~8_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|count~3_combout\);

-- Location: FF_X110_Y38_N17
\Inst_top_level|I2C_Transmit_Read|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|I2C_Transmit_Read|count~3_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|count\(4));

-- Location: LCCOMB_X110_Y38_N14
\Inst_top_level|I2C_Transmit_Read|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Add0~12_combout\ = (\Inst_top_level|I2C_Transmit_Read|count\(6) & (\Inst_top_level|I2C_Transmit_Read|Add0~11\ $ (GND))) # (!\Inst_top_level|I2C_Transmit_Read|count\(6) & (!\Inst_top_level|I2C_Transmit_Read|Add0~11\ & 
-- VCC))
-- \Inst_top_level|I2C_Transmit_Read|Add0~13\ = CARRY((\Inst_top_level|I2C_Transmit_Read|count\(6) & !\Inst_top_level|I2C_Transmit_Read|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|I2C_Transmit_Read|count\(6),
	datad => VCC,
	cin => \Inst_top_level|I2C_Transmit_Read|Add0~11\,
	combout => \Inst_top_level|I2C_Transmit_Read|Add0~12_combout\,
	cout => \Inst_top_level|I2C_Transmit_Read|Add0~13\);

-- Location: LCCOMB_X110_Y38_N24
\Inst_top_level|I2C_Transmit_Read|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|count~5_combout\ = (\Inst_top_level|I2C_Transmit_Read|Add0~12_combout\ & !\Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|I2C_Transmit_Read|Add0~12_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|count~5_combout\);

-- Location: FF_X110_Y38_N25
\Inst_top_level|I2C_Transmit_Read|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|I2C_Transmit_Read|count~5_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|count\(6));

-- Location: LCCOMB_X110_Y38_N16
\Inst_top_level|I2C_Transmit_Read|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Add0~14_combout\ = (\Inst_top_level|I2C_Transmit_Read|count\(7) & (!\Inst_top_level|I2C_Transmit_Read|Add0~13\)) # (!\Inst_top_level|I2C_Transmit_Read|count\(7) & ((\Inst_top_level|I2C_Transmit_Read|Add0~13\) # (GND)))
-- \Inst_top_level|I2C_Transmit_Read|Add0~15\ = CARRY((!\Inst_top_level|I2C_Transmit_Read|Add0~13\) # (!\Inst_top_level|I2C_Transmit_Read|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|I2C_Transmit_Read|count\(7),
	datad => VCC,
	cin => \Inst_top_level|I2C_Transmit_Read|Add0~13\,
	combout => \Inst_top_level|I2C_Transmit_Read|Add0~14_combout\,
	cout => \Inst_top_level|I2C_Transmit_Read|Add0~15\);

-- Location: LCCOMB_X109_Y38_N6
\Inst_top_level|I2C_Transmit_Read|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|count~4_combout\ = (!\Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\ & \Inst_top_level|I2C_Transmit_Read|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|Add0~14_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|count~4_combout\);

-- Location: FF_X109_Y38_N7
\Inst_top_level|I2C_Transmit_Read|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|I2C_Transmit_Read|count~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|count\(7));

-- Location: LCCOMB_X110_Y38_N20
\Inst_top_level|I2C_Transmit_Read|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Add0~18_combout\ = \Inst_top_level|I2C_Transmit_Read|Add0~17\ $ (\Inst_top_level|I2C_Transmit_Read|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|I2C_Transmit_Read|count\(9),
	cin => \Inst_top_level|I2C_Transmit_Read|Add0~17\,
	combout => \Inst_top_level|I2C_Transmit_Read|Add0~18_combout\);

-- Location: LCCOMB_X111_Y38_N2
\Inst_top_level|I2C_Transmit_Read|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|LessThan1~9_combout\ = (\Inst_top_level|I2C_Transmit_Read|count~2_combout\ & (\Inst_top_level|I2C_Transmit_Read|LessThan1~8_combout\ & ((\Inst_top_level|I2C_Transmit_Read|Add0~4_combout\) # 
-- (\Inst_top_level|I2C_Transmit_Read|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|count~2_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|Add0~4_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|Add0~2_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|LessThan1~8_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|LessThan1~9_combout\);

-- Location: LCCOMB_X111_Y38_N18
\Inst_top_level|I2C_Transmit_Read|LessThan1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|LessThan1~10_combout\ = (!\Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\ & ((\Inst_top_level|I2C_Transmit_Read|Add0~18_combout\) # ((\Inst_top_level|I2C_Transmit_Read|Add0~16_combout\) # 
-- (\Inst_top_level|I2C_Transmit_Read|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|Equal0~2_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|Add0~18_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|Add0~16_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|LessThan1~9_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|LessThan1~10_combout\);

-- Location: LCCOMB_X111_Y38_N8
\Inst_top_level|I2C_Transmit_Read|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|process_0~4_combout\ = (\Inst_top_level|I2C_Transmit_Read|LessThan1~8_combout\ & ((\Inst_top_level|I2C_Transmit_Read|Add0~6_combout\ & (\Inst_top_level|I2C_Transmit_Read|Add0~16_combout\)) # 
-- (!\Inst_top_level|I2C_Transmit_Read|Add0~6_combout\ & ((\Inst_top_level|I2C_Transmit_Read|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|Add0~6_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|Add0~16_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|Add0~4_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|LessThan1~8_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|process_0~4_combout\);

-- Location: LCCOMB_X111_Y38_N4
\Inst_top_level|I2C_Transmit_Read|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|process_0~6_combout\ = (\Inst_top_level|I2C_Transmit_Read|process_0~5_combout\) # ((\Inst_top_level|I2C_Transmit_Read|process_0~4_combout\) # ((!\Inst_top_level|I2C_Transmit_Read|Add0~16_combout\ & 
-- !\Inst_top_level|I2C_Transmit_Read|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|process_0~5_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|Add0~16_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|process_0~4_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|LessThan1~9_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|process_0~6_combout\);

-- Location: LCCOMB_X111_Y38_N14
\Inst_top_level|I2C_Transmit_Read|data_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|data_clk~0_combout\ = (\Inst_top_level|I2C_Transmit_Read|LessThan1~10_combout\ & (((!\Inst_top_level|I2C_Transmit_Read|process_0~9_combout\ & !\Inst_top_level|I2C_Transmit_Read|process_0~11_combout\)) # 
-- (!\Inst_top_level|I2C_Transmit_Read|process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|process_0~9_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|LessThan1~10_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|process_0~6_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|process_0~11_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|data_clk~0_combout\);

-- Location: FF_X111_Y38_N15
\Inst_top_level|I2C_Transmit_Read|data_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|I2C_Transmit_Read|data_clk~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|data_clk~q\);

-- Location: FF_X109_Y39_N9
\Inst_top_level|I2C_Transmit_Read|data_clk_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|I2C_Transmit_Read|data_clk~q\,
	sload => VCC,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|data_clk_prev~q\);

-- Location: LCCOMB_X112_Y39_N12
\Inst_top_level|count[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[1]~20_cout\ = CARRY(!\Inst_top_level|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count\(0),
	datad => VCC,
	cout => \Inst_top_level|count[1]~20_cout\);

-- Location: LCCOMB_X112_Y39_N14
\Inst_top_level|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[1]~21_combout\ = (\Inst_top_level|count\(1) & (\Inst_top_level|count[1]~20_cout\ $ (GND))) # (!\Inst_top_level|count\(1) & (!\Inst_top_level|count[1]~20_cout\ & VCC))
-- \Inst_top_level|count[1]~22\ = CARRY((\Inst_top_level|count\(1) & !\Inst_top_level|count[1]~20_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count\(1),
	datad => VCC,
	cin => \Inst_top_level|count[1]~20_cout\,
	combout => \Inst_top_level|count[1]~21_combout\,
	cout => \Inst_top_level|count[1]~22\);

-- Location: FF_X112_Y39_N3
\Inst_top_level|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[19]~53_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|state.start~q\);

-- Location: LCCOMB_X112_Y39_N2
\Inst_top_level|count[19]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[19]~53_combout\ = (\Inst_top_level|state.start~q\) # (\Inst_top_level|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|state.start~q\,
	datad => \Inst_top_level|Equal0~6_combout\,
	combout => \Inst_top_level|count[19]~53_combout\);

-- Location: FF_X112_Y39_N15
\Inst_top_level|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[1]~21_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(1));

-- Location: LCCOMB_X112_Y39_N16
\Inst_top_level|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[2]~23_combout\ = (\Inst_top_level|count\(2) & (!\Inst_top_level|count[1]~22\)) # (!\Inst_top_level|count\(2) & ((\Inst_top_level|count[1]~22\) # (GND)))
-- \Inst_top_level|count[2]~24\ = CARRY((!\Inst_top_level|count[1]~22\) # (!\Inst_top_level|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count\(2),
	datad => VCC,
	cin => \Inst_top_level|count[1]~22\,
	combout => \Inst_top_level|count[2]~23_combout\,
	cout => \Inst_top_level|count[2]~24\);

-- Location: FF_X112_Y39_N17
\Inst_top_level|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[2]~23_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(2));

-- Location: LCCOMB_X112_Y39_N18
\Inst_top_level|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[3]~25_combout\ = (\Inst_top_level|count\(3) & (\Inst_top_level|count[2]~24\ $ (GND))) # (!\Inst_top_level|count\(3) & (!\Inst_top_level|count[2]~24\ & VCC))
-- \Inst_top_level|count[3]~26\ = CARRY((\Inst_top_level|count\(3) & !\Inst_top_level|count[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count\(3),
	datad => VCC,
	cin => \Inst_top_level|count[2]~24\,
	combout => \Inst_top_level|count[3]~25_combout\,
	cout => \Inst_top_level|count[3]~26\);

-- Location: FF_X112_Y39_N19
\Inst_top_level|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[3]~25_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(3));

-- Location: LCCOMB_X112_Y39_N8
\Inst_top_level|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Equal0~1_combout\ = (\Inst_top_level|count\(0) & (\Inst_top_level|count\(3) & (\Inst_top_level|count\(1) & \Inst_top_level|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count\(0),
	datab => \Inst_top_level|count\(3),
	datac => \Inst_top_level|count\(1),
	datad => \Inst_top_level|count\(2),
	combout => \Inst_top_level|Equal0~1_combout\);

-- Location: LCCOMB_X112_Y39_N20
\Inst_top_level|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[4]~27_combout\ = (\Inst_top_level|count\(4) & (!\Inst_top_level|count[3]~26\)) # (!\Inst_top_level|count\(4) & ((\Inst_top_level|count[3]~26\) # (GND)))
-- \Inst_top_level|count[4]~28\ = CARRY((!\Inst_top_level|count[3]~26\) # (!\Inst_top_level|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count\(4),
	datad => VCC,
	cin => \Inst_top_level|count[3]~26\,
	combout => \Inst_top_level|count[4]~27_combout\,
	cout => \Inst_top_level|count[4]~28\);

-- Location: FF_X112_Y39_N21
\Inst_top_level|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[4]~27_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(4));

-- Location: LCCOMB_X112_Y39_N22
\Inst_top_level|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[5]~29_combout\ = (\Inst_top_level|count\(5) & (\Inst_top_level|count[4]~28\ $ (GND))) # (!\Inst_top_level|count\(5) & (!\Inst_top_level|count[4]~28\ & VCC))
-- \Inst_top_level|count[5]~30\ = CARRY((\Inst_top_level|count\(5) & !\Inst_top_level|count[4]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count\(5),
	datad => VCC,
	cin => \Inst_top_level|count[4]~28\,
	combout => \Inst_top_level|count[5]~29_combout\,
	cout => \Inst_top_level|count[5]~30\);

-- Location: LCCOMB_X112_Y39_N24
\Inst_top_level|count[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[6]~31_combout\ = (\Inst_top_level|count\(6) & (!\Inst_top_level|count[5]~30\)) # (!\Inst_top_level|count\(6) & ((\Inst_top_level|count[5]~30\) # (GND)))
-- \Inst_top_level|count[6]~32\ = CARRY((!\Inst_top_level|count[5]~30\) # (!\Inst_top_level|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count\(6),
	datad => VCC,
	cin => \Inst_top_level|count[5]~30\,
	combout => \Inst_top_level|count[6]~31_combout\,
	cout => \Inst_top_level|count[6]~32\);

-- Location: FF_X112_Y39_N25
\Inst_top_level|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[6]~31_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(6));

-- Location: FF_X112_Y39_N23
\Inst_top_level|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[5]~29_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(5));

-- Location: LCCOMB_X112_Y39_N10
\Inst_top_level|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Equal0~2_combout\ = (\Inst_top_level|count\(7) & (\Inst_top_level|count\(6) & (\Inst_top_level|count\(5) & \Inst_top_level|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count\(7),
	datab => \Inst_top_level|count\(6),
	datac => \Inst_top_level|count\(5),
	datad => \Inst_top_level|count\(4),
	combout => \Inst_top_level|Equal0~2_combout\);

-- Location: LCCOMB_X112_Y39_N4
\Inst_top_level|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Equal0~3_combout\ = (\Inst_top_level|Equal0~1_combout\ & \Inst_top_level|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Equal0~1_combout\,
	datad => \Inst_top_level|Equal0~2_combout\,
	combout => \Inst_top_level|Equal0~3_combout\);

-- Location: LCCOMB_X112_Y39_N28
\Inst_top_level|count[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[8]~35_combout\ = (\Inst_top_level|count\(8) & (!\Inst_top_level|count[7]~34\)) # (!\Inst_top_level|count\(8) & ((\Inst_top_level|count[7]~34\) # (GND)))
-- \Inst_top_level|count[8]~36\ = CARRY((!\Inst_top_level|count[7]~34\) # (!\Inst_top_level|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count\(8),
	datad => VCC,
	cin => \Inst_top_level|count[7]~34\,
	combout => \Inst_top_level|count[8]~35_combout\,
	cout => \Inst_top_level|count[8]~36\);

-- Location: FF_X112_Y39_N29
\Inst_top_level|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[8]~35_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(8));

-- Location: LCCOMB_X112_Y38_N0
\Inst_top_level|count[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[10]~39_combout\ = (\Inst_top_level|count\(10) & (!\Inst_top_level|count[9]~38\)) # (!\Inst_top_level|count\(10) & ((\Inst_top_level|count[9]~38\) # (GND)))
-- \Inst_top_level|count[10]~40\ = CARRY((!\Inst_top_level|count[9]~38\) # (!\Inst_top_level|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count\(10),
	datad => VCC,
	cin => \Inst_top_level|count[9]~38\,
	combout => \Inst_top_level|count[10]~39_combout\,
	cout => \Inst_top_level|count[10]~40\);

-- Location: FF_X112_Y38_N1
\Inst_top_level|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[10]~39_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(10));

-- Location: LCCOMB_X112_Y38_N2
\Inst_top_level|count[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[11]~41_combout\ = (\Inst_top_level|count\(11) & (\Inst_top_level|count[10]~40\ $ (GND))) # (!\Inst_top_level|count\(11) & (!\Inst_top_level|count[10]~40\ & VCC))
-- \Inst_top_level|count[11]~42\ = CARRY((\Inst_top_level|count\(11) & !\Inst_top_level|count[10]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count\(11),
	datad => VCC,
	cin => \Inst_top_level|count[10]~40\,
	combout => \Inst_top_level|count[11]~41_combout\,
	cout => \Inst_top_level|count[11]~42\);

-- Location: FF_X112_Y38_N3
\Inst_top_level|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[11]~41_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(11));

-- Location: LCCOMB_X112_Y38_N4
\Inst_top_level|count[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[12]~43_combout\ = (\Inst_top_level|count\(12) & (!\Inst_top_level|count[11]~42\)) # (!\Inst_top_level|count\(12) & ((\Inst_top_level|count[11]~42\) # (GND)))
-- \Inst_top_level|count[12]~44\ = CARRY((!\Inst_top_level|count[11]~42\) # (!\Inst_top_level|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count\(12),
	datad => VCC,
	cin => \Inst_top_level|count[11]~42\,
	combout => \Inst_top_level|count[12]~43_combout\,
	cout => \Inst_top_level|count[12]~44\);

-- Location: FF_X112_Y38_N5
\Inst_top_level|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[12]~43_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(12));

-- Location: LCCOMB_X112_Y38_N6
\Inst_top_level|count[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[13]~45_combout\ = (\Inst_top_level|count\(13) & (\Inst_top_level|count[12]~44\ $ (GND))) # (!\Inst_top_level|count\(13) & (!\Inst_top_level|count[12]~44\ & VCC))
-- \Inst_top_level|count[13]~46\ = CARRY((\Inst_top_level|count\(13) & !\Inst_top_level|count[12]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count\(13),
	datad => VCC,
	cin => \Inst_top_level|count[12]~44\,
	combout => \Inst_top_level|count[13]~45_combout\,
	cout => \Inst_top_level|count[13]~46\);

-- Location: LCCOMB_X112_Y38_N8
\Inst_top_level|count[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[14]~47_combout\ = (\Inst_top_level|count\(14) & ((GND) # (!\Inst_top_level|count[13]~46\))) # (!\Inst_top_level|count\(14) & (\Inst_top_level|count[13]~46\ $ (GND)))
-- \Inst_top_level|count[14]~48\ = CARRY((\Inst_top_level|count\(14)) # (!\Inst_top_level|count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count\(14),
	datad => VCC,
	cin => \Inst_top_level|count[13]~46\,
	combout => \Inst_top_level|count[14]~47_combout\,
	cout => \Inst_top_level|count[14]~48\);

-- Location: FF_X112_Y38_N9
\Inst_top_level|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[14]~47_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(14));

-- Location: FF_X112_Y38_N7
\Inst_top_level|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[13]~45_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(13));

-- Location: LCCOMB_X112_Y38_N30
\Inst_top_level|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Equal0~5_combout\ = (!\Inst_top_level|count\(15) & (\Inst_top_level|count\(12) & (!\Inst_top_level|count\(14) & \Inst_top_level|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count\(15),
	datab => \Inst_top_level|count\(12),
	datac => \Inst_top_level|count\(14),
	datad => \Inst_top_level|count\(13),
	combout => \Inst_top_level|Equal0~5_combout\);

-- Location: LCCOMB_X112_Y38_N14
\Inst_top_level|count[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[17]~54_combout\ = (\Inst_top_level|count\(17) & (\Inst_top_level|count[16]~52\ & VCC)) # (!\Inst_top_level|count\(17) & (!\Inst_top_level|count[16]~52\))
-- \Inst_top_level|count[17]~55\ = CARRY((!\Inst_top_level|count\(17) & !\Inst_top_level|count[16]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count\(17),
	datad => VCC,
	cin => \Inst_top_level|count[16]~52\,
	combout => \Inst_top_level|count[17]~54_combout\,
	cout => \Inst_top_level|count[17]~55\);

-- Location: FF_X112_Y38_N15
\Inst_top_level|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[17]~54_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(17));

-- Location: LCCOMB_X112_Y38_N16
\Inst_top_level|count[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[18]~56_combout\ = (\Inst_top_level|count\(18) & ((GND) # (!\Inst_top_level|count[17]~55\))) # (!\Inst_top_level|count\(18) & (\Inst_top_level|count[17]~55\ $ (GND)))
-- \Inst_top_level|count[18]~57\ = CARRY((\Inst_top_level|count\(18)) # (!\Inst_top_level|count[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|count\(18),
	datad => VCC,
	cin => \Inst_top_level|count[17]~55\,
	combout => \Inst_top_level|count[18]~56_combout\,
	cout => \Inst_top_level|count[18]~57\);

-- Location: FF_X112_Y38_N17
\Inst_top_level|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[18]~56_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(18));

-- Location: LCCOMB_X112_Y38_N18
\Inst_top_level|count[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|count[19]~58_combout\ = \Inst_top_level|count[18]~57\ $ (!\Inst_top_level|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|count\(19),
	cin => \Inst_top_level|count[18]~57\,
	combout => \Inst_top_level|count[19]~58_combout\);

-- Location: FF_X112_Y38_N19
\Inst_top_level|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|count[19]~58_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|ALT_INV_count[19]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|count\(19));

-- Location: LCCOMB_X112_Y38_N28
\Inst_top_level|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Equal0~0_combout\ = (!\Inst_top_level|count\(16) & (!\Inst_top_level|count\(19) & (!\Inst_top_level|count\(17) & !\Inst_top_level|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|count\(16),
	datab => \Inst_top_level|count\(19),
	datac => \Inst_top_level|count\(17),
	datad => \Inst_top_level|count\(18),
	combout => \Inst_top_level|Equal0~0_combout\);

-- Location: LCCOMB_X112_Y39_N0
\Inst_top_level|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Equal0~6_combout\ = (\Inst_top_level|Equal0~4_combout\ & (\Inst_top_level|Equal0~3_combout\ & (\Inst_top_level|Equal0~5_combout\ & \Inst_top_level|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Equal0~4_combout\,
	datab => \Inst_top_level|Equal0~3_combout\,
	datac => \Inst_top_level|Equal0~5_combout\,
	datad => \Inst_top_level|Equal0~0_combout\,
	combout => \Inst_top_level|Equal0~6_combout\);

-- Location: LCCOMB_X110_Y39_N24
\Inst_top_level|ena~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|ena~0_combout\ = (\Inst_top_level|state.start~q\ & ((\Inst_top_level|ena~q\))) # (!\Inst_top_level|state.start~q\ & (\Inst_top_level|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Equal0~6_combout\,
	datac => \Inst_top_level|ena~q\,
	datad => \Inst_top_level|state.start~q\,
	combout => \Inst_top_level|ena~0_combout\);

-- Location: FF_X110_Y39_N25
\Inst_top_level|ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|ena~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|ena~q\);

-- Location: LCCOMB_X108_Y39_N4
\Inst_top_level|I2C_Transmit_Read|bit_cnt[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|bit_cnt[0]~5_combout\ = !\Inst_top_level|I2C_Transmit_Read|bit_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(0),
	combout => \Inst_top_level|I2C_Transmit_Read|bit_cnt[0]~5_combout\);

-- Location: LCCOMB_X110_Y39_N26
\Inst_top_level|I2C_Transmit_Read|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Equal1~1_combout\ = (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(2) & (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(0) & \Inst_top_level|I2C_Transmit_Read|bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(2),
	datac => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(0),
	datad => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(1),
	combout => \Inst_top_level|I2C_Transmit_Read|Equal1~1_combout\);

-- Location: LCCOMB_X109_Y39_N22
\Inst_top_level|I2C_Transmit_Read|Selector21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector21~4_combout\ = (\Inst_top_level|I2C_Transmit_Read|state.mstr_ack~q\ & ((\Inst_top_level|ena~q\) # ((\Inst_top_level|I2C_Transmit_Read|state.rd~q\ & !\Inst_top_level|I2C_Transmit_Read|Equal1~1_combout\)))) # 
-- (!\Inst_top_level|I2C_Transmit_Read|state.mstr_ack~q\ & (((\Inst_top_level|I2C_Transmit_Read|state.rd~q\ & !\Inst_top_level|I2C_Transmit_Read|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|state.mstr_ack~q\,
	datab => \Inst_top_level|ena~q\,
	datac => \Inst_top_level|I2C_Transmit_Read|state.rd~q\,
	datad => \Inst_top_level|I2C_Transmit_Read|Equal1~1_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector21~4_combout\);

-- Location: LCCOMB_X109_Y39_N24
\Inst_top_level|I2C_Transmit_Read|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|process_1~0_combout\ = (\Inst_top_level|I2C_Transmit_Read|data_clk~q\ & !\Inst_top_level|I2C_Transmit_Read|data_clk_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|I2C_Transmit_Read|data_clk~q\,
	datad => \Inst_top_level|I2C_Transmit_Read|data_clk_prev~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|process_1~0_combout\);

-- Location: FF_X109_Y39_N23
\Inst_top_level|I2C_Transmit_Read|state.rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|I2C_Transmit_Read|Selector21~4_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|state.rd~q\);

-- Location: LCCOMB_X109_Y39_N6
\Inst_top_level|I2C_Transmit_Read|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector18~0_combout\ = (!\Inst_top_level|I2C_Transmit_Read|state.ready~q\ & \Inst_top_level|ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|state.ready~q\,
	datad => \Inst_top_level|ena~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector18~0_combout\);

-- Location: FF_X109_Y39_N11
\Inst_top_level|I2C_Transmit_Read|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|I2C_Transmit_Read|Selector18~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|state.start~q\);

-- Location: LCCOMB_X109_Y39_N8
\Inst_top_level|I2C_Transmit_Read|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector19~0_combout\ = (\Inst_top_level|I2C_Transmit_Read|state.start~q\) # ((\Inst_top_level|I2C_Transmit_Read|state.command~q\ & !\Inst_top_level|I2C_Transmit_Read|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|state.command~q\,
	datab => \Inst_top_level|I2C_Transmit_Read|state.start~q\,
	datad => \Inst_top_level|I2C_Transmit_Read|Equal1~1_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector19~0_combout\);

-- Location: FF_X109_Y39_N21
\Inst_top_level|I2C_Transmit_Read|state.command\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|I2C_Transmit_Read|Selector19~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|state.command~q\);

-- Location: LCCOMB_X110_Y39_N8
\Inst_top_level|I2C_Transmit_Read|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|state~15_combout\ = (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(2) & (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1) & (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(0) & \Inst_top_level|I2C_Transmit_Read|state.command~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(2),
	datab => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(1),
	datac => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(0),
	datad => \Inst_top_level|I2C_Transmit_Read|state.command~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|state~15_combout\);

-- Location: FF_X109_Y39_N5
\Inst_top_level|I2C_Transmit_Read|state.slv_ack1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|I2C_Transmit_Read|state~15_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|state.slv_ack1~q\);

-- Location: LCCOMB_X109_Y39_N2
\Inst_top_level|I2C_Transmit_Read|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector20~1_combout\ = (\Inst_top_level|I2C_Transmit_Read|Selector20~0_combout\) # ((\Inst_top_level|I2C_Transmit_Read|state.slv_ack1~q\) # ((!\Inst_top_level|I2C_Transmit_Read|Equal1~1_combout\ & 
-- \Inst_top_level|I2C_Transmit_Read|state.wr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|Selector20~0_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|Equal1~1_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|state.wr~q\,
	datad => \Inst_top_level|I2C_Transmit_Read|state.slv_ack1~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector20~1_combout\);

-- Location: FF_X109_Y39_N3
\Inst_top_level|I2C_Transmit_Read|state.wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|I2C_Transmit_Read|Selector20~1_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|state.wr~q\);

-- Location: LCCOMB_X109_Y39_N14
\Inst_top_level|I2C_Transmit_Read|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector0~0_combout\ = (!\Inst_top_level|I2C_Transmit_Read|state.rd~q\ & !\Inst_top_level|I2C_Transmit_Read|state.wr~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|I2C_Transmit_Read|state.rd~q\,
	datad => \Inst_top_level|I2C_Transmit_Read|state.wr~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector0~0_combout\);

-- Location: LCCOMB_X109_Y39_N26
\Inst_top_level|I2C_Transmit_Read|bit_cnt[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|bit_cnt[2]~4_combout\ = (\Inst_top_level|I2C_Transmit_Read|data_clk~q\ & (!\Inst_top_level|I2C_Transmit_Read|data_clk_prev~q\ & ((\Inst_top_level|I2C_Transmit_Read|state.command~q\) # 
-- (!\Inst_top_level|I2C_Transmit_Read|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|state.command~q\,
	datab => \Inst_top_level|I2C_Transmit_Read|Selector0~0_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|data_clk~q\,
	datad => \Inst_top_level|I2C_Transmit_Read|data_clk_prev~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|bit_cnt[2]~4_combout\);

-- Location: FF_X108_Y39_N5
\Inst_top_level|I2C_Transmit_Read|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|I2C_Transmit_Read|bit_cnt[0]~5_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|I2C_Transmit_Read|bit_cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(0));

-- Location: LCCOMB_X108_Y39_N16
\Inst_top_level|I2C_Transmit_Read|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector25~0_combout\ = \Inst_top_level|I2C_Transmit_Read|bit_cnt\(0) $ (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(0),
	datac => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(1),
	combout => \Inst_top_level|I2C_Transmit_Read|Selector25~0_combout\);

-- Location: FF_X108_Y39_N27
\Inst_top_level|I2C_Transmit_Read|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|I2C_Transmit_Read|Selector25~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|I2C_Transmit_Read|bit_cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(1));

-- Location: LCCOMB_X110_Y39_N2
\Inst_top_level|I2C_Transmit_Read|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|state~13_combout\ = (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(2) & (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1) & (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(0) & \Inst_top_level|I2C_Transmit_Read|state.rd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(2),
	datab => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(1),
	datac => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(0),
	datad => \Inst_top_level|I2C_Transmit_Read|state.rd~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|state~13_combout\);

-- Location: FF_X109_Y39_N31
\Inst_top_level|I2C_Transmit_Read|state.mstr_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|I2C_Transmit_Read|state~13_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|state.mstr_ack~q\);

-- Location: LCCOMB_X109_Y39_N4
\Inst_top_level|I2C_Transmit_Read|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector22~0_combout\ = (!\Inst_top_level|ena~q\ & ((\Inst_top_level|I2C_Transmit_Read|state.slv_ack2~q\) # (\Inst_top_level|I2C_Transmit_Read|state.mstr_ack~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|state.slv_ack2~q\,
	datab => \Inst_top_level|ena~q\,
	datad => \Inst_top_level|I2C_Transmit_Read|state.mstr_ack~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector22~0_combout\);

-- Location: FF_X109_Y39_N29
\Inst_top_level|I2C_Transmit_Read|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|I2C_Transmit_Read|Selector22~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \Inst_top_level|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|state.stop~q\);

-- Location: LCCOMB_X110_Y39_N6
\Inst_top_level|I2C_Transmit_Read|Selector21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector21~2_combout\ = (\Inst_top_level|I2C_Transmit_Read|state.rd~q\ & (((!\Inst_top_level|I2C_Transmit_Read|bit_cnt\(0)) # (!\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1))) # 
-- (!\Inst_top_level|I2C_Transmit_Read|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(2),
	datab => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(1),
	datac => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(0),
	datad => \Inst_top_level|I2C_Transmit_Read|state.rd~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector21~2_combout\);

-- Location: LCCOMB_X109_Y39_N28
\Inst_top_level|I2C_Transmit_Read|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector23~1_combout\ = (!\Inst_top_level|I2C_Transmit_Read|sda_int~q\ & ((\Inst_top_level|I2C_Transmit_Read|Selector23~0_combout\) # ((\Inst_top_level|I2C_Transmit_Read|state.stop~q\) # 
-- (\Inst_top_level|I2C_Transmit_Read|Selector21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|Selector23~0_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|sda_int~q\,
	datac => \Inst_top_level|I2C_Transmit_Read|state.stop~q\,
	datad => \Inst_top_level|I2C_Transmit_Read|Selector21~2_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector23~1_combout\);

-- Location: LCCOMB_X108_Y39_N0
\Inst_top_level|I2C_Transmit_Read|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Add1~0_combout\ = \Inst_top_level|I2C_Transmit_Read|bit_cnt\(2) $ (((\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1) & \Inst_top_level|I2C_Transmit_Read|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(1),
	datab => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(0),
	datac => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(2),
	combout => \Inst_top_level|I2C_Transmit_Read|Add1~0_combout\);

-- Location: FF_X108_Y39_N1
\Inst_top_level|I2C_Transmit_Read|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|I2C_Transmit_Read|Add1~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|I2C_Transmit_Read|bit_cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(2));

-- Location: LCCOMB_X108_Y39_N2
\Inst_top_level|I2C_Transmit_Read|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector20~0_combout\ = (\Inst_top_level|I2C_Transmit_Read|state.slv_ack2~q\ & \Inst_top_level|ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|state.slv_ack2~q\,
	datad => \Inst_top_level|ena~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector20~0_combout\);

-- Location: LCCOMB_X107_Y39_N14
\Inst_top_level|byteSel~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|byteSel~2_combout\ = (\Inst_top_level|byteSel\(3) & (!\Inst_top_level|byteSel\(2) & (\Inst_top_level|byteSel\(0) $ (\Inst_top_level|byteSel\(1))))) # (!\Inst_top_level|byteSel\(3) & (\Inst_top_level|byteSel\(0) $ 
-- ((\Inst_top_level|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|byteSel\(3),
	datab => \Inst_top_level|byteSel\(0),
	datac => \Inst_top_level|byteSel\(1),
	datad => \Inst_top_level|byteSel\(2),
	combout => \Inst_top_level|byteSel~2_combout\);

-- Location: LCCOMB_X109_Y39_N20
\Inst_top_level|I2C_Transmit_Read|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector0~1_combout\ = (!\Inst_top_level|I2C_Transmit_Read|busy~q\ & ((\Inst_top_level|I2C_Transmit_Read|state.slv_ack1~q\) # ((\Inst_top_level|I2C_Transmit_Read|Selector22~0_combout\) # 
-- (\Inst_top_level|I2C_Transmit_Read|state.command~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|state.slv_ack1~q\,
	datab => \Inst_top_level|I2C_Transmit_Read|Selector22~0_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|state.command~q\,
	datad => \Inst_top_level|I2C_Transmit_Read|busy~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector0~1_combout\);

-- Location: LCCOMB_X109_Y39_N16
\Inst_top_level|I2C_Transmit_Read|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector0~2_combout\ = (!\Inst_top_level|I2C_Transmit_Read|state.start~q\ & (!\Inst_top_level|I2C_Transmit_Read|Selector18~0_combout\ & (\Inst_top_level|I2C_Transmit_Read|Selector0~0_combout\ & 
-- !\Inst_top_level|I2C_Transmit_Read|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|state.start~q\,
	datab => \Inst_top_level|I2C_Transmit_Read|Selector18~0_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|Selector0~0_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|Selector0~1_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector0~2_combout\);

-- Location: FF_X109_Y39_N17
\Inst_top_level|I2C_Transmit_Read|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|I2C_Transmit_Read|Selector0~2_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|busy~q\);

-- Location: LCCOMB_X110_Y39_N0
\Inst_top_level|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Selector0~0_combout\ = (\Inst_top_level|state.start~q\ & (\Inst_top_level|I2C_Transmit_Read|busy~q\)) # (!\Inst_top_level|state.start~q\ & ((\Inst_top_level|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|busy~q\,
	datac => \Inst_top_level|Equal0~6_combout\,
	datad => \Inst_top_level|state.start~q\,
	combout => \Inst_top_level|Selector0~0_combout\);

-- Location: FF_X110_Y39_N1
\Inst_top_level|state.write_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Selector0~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|state.write_data~q\);

-- Location: LCCOMB_X110_Y39_N10
\Inst_top_level|byteSel[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|byteSel[3]~1_combout\ = (!\Inst_top_level|I2C_Transmit_Read|busy~q\ & \Inst_top_level|state.write_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|I2C_Transmit_Read|busy~q\,
	datad => \Inst_top_level|state.write_data~q\,
	combout => \Inst_top_level|byteSel[3]~1_combout\);

-- Location: FF_X107_Y39_N15
\Inst_top_level|byteSel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|byteSel~2_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|byteSel[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|byteSel\(1));

-- Location: LCCOMB_X107_Y39_N0
\Inst_top_level|byteSel~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|byteSel~3_combout\ = (\Inst_top_level|byteSel\(2) & (!\Inst_top_level|byteSel\(3) & ((!\Inst_top_level|byteSel\(0)) # (!\Inst_top_level|byteSel\(1))))) # (!\Inst_top_level|byteSel\(2) & (((\Inst_top_level|byteSel\(1) & 
-- \Inst_top_level|byteSel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|byteSel\(3),
	datab => \Inst_top_level|byteSel\(1),
	datac => \Inst_top_level|byteSel\(2),
	datad => \Inst_top_level|byteSel\(0),
	combout => \Inst_top_level|byteSel~3_combout\);

-- Location: FF_X107_Y39_N1
\Inst_top_level|byteSel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|byteSel~3_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|byteSel[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|byteSel\(2));

-- Location: LCCOMB_X107_Y39_N20
\Inst_top_level|byteSel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|byteSel~0_combout\ = ((\Inst_top_level|byteSel\(3) & \Inst_top_level|byteSel\(2))) # (!\Inst_top_level|byteSel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|byteSel\(3),
	datac => \Inst_top_level|byteSel\(0),
	datad => \Inst_top_level|byteSel\(2),
	combout => \Inst_top_level|byteSel~0_combout\);

-- Location: FF_X107_Y39_N21
\Inst_top_level|byteSel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|byteSel~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|byteSel[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|byteSel\(0));

-- Location: LCCOMB_X107_Y39_N16
\Inst_top_level|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Mux1~0_combout\ = (!\Inst_top_level|byteSel\(3) & ((\Inst_top_level|byteSel\(0)) # ((!\Inst_top_level|byteSel\(2)) # (!\Inst_top_level|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|byteSel\(3),
	datab => \Inst_top_level|byteSel\(0),
	datac => \Inst_top_level|byteSel\(1),
	datad => \Inst_top_level|byteSel\(2),
	combout => \Inst_top_level|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y39_N10
\Inst_top_level|I2C_Transmit_Read|Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector23~2_combout\ = (\Inst_top_level|I2C_Transmit_Read|data_tx\(4) & ((\Inst_top_level|I2C_Transmit_Read|state.slv_ack1~q\) # ((\Inst_top_level|I2C_Transmit_Read|Selector20~0_combout\ & 
-- \Inst_top_level|Mux1~0_combout\)))) # (!\Inst_top_level|I2C_Transmit_Read|data_tx\(4) & (\Inst_top_level|I2C_Transmit_Read|Selector20~0_combout\ & (\Inst_top_level|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|data_tx\(4),
	datab => \Inst_top_level|I2C_Transmit_Read|Selector20~0_combout\,
	datac => \Inst_top_level|Mux1~0_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|state.slv_ack1~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector23~2_combout\);

-- Location: LCCOMB_X108_Y39_N20
\Inst_top_level|I2C_Transmit_Read|Selector23~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector23~12_combout\ = (\Inst_top_level|I2C_Transmit_Read|state.start~q\) # ((\Inst_top_level|I2C_Transmit_Read|bit_cnt\(0) & ((\Inst_top_level|I2C_Transmit_Read|Selector23~2_combout\))) # 
-- (!\Inst_top_level|I2C_Transmit_Read|bit_cnt\(0) & (\Inst_top_level|I2C_Transmit_Read|Selector23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|Selector23~3_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(0),
	datac => \Inst_top_level|I2C_Transmit_Read|state.start~q\,
	datad => \Inst_top_level|I2C_Transmit_Read|Selector23~2_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector23~12_combout\);

-- Location: LCCOMB_X108_Y39_N6
\Inst_top_level|I2C_Transmit_Read|Selector23~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector23~13_combout\ = (!\Inst_top_level|I2C_Transmit_Read|bit_cnt\(2) & ((\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1) & (\Inst_top_level|I2C_Transmit_Read|Selector23~2_combout\)) # 
-- (!\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1) & ((\Inst_top_level|I2C_Transmit_Read|Selector23~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|Selector23~2_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(2),
	datac => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(1),
	datad => \Inst_top_level|I2C_Transmit_Read|Selector23~12_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector23~13_combout\);

-- Location: LCCOMB_X108_Y39_N26
\Inst_top_level|I2C_Transmit_Read|Selector23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector23~9_combout\ = (\Inst_top_level|I2C_Transmit_Read|Selector21~3_combout\) # ((!\Inst_top_level|I2C_Transmit_Read|bit_cnt\(0) & (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1) & 
-- \Inst_top_level|I2C_Transmit_Read|state.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|Selector21~3_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(0),
	datac => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(1),
	datad => \Inst_top_level|I2C_Transmit_Read|state.start~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector23~9_combout\);

-- Location: LCCOMB_X107_Y39_N4
\Inst_top_level|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Mux4~0_combout\ = (\Inst_top_level|byteSel\(3) & (\Inst_top_level|byteSel\(2) $ (((\Inst_top_level|byteSel\(0)) # (\Inst_top_level|byteSel\(1)))))) # (!\Inst_top_level|byteSel\(3) & ((\Inst_top_level|byteSel\(0) & 
-- (\Inst_top_level|byteSel\(1))) # (!\Inst_top_level|byteSel\(0) & (!\Inst_top_level|byteSel\(1) & \Inst_top_level|byteSel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|byteSel\(3),
	datab => \Inst_top_level|byteSel\(0),
	datac => \Inst_top_level|byteSel\(1),
	datad => \Inst_top_level|byteSel\(2),
	combout => \Inst_top_level|Mux4~0_combout\);

-- Location: LCCOMB_X107_Y39_N8
\Inst_top_level|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Mux7~0_combout\ = (\Inst_top_level|byteSel\(3) & (!\Inst_top_level|byteSel\(0) & (\Inst_top_level|byteSel\(1) $ (\Inst_top_level|byteSel\(2))))) # (!\Inst_top_level|byteSel\(3) & (\Inst_top_level|byteSel\(2) & 
-- ((\Inst_top_level|byteSel\(0)) # (!\Inst_top_level|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|byteSel\(3),
	datab => \Inst_top_level|byteSel\(0),
	datac => \Inst_top_level|byteSel\(1),
	datad => \Inst_top_level|byteSel\(2),
	combout => \Inst_top_level|Mux7~0_combout\);

-- Location: LCCOMB_X107_Y39_N10
\Inst_top_level|I2C_Transmit_Read|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Mux4~0_combout\ = (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1) & ((\Inst_top_level|I2C_Transmit_Read|bit_cnt\(0) & ((\Inst_top_level|Mux7~0_combout\))) # (!\Inst_top_level|I2C_Transmit_Read|bit_cnt\(0) & 
-- (\Inst_top_level|Mux6~0_combout\)))) # (!\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1) & (((!\Inst_top_level|I2C_Transmit_Read|bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Mux6~0_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(1),
	datac => \Inst_top_level|Mux7~0_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(0),
	combout => \Inst_top_level|I2C_Transmit_Read|Mux4~0_combout\);

-- Location: LCCOMB_X107_Y39_N6
\Inst_top_level|I2C_Transmit_Read|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Mux4~1_combout\ = (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1) & (((\Inst_top_level|I2C_Transmit_Read|Mux4~0_combout\)))) # (!\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1) & 
-- ((\Inst_top_level|I2C_Transmit_Read|Mux4~0_combout\ & ((\Inst_top_level|Mux4~0_combout\))) # (!\Inst_top_level|I2C_Transmit_Read|Mux4~0_combout\ & (\Inst_top_level|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Mux5~0_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(1),
	datac => \Inst_top_level|Mux4~0_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|Mux4~0_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|Mux4~1_combout\);

-- Location: LCCOMB_X108_Y39_N18
\Inst_top_level|I2C_Transmit_Read|data_tx[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|data_tx[7]~3_combout\ = (\Inst_top_level|I2C_Transmit_Read|data_tx[7]~2_combout\ & (!\Inst_top_level|I2C_Transmit_Read|data_clk_prev~q\ & (\Inst_top_level|I2C_Transmit_Read|data_clk~q\ & \Inst_top_level|ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|data_tx[7]~2_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|data_clk_prev~q\,
	datac => \Inst_top_level|I2C_Transmit_Read|data_clk~q\,
	datad => \Inst_top_level|ena~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|data_tx[7]~3_combout\);

-- Location: FF_X107_Y39_N23
\Inst_top_level|I2C_Transmit_Read|data_tx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Mux4~0_combout\,
	sload => VCC,
	ena => \Inst_top_level|I2C_Transmit_Read|data_tx[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|data_tx\(3));

-- Location: FF_X107_Y39_N19
\Inst_top_level|I2C_Transmit_Read|data_tx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Mux7~0_combout\,
	sload => VCC,
	ena => \Inst_top_level|I2C_Transmit_Read|data_tx[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|data_tx\(0));

-- Location: LCCOMB_X107_Y39_N26
\Inst_top_level|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Mux6~0_combout\ = (\Inst_top_level|byteSel\(3) & (!\Inst_top_level|byteSel\(2) & (\Inst_top_level|byteSel\(0) $ (\Inst_top_level|byteSel\(1))))) # (!\Inst_top_level|byteSel\(3) & (((!\Inst_top_level|byteSel\(2)) # 
-- (!\Inst_top_level|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|byteSel\(3),
	datab => \Inst_top_level|byteSel\(0),
	datac => \Inst_top_level|byteSel\(1),
	datad => \Inst_top_level|byteSel\(2),
	combout => \Inst_top_level|Mux6~0_combout\);

-- Location: FF_X107_Y39_N25
\Inst_top_level|I2C_Transmit_Read|data_tx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Mux6~0_combout\,
	sload => VCC,
	ena => \Inst_top_level|I2C_Transmit_Read|data_tx[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|data_tx\(1));

-- Location: LCCOMB_X107_Y39_N24
\Inst_top_level|I2C_Transmit_Read|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Mux2~0_combout\ = (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(0) & (\Inst_top_level|I2C_Transmit_Read|data_tx\(0) & ((\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1))))) # (!\Inst_top_level|I2C_Transmit_Read|bit_cnt\(0) & 
-- (((\Inst_top_level|I2C_Transmit_Read|data_tx\(1)) # (!\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(0),
	datab => \Inst_top_level|I2C_Transmit_Read|data_tx\(0),
	datac => \Inst_top_level|I2C_Transmit_Read|data_tx\(1),
	datad => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(1),
	combout => \Inst_top_level|I2C_Transmit_Read|Mux2~0_combout\);

-- Location: LCCOMB_X107_Y39_N22
\Inst_top_level|I2C_Transmit_Read|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Mux2~1_combout\ = (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1) & (((\Inst_top_level|I2C_Transmit_Read|Mux2~0_combout\)))) # (!\Inst_top_level|I2C_Transmit_Read|bit_cnt\(1) & 
-- ((\Inst_top_level|I2C_Transmit_Read|Mux2~0_combout\ & ((\Inst_top_level|I2C_Transmit_Read|data_tx\(3)))) # (!\Inst_top_level|I2C_Transmit_Read|Mux2~0_combout\ & (\Inst_top_level|I2C_Transmit_Read|data_tx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|data_tx\(2),
	datab => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(1),
	datac => \Inst_top_level|I2C_Transmit_Read|data_tx\(3),
	datad => \Inst_top_level|I2C_Transmit_Read|Mux2~0_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|Mux2~1_combout\);

-- Location: LCCOMB_X108_Y39_N24
\Inst_top_level|I2C_Transmit_Read|Selector23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector23~7_combout\ = (\Inst_top_level|I2C_Transmit_Read|state.slv_ack1~q\ & (\Inst_top_level|I2C_Transmit_Read|bit_cnt\(2) & \Inst_top_level|I2C_Transmit_Read|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|state.slv_ack1~q\,
	datab => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(2),
	datad => \Inst_top_level|I2C_Transmit_Read|Mux2~1_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector23~7_combout\);

-- Location: LCCOMB_X108_Y39_N28
\Inst_top_level|I2C_Transmit_Read|Selector23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector23~8_combout\ = (\Inst_top_level|I2C_Transmit_Read|Selector23~7_combout\) # ((\Inst_top_level|I2C_Transmit_Read|bit_cnt\(2) & (\Inst_top_level|I2C_Transmit_Read|Selector20~0_combout\ & 
-- \Inst_top_level|I2C_Transmit_Read|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|bit_cnt\(2),
	datab => \Inst_top_level|I2C_Transmit_Read|Selector20~0_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|Mux4~1_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|Selector23~7_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector23~8_combout\);

-- Location: LCCOMB_X109_Y39_N0
\Inst_top_level|I2C_Transmit_Read|Selector23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector23~10_combout\ = (\Inst_top_level|I2C_Transmit_Read|Selector23~9_combout\) # ((\Inst_top_level|I2C_Transmit_Read|Selector23~8_combout\) # ((\Inst_top_level|I2C_Transmit_Read|state~13_combout\ & 
-- !\Inst_top_level|ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|state~13_combout\,
	datab => \Inst_top_level|ena~q\,
	datac => \Inst_top_level|I2C_Transmit_Read|Selector23~9_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|Selector23~8_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector23~10_combout\);

-- Location: LCCOMB_X109_Y39_N18
\Inst_top_level|I2C_Transmit_Read|Selector23~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector23~11_combout\ = (!\Inst_top_level|I2C_Transmit_Read|Selector23~6_combout\ & (!\Inst_top_level|I2C_Transmit_Read|Selector23~1_combout\ & (!\Inst_top_level|I2C_Transmit_Read|Selector23~13_combout\ & 
-- !\Inst_top_level|I2C_Transmit_Read|Selector23~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|Selector23~6_combout\,
	datab => \Inst_top_level|I2C_Transmit_Read|Selector23~1_combout\,
	datac => \Inst_top_level|I2C_Transmit_Read|Selector23~13_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|Selector23~10_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector23~11_combout\);

-- Location: FF_X109_Y39_N19
\Inst_top_level|I2C_Transmit_Read|sda_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|I2C_Transmit_Read|Selector23~11_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Inst_top_level|I2C_Transmit_Read|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|sda_int~q\);

-- Location: LCCOMB_X109_Y38_N28
\Inst_top_level|I2C_Transmit_Read|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|Selector29~0_combout\ = (\Inst_top_level|I2C_Transmit_Read|state.start~q\ & (\Inst_top_level|I2C_Transmit_Read|data_clk_prev~q\)) # (!\Inst_top_level|I2C_Transmit_Read|state.start~q\ & 
-- ((\Inst_top_level|I2C_Transmit_Read|state.stop~q\ & (!\Inst_top_level|I2C_Transmit_Read|data_clk_prev~q\)) # (!\Inst_top_level|I2C_Transmit_Read|state.stop~q\ & ((!\Inst_top_level|I2C_Transmit_Read|sda_int~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|data_clk_prev~q\,
	datab => \Inst_top_level|I2C_Transmit_Read|state.stop~q\,
	datac => \Inst_top_level|I2C_Transmit_Read|sda_int~q\,
	datad => \Inst_top_level|I2C_Transmit_Read|state.start~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|Selector29~0_combout\);

-- Location: LCCOMB_X109_Y38_N14
\Inst_top_level|I2C_Transmit_Read|scl_ena~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|scl_ena~0_combout\ = (\Inst_top_level|I2C_Transmit_Read|scl_ena~q\ & (((\Inst_top_level|I2C_Transmit_Read|data_clk~q\) # (!\Inst_top_level|I2C_Transmit_Read|state.stop~q\)) # 
-- (!\Inst_top_level|I2C_Transmit_Read|data_clk_prev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|data_clk_prev~q\,
	datab => \Inst_top_level|I2C_Transmit_Read|scl_ena~q\,
	datac => \Inst_top_level|I2C_Transmit_Read|state.stop~q\,
	datad => \Inst_top_level|I2C_Transmit_Read|data_clk~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|scl_ena~0_combout\);

-- Location: LCCOMB_X109_Y38_N18
\Inst_top_level|I2C_Transmit_Read|scl_ena~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|scl_ena~1_combout\ = (\Inst_top_level|I2C_Transmit_Read|scl_ena~0_combout\) # ((\Inst_top_level|I2C_Transmit_Read|data_clk_prev~q\ & (\Inst_top_level|I2C_Transmit_Read|state.start~q\ & 
-- !\Inst_top_level|I2C_Transmit_Read|data_clk~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|I2C_Transmit_Read|data_clk_prev~q\,
	datab => \Inst_top_level|I2C_Transmit_Read|state.start~q\,
	datac => \Inst_top_level|I2C_Transmit_Read|scl_ena~0_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|data_clk~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|scl_ena~1_combout\);

-- Location: FF_X109_Y38_N19
\Inst_top_level|I2C_Transmit_Read|scl_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|I2C_Transmit_Read|scl_ena~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|scl_ena~q\);

-- Location: LCCOMB_X111_Y38_N20
\Inst_top_level|I2C_Transmit_Read|scl_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|scl_clk~0_combout\ = (\Inst_top_level|I2C_Transmit_Read|process_0~6_combout\ & \Inst_top_level|I2C_Transmit_Read|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|I2C_Transmit_Read|process_0~6_combout\,
	datad => \Inst_top_level|I2C_Transmit_Read|LessThan1~10_combout\,
	combout => \Inst_top_level|I2C_Transmit_Read|scl_clk~0_combout\);

-- Location: FF_X111_Y38_N21
\Inst_top_level|I2C_Transmit_Read|scl_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|I2C_Transmit_Read|scl_clk~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|I2C_Transmit_Read|scl_clk~q\);

-- Location: LCCOMB_X109_Y38_N24
\Inst_top_level|I2C_Transmit_Read|scl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|I2C_Transmit_Read|scl~1_combout\ = (\Inst_top_level|I2C_Transmit_Read|scl_clk~q\) # (!\Inst_top_level|I2C_Transmit_Read|scl_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|I2C_Transmit_Read|scl_ena~q\,
	datad => \Inst_top_level|I2C_Transmit_Read|scl_clk~q\,
	combout => \Inst_top_level|I2C_Transmit_Read|scl~1_combout\);

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

GPIO(0) <= \GPIO[0]~output_o\;

GPIO(1) <= \GPIO[1]~output_o\;
END structure;


