-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "12/08/2017 17:37:53"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	LCD_RW : OUT std_logic;
	LCD_RS : OUT std_logic;
	LCD_EN : OUT std_logic;
	LCD_DATA : OUT std_logic_vector(7 DOWNTO 0);
	GPIO : INOUT std_logic_vector(35 DOWNTO 0)
	);
END main;

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
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_EN	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[1]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[2]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[3]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[4]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[5]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[6]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[7]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[8]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[9]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
-- GPIO[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[3]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[4]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[5]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[7]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[10]	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[11]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[12]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
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
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \GPIO[8]~input_o\ : std_logic;
SIGNAL \GPIO[9]~input_o\ : std_logic;
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
SIGNAL \GPIO[10]~input_o\ : std_logic;
SIGNAL \GPIO[11]~input_o\ : std_logic;
SIGNAL \GPIO[12]~input_o\ : std_logic;
SIGNAL \GPIO[8]~output_o\ : std_logic;
SIGNAL \GPIO[9]~output_o\ : std_logic;
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
SIGNAL \GPIO[2]~output_o\ : std_logic;
SIGNAL \GPIO[3]~output_o\ : std_logic;
SIGNAL \GPIO[4]~output_o\ : std_logic;
SIGNAL \GPIO[5]~output_o\ : std_logic;
SIGNAL \GPIO[6]~output_o\ : std_logic;
SIGNAL \GPIO[7]~output_o\ : std_logic;
SIGNAL \GPIO[10]~output_o\ : std_logic;
SIGNAL \GPIO[11]~output_o\ : std_logic;
SIGNAL \GPIO[12]~output_o\ : std_logic;
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
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \LCD_EN~output_o\ : std_logic;
SIGNAL \LCD_DATA[0]~output_o\ : std_logic;
SIGNAL \LCD_DATA[1]~output_o\ : std_logic;
SIGNAL \LCD_DATA[2]~output_o\ : std_logic;
SIGNAL \LCD_DATA[3]~output_o\ : std_logic;
SIGNAL \LCD_DATA[4]~output_o\ : std_logic;
SIGNAL \LCD_DATA[5]~output_o\ : std_logic;
SIGNAL \LCD_DATA[6]~output_o\ : std_logic;
SIGNAL \LCD_DATA[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \CT|current_state.state_read_blue~feeder_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CT|Add0~0_combout\ : std_logic;
SIGNAL \CT|count~22_combout\ : std_logic;
SIGNAL \CT|Add0~1\ : std_logic;
SIGNAL \CT|Add0~2_combout\ : std_logic;
SIGNAL \CT|count~21_combout\ : std_logic;
SIGNAL \CT|Add0~3\ : std_logic;
SIGNAL \CT|Add0~4_combout\ : std_logic;
SIGNAL \CT|count~20_combout\ : std_logic;
SIGNAL \CT|Add0~5\ : std_logic;
SIGNAL \CT|Add0~6_combout\ : std_logic;
SIGNAL \CT|count~19_combout\ : std_logic;
SIGNAL \CT|Add0~7\ : std_logic;
SIGNAL \CT|Add0~8_combout\ : std_logic;
SIGNAL \CT|count~18_combout\ : std_logic;
SIGNAL \CT|Add0~9\ : std_logic;
SIGNAL \CT|Add0~10_combout\ : std_logic;
SIGNAL \CT|count~17_combout\ : std_logic;
SIGNAL \CT|Add0~11\ : std_logic;
SIGNAL \CT|Add0~12_combout\ : std_logic;
SIGNAL \CT|count~16_combout\ : std_logic;
SIGNAL \CT|Add0~13\ : std_logic;
SIGNAL \CT|Add0~14_combout\ : std_logic;
SIGNAL \CT|count~15_combout\ : std_logic;
SIGNAL \CT|Add0~15\ : std_logic;
SIGNAL \CT|Add0~16_combout\ : std_logic;
SIGNAL \CT|count~14_combout\ : std_logic;
SIGNAL \CT|Add0~17\ : std_logic;
SIGNAL \CT|Add0~18_combout\ : std_logic;
SIGNAL \CT|count~13_combout\ : std_logic;
SIGNAL \CT|Add0~19\ : std_logic;
SIGNAL \CT|Add0~20_combout\ : std_logic;
SIGNAL \CT|count~12_combout\ : std_logic;
SIGNAL \CT|Add0~21\ : std_logic;
SIGNAL \CT|Add0~22_combout\ : std_logic;
SIGNAL \CT|count~11_combout\ : std_logic;
SIGNAL \CT|Add0~23\ : std_logic;
SIGNAL \CT|Add0~24_combout\ : std_logic;
SIGNAL \CT|count~10_combout\ : std_logic;
SIGNAL \CT|Add0~25\ : std_logic;
SIGNAL \CT|Add0~26_combout\ : std_logic;
SIGNAL \CT|count~9_combout\ : std_logic;
SIGNAL \CT|Add0~27\ : std_logic;
SIGNAL \CT|Add0~28_combout\ : std_logic;
SIGNAL \CT|count~8_combout\ : std_logic;
SIGNAL \CT|Add0~29\ : std_logic;
SIGNAL \CT|Add0~30_combout\ : std_logic;
SIGNAL \CT|count~7_combout\ : std_logic;
SIGNAL \CT|Add0~31\ : std_logic;
SIGNAL \CT|Add0~32_combout\ : std_logic;
SIGNAL \CT|count~6_combout\ : std_logic;
SIGNAL \CT|Add0~33\ : std_logic;
SIGNAL \CT|Add0~34_combout\ : std_logic;
SIGNAL \CT|count~5_combout\ : std_logic;
SIGNAL \CT|Add0~35\ : std_logic;
SIGNAL \CT|Add0~36_combout\ : std_logic;
SIGNAL \CT|count~4_combout\ : std_logic;
SIGNAL \CT|Add0~37\ : std_logic;
SIGNAL \CT|Add0~38_combout\ : std_logic;
SIGNAL \CT|count~3_combout\ : std_logic;
SIGNAL \CT|Add0~39\ : std_logic;
SIGNAL \CT|Add0~40_combout\ : std_logic;
SIGNAL \CT|count~2_combout\ : std_logic;
SIGNAL \CT|Add0~41\ : std_logic;
SIGNAL \CT|Add0~42_combout\ : std_logic;
SIGNAL \CT|current_state.state_read_green~q\ : std_logic;
SIGNAL \CT|current_state.state_wait_green~feeder_combout\ : std_logic;
SIGNAL \CT|current_state.state_wait_green~q\ : std_logic;
SIGNAL \CT|current_state.state_print~q\ : std_logic;
SIGNAL \CT|current_state.state_wait~2_combout\ : std_logic;
SIGNAL \CT|current_state.state_wait~q\ : std_logic;
SIGNAL \CT|WideOr3~combout\ : std_logic;
SIGNAL \CT|LessThan0~0_combout\ : std_logic;
SIGNAL \CT|LessThan0~1_combout\ : std_logic;
SIGNAL \CT|LessThan0~9_combout\ : std_logic;
SIGNAL \CT|LessThan0~2_combout\ : std_logic;
SIGNAL \CT|LessThan0~3_combout\ : std_logic;
SIGNAL \CT|LessThan0~4_combout\ : std_logic;
SIGNAL \CT|LessThan0~5_combout\ : std_logic;
SIGNAL \CT|LessThan0~6_combout\ : std_logic;
SIGNAL \CT|LessThan0~7_combout\ : std_logic;
SIGNAL \CT|LessThan0~8_combout\ : std_logic;
SIGNAL \CT|LessThan0~10_combout\ : std_logic;
SIGNAL \CT|LessThan0~11_combout\ : std_logic;
SIGNAL \CT|count~23_combout\ : std_logic;
SIGNAL \CT|Add0~43\ : std_logic;
SIGNAL \CT|Add0~44_combout\ : std_logic;
SIGNAL \CT|LessThan0~12_combout\ : std_logic;
SIGNAL \CT|current_state.state_read_blue~q\ : std_logic;
SIGNAL \CT|current_state.state_wait_blue~0_combout\ : std_logic;
SIGNAL \CT|current_state.state_wait_blue~q\ : std_logic;
SIGNAL \CT|LIGHT_BLUE~0_combout\ : std_logic;
SIGNAL \CT|LIGHT_GREEN~0_combout\ : std_logic;
SIGNAL \LP|lcd_bus~6_combout\ : std_logic;
SIGNAL \LP|char~0_combout\ : std_logic;
SIGNAL \GPIO[7]~input_o\ : std_logic;
SIGNAL \GPIO[5]~input_o\ : std_logic;
SIGNAL \GPIO[3]~input_o\ : std_logic;
SIGNAL \GPIO[1]~input_o\ : std_logic;
SIGNAL \GPIO[6]~input_o\ : std_logic;
SIGNAL \DP|RB|Q[3]~feeder_combout\ : std_logic;
SIGNAL \GPIO[4]~input_o\ : std_logic;
SIGNAL \DP|RG|Q[2]~feeder_combout\ : std_logic;
SIGNAL \GPIO[2]~input_o\ : std_logic;
SIGNAL \GPIO[0]~input_o\ : std_logic;
SIGNAL \DP|LessThan0~1_cout\ : std_logic;
SIGNAL \DP|LessThan0~3_cout\ : std_logic;
SIGNAL \DP|LessThan0~5_cout\ : std_logic;
SIGNAL \DP|LessThan0~7_cout\ : std_logic;
SIGNAL \DP|LessThan0~9_cout\ : std_logic;
SIGNAL \DP|LessThan0~11_cout\ : std_logic;
SIGNAL \DP|LessThan0~13_cout\ : std_logic;
SIGNAL \DP|LessThan0~14_combout\ : std_logic;
SIGNAL \LP|char~3_combout\ : std_logic;
SIGNAL \LP|char~2_combout\ : std_logic;
SIGNAL \LP|char~1_combout\ : std_logic;
SIGNAL \LP|lcd_clear~0_combout\ : std_logic;
SIGNAL \LP|lcd_clear~1_combout\ : std_logic;
SIGNAL \LP|lcd_clear~q\ : std_logic;
SIGNAL \LP|dut|next_state.S0~0_combout\ : std_logic;
SIGNAL \LP|dut|current_state.S0~q\ : std_logic;
SIGNAL \LP|dut|next_state.S1~0_combout\ : std_logic;
SIGNAL \LP|dut|current_state.S1~q\ : std_logic;
SIGNAL \LP|dut|LessThan0~8_combout\ : std_logic;
SIGNAL \LP|dut|LessThan0~6_combout\ : std_logic;
SIGNAL \LP|dut|LessThan0~7_combout\ : std_logic;
SIGNAL \LP|dut|LessThan0~3_combout\ : std_logic;
SIGNAL \LP|dut|LessThan0~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan0~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan0~2_combout\ : std_logic;
SIGNAL \LP|dut|LessThan0~4_combout\ : std_logic;
SIGNAL \LP|dut|LessThan0~5_combout\ : std_logic;
SIGNAL \LP|dut|LessThan0~9_combout\ : std_logic;
SIGNAL \LP|dut|state~13_combout\ : std_logic;
SIGNAL \LP|dut|state.power_up~q\ : std_logic;
SIGNAL \LP|dut|LessThan9~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan9~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan9~2_combout\ : std_logic;
SIGNAL \LP|dut|LessThan9~4_combout\ : std_logic;
SIGNAL \LP|dut|LessThan9~3_combout\ : std_logic;
SIGNAL \LP|dut|LessThan9~5_combout\ : std_logic;
SIGNAL \LP|dut|LessThan9~6_combout\ : std_logic;
SIGNAL \LP|dut|LessThan8~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan8~2_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~4_combout\ : std_logic;
SIGNAL \LP|dut|LessThan8~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan8~3_combout\ : std_logic;
SIGNAL \LP|dut|LessThan6~2_combout\ : std_logic;
SIGNAL \LP|dut|LessThan6~3_combout\ : std_logic;
SIGNAL \LP|dut|LessThan6~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan1~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan6~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan7~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan7~1_combout\ : std_logic;
SIGNAL \LP|dut|lcd_data[0]~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~2_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~3_combout\ : std_logic;
SIGNAL \LP|dut|lcd_data[0]~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan4~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan4~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan4~2_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~5_combout\ : std_logic;
SIGNAL \LP|dut|busy~5_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~12_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~13_combout\ : std_logic;
SIGNAL \LP|dut|LessThan4~4_combout\ : std_logic;
SIGNAL \LP|dut|LessThan6~4_combout\ : std_logic;
SIGNAL \LP|dut|LessThan5~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan5~1_combout\ : std_logic;
SIGNAL \LP|dut|clk_count~3_combout\ : std_logic;
SIGNAL \LP|dut|LessThan1~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~6_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~7_combout\ : std_logic;
SIGNAL \LP|dut|LessThan1~2_combout\ : std_logic;
SIGNAL \LP|dut|clk_count~4_combout\ : std_logic;
SIGNAL \LP|dut|clk_count~5_combout\ : std_logic;
SIGNAL \LP|dut|clk_count[23]~7_combout\ : std_logic;
SIGNAL \LP|dut|clk_count[23]~6_combout\ : std_logic;
SIGNAL \LP|dut|Add0~0_combout\ : std_logic;
SIGNAL \LP|dut|Selector33~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~1\ : std_logic;
SIGNAL \LP|dut|Add0~2_combout\ : std_logic;
SIGNAL \LP|dut|Selector32~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~3\ : std_logic;
SIGNAL \LP|dut|Add0~4_combout\ : std_logic;
SIGNAL \LP|dut|Selector31~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~5\ : std_logic;
SIGNAL \LP|dut|Add0~6_combout\ : std_logic;
SIGNAL \LP|dut|Selector30~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~7\ : std_logic;
SIGNAL \LP|dut|Add0~8_combout\ : std_logic;
SIGNAL \LP|dut|Selector29~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~9\ : std_logic;
SIGNAL \LP|dut|Add0~10_combout\ : std_logic;
SIGNAL \LP|dut|Selector28~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~11\ : std_logic;
SIGNAL \LP|dut|Add0~12_combout\ : std_logic;
SIGNAL \LP|dut|Selector27~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~13\ : std_logic;
SIGNAL \LP|dut|Add0~14_combout\ : std_logic;
SIGNAL \LP|dut|Selector26~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~15\ : std_logic;
SIGNAL \LP|dut|Add0~16_combout\ : std_logic;
SIGNAL \LP|dut|Selector25~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~17\ : std_logic;
SIGNAL \LP|dut|Add0~18_combout\ : std_logic;
SIGNAL \LP|dut|Selector24~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~19\ : std_logic;
SIGNAL \LP|dut|Add0~20_combout\ : std_logic;
SIGNAL \LP|dut|Selector23~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~21\ : std_logic;
SIGNAL \LP|dut|Add0~22_combout\ : std_logic;
SIGNAL \LP|dut|Selector22~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~23\ : std_logic;
SIGNAL \LP|dut|Add0~24_combout\ : std_logic;
SIGNAL \LP|dut|Selector21~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~25\ : std_logic;
SIGNAL \LP|dut|Add0~26_combout\ : std_logic;
SIGNAL \LP|dut|Selector20~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~27\ : std_logic;
SIGNAL \LP|dut|Add0~28_combout\ : std_logic;
SIGNAL \LP|dut|Selector19~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~29\ : std_logic;
SIGNAL \LP|dut|Add0~30_combout\ : std_logic;
SIGNAL \LP|dut|Selector18~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~31\ : std_logic;
SIGNAL \LP|dut|Add0~32_combout\ : std_logic;
SIGNAL \LP|dut|Selector17~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~33\ : std_logic;
SIGNAL \LP|dut|Add0~34_combout\ : std_logic;
SIGNAL \LP|dut|Selector16~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~35\ : std_logic;
SIGNAL \LP|dut|Add0~36_combout\ : std_logic;
SIGNAL \LP|dut|Selector15~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~37\ : std_logic;
SIGNAL \LP|dut|Add0~38_combout\ : std_logic;
SIGNAL \LP|dut|Selector14~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~39\ : std_logic;
SIGNAL \LP|dut|Add0~40_combout\ : std_logic;
SIGNAL \LP|dut|Selector13~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~41\ : std_logic;
SIGNAL \LP|dut|Add0~42_combout\ : std_logic;
SIGNAL \LP|dut|Selector12~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~43\ : std_logic;
SIGNAL \LP|dut|Add0~44_combout\ : std_logic;
SIGNAL \LP|dut|Selector11~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~45\ : std_logic;
SIGNAL \LP|dut|Add0~46_combout\ : std_logic;
SIGNAL \LP|dut|Selector10~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~47\ : std_logic;
SIGNAL \LP|dut|Add0~48_combout\ : std_logic;
SIGNAL \LP|dut|Selector9~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~49\ : std_logic;
SIGNAL \LP|dut|Add0~50_combout\ : std_logic;
SIGNAL \LP|dut|Selector8~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~51\ : std_logic;
SIGNAL \LP|dut|Add0~52_combout\ : std_logic;
SIGNAL \LP|dut|Selector7~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~53\ : std_logic;
SIGNAL \LP|dut|Add0~54_combout\ : std_logic;
SIGNAL \LP|dut|Selector6~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~55\ : std_logic;
SIGNAL \LP|dut|Add0~56_combout\ : std_logic;
SIGNAL \LP|dut|Selector5~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~57\ : std_logic;
SIGNAL \LP|dut|Add0~58_combout\ : std_logic;
SIGNAL \LP|dut|Selector4~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~59\ : std_logic;
SIGNAL \LP|dut|Add0~60_combout\ : std_logic;
SIGNAL \LP|dut|Selector3~0_combout\ : std_logic;
SIGNAL \LP|dut|Add0~61\ : std_logic;
SIGNAL \LP|dut|Add0~62_combout\ : std_logic;
SIGNAL \LP|dut|Selector2~0_combout\ : std_logic;
SIGNAL \LP|dut|clk_count[23]~2_combout\ : std_logic;
SIGNAL \LP|dut|state~14_combout\ : std_logic;
SIGNAL \LP|dut|state.send~q\ : std_logic;
SIGNAL \LP|dut|state~8_combout\ : std_logic;
SIGNAL \LP|dut|state~10_combout\ : std_logic;
SIGNAL \LP|dut|state.ready~q\ : std_logic;
SIGNAL \LP|dut|LessThan3~9_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~8_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~10_combout\ : std_logic;
SIGNAL \LP|dut|busy~6_combout\ : std_logic;
SIGNAL \LP|dut|busy~8_combout\ : std_logic;
SIGNAL \LP|dut|busy~7_combout\ : std_logic;
SIGNAL \LP|dut|state~11_combout\ : std_logic;
SIGNAL \LP|dut|state~12_combout\ : std_logic;
SIGNAL \LP|dut|state.initialize~q\ : std_logic;
SIGNAL \LP|dut|state~9_combout\ : std_logic;
SIGNAL \LP|dut|busy~q\ : std_logic;
SIGNAL \CT|PRINT~combout\ : std_logic;
SIGNAL \LP|printing~0_combout\ : std_logic;
SIGNAL \LP|Add0~0_combout\ : std_logic;
SIGNAL \LP|printing~1_combout\ : std_logic;
SIGNAL \LP|printing~2_combout\ : std_logic;
SIGNAL \LP|printing~q\ : std_logic;
SIGNAL \LP|process_0~0_combout\ : std_logic;
SIGNAL \LP|lcd_enable~3_combout\ : std_logic;
SIGNAL \LP|lcd_enable~2_combout\ : std_logic;
SIGNAL \LP|lcd_enable~q\ : std_logic;
SIGNAL \LP|dut|Selector37~0_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~2_combout\ : std_logic;
SIGNAL \LP|dut|rw~0_combout\ : std_logic;
SIGNAL \LP|dut|rs~0_combout\ : std_logic;
SIGNAL \LP|dut|rs~q\ : std_logic;
SIGNAL \LP|dut|LessThan10~2_combout\ : std_logic;
SIGNAL \LP|dut|LessThan10~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan10~3_combout\ : std_logic;
SIGNAL \LP|dut|LessThan10~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan10~4_combout\ : std_logic;
SIGNAL \LP|dut|LessThan9~7_combout\ : std_logic;
SIGNAL \LP|dut|LessThan12~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan12~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan12~2_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~15_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~12_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~18_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~13_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~14_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~16_combout\ : std_logic;
SIGNAL \LP|dut|LessThan5~2_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~9_combout\ : std_logic;
SIGNAL \LP|dut|LessThan4~3_combout\ : std_logic;
SIGNAL \LP|dut|LessThan2~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan2~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan2~2_combout\ : std_logic;
SIGNAL \LP|dut|LessThan2~3_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~10_combout\ : std_logic;
SIGNAL \LP|dut|LessThan8~4_combout\ : std_logic;
SIGNAL \LP|dut|LessThan7~2_combout\ : std_logic;
SIGNAL \LP|dut|busy~4_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~3_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~4_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~5_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~11_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~6_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~7_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~8_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~11_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~17_combout\ : std_logic;
SIGNAL \LP|dut|e~q\ : std_logic;
SIGNAL \LP|lcd_bus~8_combout\ : std_logic;
SIGNAL \LP|lcd_bus~21_combout\ : std_logic;
SIGNAL \LP|Add0~2_combout\ : std_logic;
SIGNAL \LP|lcd_bus~7_combout\ : std_logic;
SIGNAL \LP|lcd_bus~9_combout\ : std_logic;
SIGNAL \LP|dut|Selector44~0_combout\ : std_logic;
SIGNAL \LP|dut|Selector46~0_combout\ : std_logic;
SIGNAL \LP|dut|Selector46~1_combout\ : std_logic;
SIGNAL \LP|dut|lcd_data[0]~2_combout\ : std_logic;
SIGNAL \LP|Mux43~0_combout\ : std_logic;
SIGNAL \LP|lcd_bus~10_combout\ : std_logic;
SIGNAL \LP|Add0~1_combout\ : std_logic;
SIGNAL \LP|lcd_bus~11_combout\ : std_logic;
SIGNAL \LP|lcd_bus~12_combout\ : std_logic;
SIGNAL \LP|lcd_bus~13_combout\ : std_logic;
SIGNAL \LP|dut|Selector45~1_combout\ : std_logic;
SIGNAL \LP|dut|Selector45~0_combout\ : std_logic;
SIGNAL \LP|dut|Selector45~2_combout\ : std_logic;
SIGNAL \LP|dut|Selector44~2_combout\ : std_logic;
SIGNAL \LP|dut|Selector44~3_combout\ : std_logic;
SIGNAL \LP|lcd_bus~14_combout\ : std_logic;
SIGNAL \LP|lcd_bus~15_combout\ : std_logic;
SIGNAL \LP|dut|Selector44~1_combout\ : std_logic;
SIGNAL \LP|dut|Selector44~4_combout\ : std_logic;
SIGNAL \LP|lcd_bus~23_combout\ : std_logic;
SIGNAL \LP|Add0~3_combout\ : std_logic;
SIGNAL \LP|lcd_bus~16_combout\ : std_logic;
SIGNAL \LP|lcd_bus~22_combout\ : std_logic;
SIGNAL \LP|lcd_bus~17_combout\ : std_logic;
SIGNAL \LP|dut|Selector43~2_combout\ : std_logic;
SIGNAL \LP|Mux40~0_combout\ : std_logic;
SIGNAL \LP|lcd_bus~18_combout\ : std_logic;
SIGNAL \LP|lcd_bus~19_combout\ : std_logic;
SIGNAL \LP|lcd_bus~20_combout\ : std_logic;
SIGNAL \LP|dut|Selector42~2_combout\ : std_logic;
SIGNAL \LP|dut|Selector42~3_combout\ : std_logic;
SIGNAL \LP|dut|lcd_data[6]~feeder_combout\ : std_logic;
SIGNAL \LP|dut|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LP|dut|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \LP|lcd_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DP|RB|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LP|char\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DP|RG|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CT|count\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \CT|ALT_INV_current_state.state_read_blue~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
LCD_RW <= ww_LCD_RW;
LCD_RS <= ww_LCD_RS;
LCD_EN <= ww_LCD_EN;
LCD_DATA <= ww_LCD_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\CT|ALT_INV_current_state.state_read_blue~q\ <= NOT \CT|current_state.state_read_blue~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

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

-- Location: IOOBUF_X94_Y0_N9
\GPIO[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CT|LIGHT_BLUE~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO[10]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\GPIO[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CT|LIGHT_GREEN~0_combout\,
	oe => VCC,
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

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LP|dut|rs~q\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\LCD_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LP|dut|e~q\,
	devoe => ww_devoe,
	o => \LCD_EN~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\LCD_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LP|dut|lcd_data\(0),
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
	i => \LP|dut|lcd_data\(1),
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
	i => \LP|dut|lcd_data\(2),
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
	i => \LP|dut|lcd_data\(3),
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
	i => \LP|dut|lcd_data\(4),
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
	i => \LP|dut|lcd_data\(5),
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
	i => \LP|dut|lcd_data\(6),
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
	i => GND,
	devoe => ww_devoe,
	o => \LCD_DATA[7]~output_o\);

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

-- Location: LCCOMB_X105_Y36_N22
\CT|current_state.state_read_blue~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|current_state.state_read_blue~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CT|current_state.state_read_blue~feeder_combout\);

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

-- Location: LCCOMB_X107_Y36_N10
\CT|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~0_combout\ = \CT|count\(0) $ (VCC)
-- \CT|Add0~1\ = CARRY(\CT|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CT|count\(0),
	datad => VCC,
	combout => \CT|Add0~0_combout\,
	cout => \CT|Add0~1\);

-- Location: LCCOMB_X107_Y36_N0
\CT|count~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~22_combout\ = (!\CT|LessThan0~12_combout\ & \CT|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CT|LessThan0~12_combout\,
	datad => \CT|Add0~0_combout\,
	combout => \CT|count~22_combout\);

-- Location: FF_X107_Y36_N1
\CT|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~22_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(0));

-- Location: LCCOMB_X107_Y36_N12
\CT|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~2_combout\ = (\CT|count\(1) & (!\CT|Add0~1\)) # (!\CT|count\(1) & ((\CT|Add0~1\) # (GND)))
-- \CT|Add0~3\ = CARRY((!\CT|Add0~1\) # (!\CT|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CT|count\(1),
	datad => VCC,
	cin => \CT|Add0~1\,
	combout => \CT|Add0~2_combout\,
	cout => \CT|Add0~3\);

-- Location: LCCOMB_X107_Y36_N6
\CT|count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~21_combout\ = (!\CT|LessThan0~12_combout\ & \CT|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CT|LessThan0~12_combout\,
	datad => \CT|Add0~2_combout\,
	combout => \CT|count~21_combout\);

-- Location: FF_X107_Y36_N7
\CT|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~21_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(1));

-- Location: LCCOMB_X107_Y36_N14
\CT|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~4_combout\ = (\CT|count\(2) & (\CT|Add0~3\ $ (GND))) # (!\CT|count\(2) & (!\CT|Add0~3\ & VCC))
-- \CT|Add0~5\ = CARRY((\CT|count\(2) & !\CT|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CT|count\(2),
	datad => VCC,
	cin => \CT|Add0~3\,
	combout => \CT|Add0~4_combout\,
	cout => \CT|Add0~5\);

-- Location: LCCOMB_X107_Y36_N8
\CT|count~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~20_combout\ = (\CT|Add0~4_combout\ & !\CT|LessThan0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CT|Add0~4_combout\,
	datac => \CT|LessThan0~12_combout\,
	combout => \CT|count~20_combout\);

-- Location: FF_X107_Y36_N9
\CT|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~20_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(2));

-- Location: LCCOMB_X107_Y36_N16
\CT|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~6_combout\ = (\CT|count\(3) & (!\CT|Add0~5\)) # (!\CT|count\(3) & ((\CT|Add0~5\) # (GND)))
-- \CT|Add0~7\ = CARRY((!\CT|Add0~5\) # (!\CT|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CT|count\(3),
	datad => VCC,
	cin => \CT|Add0~5\,
	combout => \CT|Add0~6_combout\,
	cout => \CT|Add0~7\);

-- Location: LCCOMB_X107_Y36_N2
\CT|count~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~19_combout\ = (!\CT|LessThan0~12_combout\ & \CT|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CT|LessThan0~12_combout\,
	datad => \CT|Add0~6_combout\,
	combout => \CT|count~19_combout\);

-- Location: FF_X107_Y36_N3
\CT|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~19_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(3));

-- Location: LCCOMB_X107_Y36_N18
\CT|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~8_combout\ = (\CT|count\(4) & (\CT|Add0~7\ $ (GND))) # (!\CT|count\(4) & (!\CT|Add0~7\ & VCC))
-- \CT|Add0~9\ = CARRY((\CT|count\(4) & !\CT|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CT|count\(4),
	datad => VCC,
	cin => \CT|Add0~7\,
	combout => \CT|Add0~8_combout\,
	cout => \CT|Add0~9\);

-- Location: LCCOMB_X107_Y36_N4
\CT|count~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~18_combout\ = (!\CT|LessThan0~12_combout\ & \CT|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CT|LessThan0~12_combout\,
	datad => \CT|Add0~8_combout\,
	combout => \CT|count~18_combout\);

-- Location: FF_X107_Y36_N5
\CT|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~18_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(4));

-- Location: LCCOMB_X107_Y36_N20
\CT|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~10_combout\ = (\CT|count\(5) & (!\CT|Add0~9\)) # (!\CT|count\(5) & ((\CT|Add0~9\) # (GND)))
-- \CT|Add0~11\ = CARRY((!\CT|Add0~9\) # (!\CT|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CT|count\(5),
	datad => VCC,
	cin => \CT|Add0~9\,
	combout => \CT|Add0~10_combout\,
	cout => \CT|Add0~11\);

-- Location: LCCOMB_X108_Y36_N24
\CT|count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~17_combout\ = (!\CT|LessThan0~12_combout\ & \CT|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CT|LessThan0~12_combout\,
	datad => \CT|Add0~10_combout\,
	combout => \CT|count~17_combout\);

-- Location: FF_X108_Y36_N25
\CT|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~17_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(5));

-- Location: LCCOMB_X107_Y36_N22
\CT|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~12_combout\ = (\CT|count\(6) & (\CT|Add0~11\ $ (GND))) # (!\CT|count\(6) & (!\CT|Add0~11\ & VCC))
-- \CT|Add0~13\ = CARRY((\CT|count\(6) & !\CT|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CT|count\(6),
	datad => VCC,
	cin => \CT|Add0~11\,
	combout => \CT|Add0~12_combout\,
	cout => \CT|Add0~13\);

-- Location: LCCOMB_X108_Y36_N30
\CT|count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~16_combout\ = (!\CT|LessThan0~12_combout\ & \CT|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CT|LessThan0~12_combout\,
	datad => \CT|Add0~12_combout\,
	combout => \CT|count~16_combout\);

-- Location: FF_X108_Y36_N31
\CT|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~16_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(6));

-- Location: LCCOMB_X107_Y36_N24
\CT|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~14_combout\ = (\CT|count\(7) & (!\CT|Add0~13\)) # (!\CT|count\(7) & ((\CT|Add0~13\) # (GND)))
-- \CT|Add0~15\ = CARRY((!\CT|Add0~13\) # (!\CT|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CT|count\(7),
	datad => VCC,
	cin => \CT|Add0~13\,
	combout => \CT|Add0~14_combout\,
	cout => \CT|Add0~15\);

-- Location: LCCOMB_X106_Y36_N10
\CT|count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~15_combout\ = (!\CT|LessThan0~12_combout\ & \CT|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~12_combout\,
	datad => \CT|Add0~14_combout\,
	combout => \CT|count~15_combout\);

-- Location: FF_X106_Y36_N11
\CT|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~15_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(7));

-- Location: LCCOMB_X107_Y36_N26
\CT|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~16_combout\ = (\CT|count\(8) & (\CT|Add0~15\ $ (GND))) # (!\CT|count\(8) & (!\CT|Add0~15\ & VCC))
-- \CT|Add0~17\ = CARRY((\CT|count\(8) & !\CT|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CT|count\(8),
	datad => VCC,
	cin => \CT|Add0~15\,
	combout => \CT|Add0~16_combout\,
	cout => \CT|Add0~17\);

-- Location: LCCOMB_X106_Y36_N16
\CT|count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~14_combout\ = (!\CT|LessThan0~12_combout\ & \CT|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~12_combout\,
	datad => \CT|Add0~16_combout\,
	combout => \CT|count~14_combout\);

-- Location: FF_X106_Y36_N17
\CT|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~14_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(8));

-- Location: LCCOMB_X107_Y36_N28
\CT|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~18_combout\ = (\CT|count\(9) & (!\CT|Add0~17\)) # (!\CT|count\(9) & ((\CT|Add0~17\) # (GND)))
-- \CT|Add0~19\ = CARRY((!\CT|Add0~17\) # (!\CT|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CT|count\(9),
	datad => VCC,
	cin => \CT|Add0~17\,
	combout => \CT|Add0~18_combout\,
	cout => \CT|Add0~19\);

-- Location: LCCOMB_X106_Y36_N20
\CT|count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~13_combout\ = (!\CT|LessThan0~12_combout\ & \CT|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~12_combout\,
	datad => \CT|Add0~18_combout\,
	combout => \CT|count~13_combout\);

-- Location: FF_X106_Y36_N21
\CT|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~13_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(9));

-- Location: LCCOMB_X107_Y36_N30
\CT|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~20_combout\ = (\CT|count\(10) & (\CT|Add0~19\ $ (GND))) # (!\CT|count\(10) & (!\CT|Add0~19\ & VCC))
-- \CT|Add0~21\ = CARRY((\CT|count\(10) & !\CT|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CT|count\(10),
	datad => VCC,
	cin => \CT|Add0~19\,
	combout => \CT|Add0~20_combout\,
	cout => \CT|Add0~21\);

-- Location: LCCOMB_X108_Y36_N4
\CT|count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~12_combout\ = (!\CT|LessThan0~12_combout\ & \CT|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CT|LessThan0~12_combout\,
	datad => \CT|Add0~20_combout\,
	combout => \CT|count~12_combout\);

-- Location: FF_X108_Y36_N5
\CT|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~12_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(10));

-- Location: LCCOMB_X107_Y35_N0
\CT|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~22_combout\ = (\CT|count\(11) & (!\CT|Add0~21\)) # (!\CT|count\(11) & ((\CT|Add0~21\) # (GND)))
-- \CT|Add0~23\ = CARRY((!\CT|Add0~21\) # (!\CT|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CT|count\(11),
	datad => VCC,
	cin => \CT|Add0~21\,
	combout => \CT|Add0~22_combout\,
	cout => \CT|Add0~23\);

-- Location: LCCOMB_X107_Y35_N28
\CT|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~11_combout\ = (!\CT|LessThan0~12_combout\ & \CT|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~12_combout\,
	datad => \CT|Add0~22_combout\,
	combout => \CT|count~11_combout\);

-- Location: FF_X107_Y35_N29
\CT|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~11_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(11));

-- Location: LCCOMB_X107_Y35_N2
\CT|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~24_combout\ = (\CT|count\(12) & (\CT|Add0~23\ $ (GND))) # (!\CT|count\(12) & (!\CT|Add0~23\ & VCC))
-- \CT|Add0~25\ = CARRY((\CT|count\(12) & !\CT|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CT|count\(12),
	datad => VCC,
	cin => \CT|Add0~23\,
	combout => \CT|Add0~24_combout\,
	cout => \CT|Add0~25\);

-- Location: LCCOMB_X107_Y35_N30
\CT|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~10_combout\ = (!\CT|LessThan0~12_combout\ & \CT|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~12_combout\,
	datad => \CT|Add0~24_combout\,
	combout => \CT|count~10_combout\);

-- Location: FF_X107_Y35_N31
\CT|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~10_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(12));

-- Location: LCCOMB_X107_Y35_N4
\CT|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~26_combout\ = (\CT|count\(13) & (!\CT|Add0~25\)) # (!\CT|count\(13) & ((\CT|Add0~25\) # (GND)))
-- \CT|Add0~27\ = CARRY((!\CT|Add0~25\) # (!\CT|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CT|count\(13),
	datad => VCC,
	cin => \CT|Add0~25\,
	combout => \CT|Add0~26_combout\,
	cout => \CT|Add0~27\);

-- Location: LCCOMB_X106_Y36_N0
\CT|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~9_combout\ = (!\CT|LessThan0~12_combout\ & \CT|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~12_combout\,
	datac => \CT|Add0~26_combout\,
	combout => \CT|count~9_combout\);

-- Location: FF_X106_Y36_N1
\CT|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~9_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(13));

-- Location: LCCOMB_X107_Y35_N6
\CT|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~28_combout\ = (\CT|count\(14) & (\CT|Add0~27\ $ (GND))) # (!\CT|count\(14) & (!\CT|Add0~27\ & VCC))
-- \CT|Add0~29\ = CARRY((\CT|count\(14) & !\CT|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CT|count\(14),
	datad => VCC,
	cin => \CT|Add0~27\,
	combout => \CT|Add0~28_combout\,
	cout => \CT|Add0~29\);

-- Location: LCCOMB_X107_Y35_N24
\CT|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~8_combout\ = (!\CT|LessThan0~12_combout\ & \CT|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~12_combout\,
	datad => \CT|Add0~28_combout\,
	combout => \CT|count~8_combout\);

-- Location: FF_X107_Y35_N25
\CT|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~8_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(14));

-- Location: LCCOMB_X107_Y35_N8
\CT|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~30_combout\ = (\CT|count\(15) & (!\CT|Add0~29\)) # (!\CT|count\(15) & ((\CT|Add0~29\) # (GND)))
-- \CT|Add0~31\ = CARRY((!\CT|Add0~29\) # (!\CT|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CT|count\(15),
	datad => VCC,
	cin => \CT|Add0~29\,
	combout => \CT|Add0~30_combout\,
	cout => \CT|Add0~31\);

-- Location: LCCOMB_X108_Y36_N2
\CT|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~7_combout\ = (!\CT|LessThan0~12_combout\ & \CT|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CT|LessThan0~12_combout\,
	datad => \CT|Add0~30_combout\,
	combout => \CT|count~7_combout\);

-- Location: FF_X108_Y36_N3
\CT|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~7_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(15));

-- Location: LCCOMB_X107_Y35_N10
\CT|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~32_combout\ = (\CT|count\(16) & (\CT|Add0~31\ $ (GND))) # (!\CT|count\(16) & (!\CT|Add0~31\ & VCC))
-- \CT|Add0~33\ = CARRY((\CT|count\(16) & !\CT|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CT|count\(16),
	datad => VCC,
	cin => \CT|Add0~31\,
	combout => \CT|Add0~32_combout\,
	cout => \CT|Add0~33\);

-- Location: LCCOMB_X106_Y36_N12
\CT|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~6_combout\ = (!\CT|LessThan0~12_combout\ & \CT|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~12_combout\,
	datad => \CT|Add0~32_combout\,
	combout => \CT|count~6_combout\);

-- Location: FF_X106_Y36_N13
\CT|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~6_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(16));

-- Location: LCCOMB_X107_Y35_N12
\CT|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~34_combout\ = (\CT|count\(17) & (!\CT|Add0~33\)) # (!\CT|count\(17) & ((\CT|Add0~33\) # (GND)))
-- \CT|Add0~35\ = CARRY((!\CT|Add0~33\) # (!\CT|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CT|count\(17),
	datad => VCC,
	cin => \CT|Add0~33\,
	combout => \CT|Add0~34_combout\,
	cout => \CT|Add0~35\);

-- Location: LCCOMB_X108_Y36_N0
\CT|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~5_combout\ = (\CT|Add0~34_combout\ & !\CT|LessThan0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CT|Add0~34_combout\,
	datac => \CT|LessThan0~12_combout\,
	combout => \CT|count~5_combout\);

-- Location: FF_X108_Y36_N1
\CT|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~5_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(17));

-- Location: LCCOMB_X107_Y35_N14
\CT|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~36_combout\ = (\CT|count\(18) & (\CT|Add0~35\ $ (GND))) # (!\CT|count\(18) & (!\CT|Add0~35\ & VCC))
-- \CT|Add0~37\ = CARRY((\CT|count\(18) & !\CT|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CT|count\(18),
	datad => VCC,
	cin => \CT|Add0~35\,
	combout => \CT|Add0~36_combout\,
	cout => \CT|Add0~37\);

-- Location: LCCOMB_X108_Y36_N18
\CT|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~4_combout\ = (!\CT|LessThan0~12_combout\ & \CT|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CT|LessThan0~12_combout\,
	datad => \CT|Add0~36_combout\,
	combout => \CT|count~4_combout\);

-- Location: FF_X108_Y36_N19
\CT|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(18));

-- Location: LCCOMB_X107_Y35_N16
\CT|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~38_combout\ = (\CT|count\(19) & (!\CT|Add0~37\)) # (!\CT|count\(19) & ((\CT|Add0~37\) # (GND)))
-- \CT|Add0~39\ = CARRY((!\CT|Add0~37\) # (!\CT|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CT|count\(19),
	datad => VCC,
	cin => \CT|Add0~37\,
	combout => \CT|Add0~38_combout\,
	cout => \CT|Add0~39\);

-- Location: LCCOMB_X108_Y36_N12
\CT|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~3_combout\ = (\CT|Add0~38_combout\ & !\CT|LessThan0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~38_combout\,
	datac => \CT|LessThan0~12_combout\,
	combout => \CT|count~3_combout\);

-- Location: FF_X108_Y36_N13
\CT|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~3_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(19));

-- Location: LCCOMB_X107_Y35_N18
\CT|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~40_combout\ = (\CT|count\(20) & (\CT|Add0~39\ $ (GND))) # (!\CT|count\(20) & (!\CT|Add0~39\ & VCC))
-- \CT|Add0~41\ = CARRY((\CT|count\(20) & !\CT|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CT|count\(20),
	datad => VCC,
	cin => \CT|Add0~39\,
	combout => \CT|Add0~40_combout\,
	cout => \CT|Add0~41\);

-- Location: LCCOMB_X106_Y36_N18
\CT|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~2_combout\ = (!\CT|LessThan0~12_combout\ & \CT|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~12_combout\,
	datad => \CT|Add0~40_combout\,
	combout => \CT|count~2_combout\);

-- Location: FF_X106_Y36_N19
\CT|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(20));

-- Location: LCCOMB_X107_Y35_N20
\CT|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~42_combout\ = (\CT|count\(21) & (!\CT|Add0~41\)) # (!\CT|count\(21) & ((\CT|Add0~41\) # (GND)))
-- \CT|Add0~43\ = CARRY((!\CT|Add0~41\) # (!\CT|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CT|count\(21),
	datad => VCC,
	cin => \CT|Add0~41\,
	combout => \CT|Add0~42_combout\,
	cout => \CT|Add0~43\);

-- Location: FF_X106_Y36_N27
\CT|current_state.state_read_green\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CT|current_state.state_wait_blue~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \CT|LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|current_state.state_read_green~q\);

-- Location: LCCOMB_X105_Y36_N28
\CT|current_state.state_wait_green~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|current_state.state_wait_green~feeder_combout\ = \CT|current_state.state_read_green~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CT|current_state.state_read_green~q\,
	combout => \CT|current_state.state_wait_green~feeder_combout\);

-- Location: FF_X105_Y36_N29
\CT|current_state.state_wait_green\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|current_state.state_wait_green~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \CT|LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|current_state.state_wait_green~q\);

-- Location: FF_X106_Y36_N7
\CT|current_state.state_print\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CT|current_state.state_wait_green~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \CT|LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|current_state.state_print~q\);

-- Location: LCCOMB_X105_Y36_N18
\CT|current_state.state_wait~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|current_state.state_wait~2_combout\ = (\CT|current_state.state_wait~q\) # ((\CT|LessThan0~12_combout\ & \CT|current_state.state_print~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CT|LessThan0~12_combout\,
	datac => \CT|current_state.state_wait~q\,
	datad => \CT|current_state.state_print~q\,
	combout => \CT|current_state.state_wait~2_combout\);

-- Location: FF_X105_Y36_N19
\CT|current_state.state_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CT|current_state.state_wait~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|current_state.state_wait~q\);

-- Location: LCCOMB_X105_Y36_N30
\CT|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|WideOr3~combout\ = (\CT|current_state.state_print~q\) # (\CT|current_state.state_wait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CT|current_state.state_print~q\,
	datad => \CT|current_state.state_wait~q\,
	combout => \CT|WideOr3~combout\);

-- Location: LCCOMB_X105_Y36_N24
\CT|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~0_combout\ = (\CT|WideOr3~combout\ & ((\CT|Add0~22_combout\) # ((\CT|Add0~26_combout\) # (\CT|Add0~24_combout\)))) # (!\CT|WideOr3~combout\ & (\CT|Add0~26_combout\ & ((\CT|Add0~22_combout\) # (\CT|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|WideOr3~combout\,
	datab => \CT|Add0~22_combout\,
	datac => \CT|Add0~26_combout\,
	datad => \CT|Add0~24_combout\,
	combout => \CT|LessThan0~0_combout\);

-- Location: LCCOMB_X105_Y36_N14
\CT|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~1_combout\ = (\CT|Add0~30_combout\) # ((\CT|LessThan0~0_combout\) # ((\CT|Add0~28_combout\) # (\CT|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~30_combout\,
	datab => \CT|LessThan0~0_combout\,
	datac => \CT|Add0~28_combout\,
	datad => \CT|Add0~32_combout\,
	combout => \CT|LessThan0~1_combout\);

-- Location: LCCOMB_X107_Y35_N26
\CT|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~9_combout\ = (\CT|Add0~34_combout\ & ((\CT|Add0~36_combout\) # (!\CT|Add0~42_combout\))) # (!\CT|Add0~34_combout\ & (\CT|Add0~36_combout\ & !\CT|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~34_combout\,
	datac => \CT|Add0~36_combout\,
	datad => \CT|Add0~42_combout\,
	combout => \CT|LessThan0~9_combout\);

-- Location: LCCOMB_X106_Y36_N6
\CT|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~2_combout\ = (\CT|Add0~8_combout\) # ((!\CT|current_state.state_print~q\ & ((\CT|Add0~2_combout\) # (\CT|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~2_combout\,
	datab => \CT|Add0~0_combout\,
	datac => \CT|current_state.state_print~q\,
	datad => \CT|Add0~8_combout\,
	combout => \CT|LessThan0~2_combout\);

-- Location: LCCOMB_X106_Y36_N14
\CT|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~3_combout\ = (\CT|Add0~14_combout\ & (!\CT|current_state.state_wait~q\ & (\CT|Add0~10_combout\ & !\CT|current_state.state_print~q\))) # (!\CT|Add0~14_combout\ & (!\CT|Add0~10_combout\ & ((\CT|current_state.state_wait~q\) # 
-- (\CT|current_state.state_print~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|current_state.state_wait~q\,
	datab => \CT|Add0~14_combout\,
	datac => \CT|Add0~10_combout\,
	datad => \CT|current_state.state_print~q\,
	combout => \CT|LessThan0~3_combout\);

-- Location: LCCOMB_X106_Y36_N4
\CT|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~4_combout\ = (\CT|LessThan0~3_combout\ & ((\CT|Add0~6_combout\) # ((\CT|Add0~4_combout\) # (\CT|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~6_combout\,
	datab => \CT|Add0~4_combout\,
	datac => \CT|LessThan0~2_combout\,
	datad => \CT|LessThan0~3_combout\,
	combout => \CT|LessThan0~4_combout\);

-- Location: LCCOMB_X108_Y36_N14
\CT|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~5_combout\ = (\CT|Add0~12_combout\) # ((\CT|Add0~10_combout\ & !\CT|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CT|Add0~12_combout\,
	datac => \CT|Add0~10_combout\,
	datad => \CT|Add0~20_combout\,
	combout => \CT|LessThan0~5_combout\);

-- Location: LCCOMB_X106_Y36_N30
\CT|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~6_combout\ = (\CT|LessThan0~4_combout\) # ((\CT|Add0~26_combout\ & (\CT|Add0~14_combout\ & \CT|LessThan0~5_combout\)) # (!\CT|Add0~26_combout\ & ((\CT|Add0~14_combout\) # (\CT|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~26_combout\,
	datab => \CT|Add0~14_combout\,
	datac => \CT|LessThan0~4_combout\,
	datad => \CT|LessThan0~5_combout\,
	combout => \CT|LessThan0~6_combout\);

-- Location: LCCOMB_X106_Y36_N8
\CT|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~7_combout\ = (\CT|Add0~18_combout\) # ((\CT|Add0~16_combout\ & ((\CT|WideOr3~combout\) # (\CT|LessThan0~6_combout\))) # (!\CT|Add0~16_combout\ & (\CT|WideOr3~combout\ & \CT|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~16_combout\,
	datab => \CT|WideOr3~combout\,
	datac => \CT|LessThan0~6_combout\,
	datad => \CT|Add0~18_combout\,
	combout => \CT|LessThan0~7_combout\);

-- Location: LCCOMB_X106_Y36_N28
\CT|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~8_combout\ = (\CT|Add0~26_combout\ & (\CT|Add0~20_combout\ & (!\CT|WideOr3~combout\ & \CT|LessThan0~7_combout\))) # (!\CT|Add0~26_combout\ & (\CT|WideOr3~combout\ & ((\CT|Add0~20_combout\) # (\CT|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~26_combout\,
	datab => \CT|Add0~20_combout\,
	datac => \CT|WideOr3~combout\,
	datad => \CT|LessThan0~7_combout\,
	combout => \CT|LessThan0~8_combout\);

-- Location: LCCOMB_X106_Y36_N22
\CT|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~10_combout\ = (\CT|LessThan0~9_combout\ & ((\CT|LessThan0~1_combout\) # ((\CT|LessThan0~8_combout\) # (!\CT|Add0~42_combout\)))) # (!\CT|LessThan0~9_combout\ & (!\CT|Add0~42_combout\ & ((\CT|LessThan0~1_combout\) # 
-- (\CT|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~1_combout\,
	datab => \CT|LessThan0~9_combout\,
	datac => \CT|Add0~42_combout\,
	datad => \CT|LessThan0~8_combout\,
	combout => \CT|LessThan0~10_combout\);

-- Location: LCCOMB_X106_Y36_N26
\CT|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~11_combout\ = (\CT|Add0~38_combout\) # ((\CT|Add0~40_combout\) # (\CT|LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~38_combout\,
	datab => \CT|Add0~40_combout\,
	datad => \CT|LessThan0~10_combout\,
	combout => \CT|LessThan0~11_combout\);

-- Location: LCCOMB_X106_Y36_N24
\CT|count~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~23_combout\ = (!\CT|Add0~44_combout\ & (\CT|Add0~42_combout\ & (!\CT|WideOr3~combout\ & !\CT|LessThan0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~44_combout\,
	datab => \CT|Add0~42_combout\,
	datac => \CT|WideOr3~combout\,
	datad => \CT|LessThan0~11_combout\,
	combout => \CT|count~23_combout\);

-- Location: FF_X106_Y36_N25
\CT|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~23_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(21));

-- Location: LCCOMB_X107_Y35_N22
\CT|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~44_combout\ = !\CT|Add0~43\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \CT|Add0~43\,
	combout => \CT|Add0~44_combout\);

-- Location: LCCOMB_X106_Y36_N2
\CT|LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~12_combout\ = (\CT|Add0~44_combout\) # ((\CT|Add0~42_combout\ & ((\CT|LessThan0~11_combout\) # (\CT|WideOr3~combout\))) # (!\CT|Add0~42_combout\ & (\CT|LessThan0~11_combout\ & \CT|WideOr3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~44_combout\,
	datab => \CT|Add0~42_combout\,
	datac => \CT|LessThan0~11_combout\,
	datad => \CT|WideOr3~combout\,
	combout => \CT|LessThan0~12_combout\);

-- Location: FF_X105_Y36_N23
\CT|current_state.state_read_blue\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|current_state.state_read_blue~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \CT|LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|current_state.state_read_blue~q\);

-- Location: LCCOMB_X105_Y36_N16
\CT|current_state.state_wait_blue~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|current_state.state_wait_blue~0_combout\ = !\CT|current_state.state_read_blue~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CT|current_state.state_read_blue~q\,
	combout => \CT|current_state.state_wait_blue~0_combout\);

-- Location: FF_X105_Y36_N17
\CT|current_state.state_wait_blue\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|current_state.state_wait_blue~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \CT|LessThan0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|current_state.state_wait_blue~q\);

-- Location: LCCOMB_X105_Y36_N12
\CT|LIGHT_BLUE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LIGHT_BLUE~0_combout\ = (\CT|current_state.state_wait_blue~q\) # (!\CT|current_state.state_read_blue~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CT|current_state.state_wait_blue~q\,
	datad => \CT|current_state.state_read_blue~q\,
	combout => \CT|LIGHT_BLUE~0_combout\);

-- Location: LCCOMB_X105_Y36_N20
\CT|LIGHT_GREEN~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LIGHT_GREEN~0_combout\ = (\CT|current_state.state_read_green~q\) # (\CT|current_state.state_wait_green~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CT|current_state.state_read_green~q\,
	datad => \CT|current_state.state_wait_green~q\,
	combout => \CT|LIGHT_GREEN~0_combout\);

-- Location: LCCOMB_X79_Y36_N26
\LP|lcd_bus~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~6_combout\ = (!\LP|char\(3) & (\LP|char\(2) $ (((\LP|char\(0) & \LP|char\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|char\(1),
	datac => \LP|char\(3),
	datad => \LP|char\(2),
	combout => \LP|lcd_bus~6_combout\);

-- Location: FF_X80_Y36_N7
\LP|char[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \LP|lcd_bus~6_combout\,
	sload => VCC,
	ena => \LP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|char\(2));

-- Location: LCCOMB_X80_Y36_N24
\LP|char~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|char~0_combout\ = (\LP|char\(0) & (!\LP|char\(3) & (\LP|char\(1) & \LP|char\(2)))) # (!\LP|char\(0) & (\LP|char\(3) & (!\LP|char\(1) & !\LP|char\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|char\(3),
	datac => \LP|char\(1),
	datad => \LP|char\(2),
	combout => \LP|char~0_combout\);

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

-- Location: FF_X97_Y4_N23
\DP|RB|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPIO[7]~input_o\,
	sload => VCC,
	ena => \CT|ALT_INV_current_state.state_read_blue~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RB|Q\(7));

-- Location: FF_X97_Y4_N25
\DP|RG|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPIO[7]~input_o\,
	sload => VCC,
	ena => \CT|LIGHT_GREEN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RG|Q\(7));

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

-- Location: FF_X97_Y4_N7
\DP|RG|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPIO[5]~input_o\,
	sload => VCC,
	ena => \CT|LIGHT_GREEN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RG|Q\(6));

-- Location: FF_X97_Y4_N21
\DP|RB|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPIO[5]~input_o\,
	sload => VCC,
	ena => \CT|ALT_INV_current_state.state_read_blue~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RB|Q\(6));

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

-- Location: FF_X97_Y4_N19
\DP|RG|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPIO[3]~input_o\,
	sload => VCC,
	ena => \CT|LIGHT_GREEN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RG|Q\(5));

-- Location: FF_X97_Y4_N1
\DP|RB|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPIO[3]~input_o\,
	sload => VCC,
	ena => \CT|ALT_INV_current_state.state_read_blue~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RB|Q\(5));

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

-- Location: FF_X97_Y4_N27
\DP|RG|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPIO[1]~input_o\,
	sload => VCC,
	ena => \CT|LIGHT_GREEN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RG|Q\(4));

-- Location: FF_X97_Y4_N17
\DP|RB|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPIO[1]~input_o\,
	sload => VCC,
	ena => \CT|ALT_INV_current_state.state_read_blue~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RB|Q\(4));

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

-- Location: LCCOMB_X97_Y4_N4
\DP|RB|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|RB|Q[3]~feeder_combout\ = \GPIO[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO[6]~input_o\,
	combout => \DP|RB|Q[3]~feeder_combout\);

-- Location: FF_X97_Y4_N5
\DP|RB|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DP|RB|Q[3]~feeder_combout\,
	ena => \CT|ALT_INV_current_state.state_read_blue~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RB|Q\(3));

-- Location: FF_X97_Y4_N15
\DP|RG|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPIO[6]~input_o\,
	sload => VCC,
	ena => \CT|LIGHT_GREEN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RG|Q\(3));

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

-- Location: FF_X97_Y4_N13
\DP|RB|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPIO[4]~input_o\,
	sload => VCC,
	ena => \CT|ALT_INV_current_state.state_read_blue~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RB|Q\(2));

-- Location: LCCOMB_X97_Y4_N2
\DP|RG|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|RG|Q[2]~feeder_combout\ = \GPIO[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO[4]~input_o\,
	combout => \DP|RG|Q[2]~feeder_combout\);

-- Location: FF_X97_Y4_N3
\DP|RG|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DP|RG|Q[2]~feeder_combout\,
	ena => \CT|LIGHT_GREEN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RG|Q\(2));

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

-- Location: FF_X97_Y4_N11
\DP|RG|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPIO[2]~input_o\,
	sload => VCC,
	ena => \CT|LIGHT_GREEN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RG|Q\(1));

-- Location: FF_X97_Y4_N29
\DP|RB|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPIO[2]~input_o\,
	sload => VCC,
	ena => \CT|ALT_INV_current_state.state_read_blue~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RB|Q\(1));

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

-- Location: FF_X97_Y4_N31
\DP|RG|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPIO[0]~input_o\,
	sload => VCC,
	ena => \CT|LIGHT_GREEN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RG|Q\(0));

-- Location: FF_X97_Y4_N9
\DP|RB|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPIO[0]~input_o\,
	sload => VCC,
	ena => \CT|ALT_INV_current_state.state_read_blue~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RB|Q\(0));

-- Location: LCCOMB_X97_Y4_N8
\DP|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|LessThan0~1_cout\ = CARRY((\DP|RG|Q\(0) & !\DP|RB|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|RG|Q\(0),
	datab => \DP|RB|Q\(0),
	datad => VCC,
	cout => \DP|LessThan0~1_cout\);

-- Location: LCCOMB_X97_Y4_N10
\DP|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|LessThan0~3_cout\ = CARRY((\DP|RG|Q\(1) & (\DP|RB|Q\(1) & !\DP|LessThan0~1_cout\)) # (!\DP|RG|Q\(1) & ((\DP|RB|Q\(1)) # (!\DP|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|RG|Q\(1),
	datab => \DP|RB|Q\(1),
	datad => VCC,
	cin => \DP|LessThan0~1_cout\,
	cout => \DP|LessThan0~3_cout\);

-- Location: LCCOMB_X97_Y4_N12
\DP|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|LessThan0~5_cout\ = CARRY((\DP|RB|Q\(2) & (\DP|RG|Q\(2) & !\DP|LessThan0~3_cout\)) # (!\DP|RB|Q\(2) & ((\DP|RG|Q\(2)) # (!\DP|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|RB|Q\(2),
	datab => \DP|RG|Q\(2),
	datad => VCC,
	cin => \DP|LessThan0~3_cout\,
	cout => \DP|LessThan0~5_cout\);

-- Location: LCCOMB_X97_Y4_N14
\DP|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|LessThan0~7_cout\ = CARRY((\DP|RB|Q\(3) & ((!\DP|LessThan0~5_cout\) # (!\DP|RG|Q\(3)))) # (!\DP|RB|Q\(3) & (!\DP|RG|Q\(3) & !\DP|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|RB|Q\(3),
	datab => \DP|RG|Q\(3),
	datad => VCC,
	cin => \DP|LessThan0~5_cout\,
	cout => \DP|LessThan0~7_cout\);

-- Location: LCCOMB_X97_Y4_N16
\DP|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|LessThan0~9_cout\ = CARRY((\DP|RG|Q\(4) & ((!\DP|LessThan0~7_cout\) # (!\DP|RB|Q\(4)))) # (!\DP|RG|Q\(4) & (!\DP|RB|Q\(4) & !\DP|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|RG|Q\(4),
	datab => \DP|RB|Q\(4),
	datad => VCC,
	cin => \DP|LessThan0~7_cout\,
	cout => \DP|LessThan0~9_cout\);

-- Location: LCCOMB_X97_Y4_N18
\DP|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|LessThan0~11_cout\ = CARRY((\DP|RG|Q\(5) & (\DP|RB|Q\(5) & !\DP|LessThan0~9_cout\)) # (!\DP|RG|Q\(5) & ((\DP|RB|Q\(5)) # (!\DP|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|RG|Q\(5),
	datab => \DP|RB|Q\(5),
	datad => VCC,
	cin => \DP|LessThan0~9_cout\,
	cout => \DP|LessThan0~11_cout\);

-- Location: LCCOMB_X97_Y4_N20
\DP|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|LessThan0~13_cout\ = CARRY((\DP|RG|Q\(6) & ((!\DP|LessThan0~11_cout\) # (!\DP|RB|Q\(6)))) # (!\DP|RG|Q\(6) & (!\DP|RB|Q\(6) & !\DP|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|RG|Q\(6),
	datab => \DP|RB|Q\(6),
	datad => VCC,
	cin => \DP|LessThan0~11_cout\,
	cout => \DP|LessThan0~13_cout\);

-- Location: LCCOMB_X97_Y4_N22
\DP|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|LessThan0~14_combout\ = (\DP|RB|Q\(7) & (\DP|LessThan0~13_cout\ & \DP|RG|Q\(7))) # (!\DP|RB|Q\(7) & ((\DP|LessThan0~13_cout\) # (\DP|RG|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|RB|Q\(7),
	datad => \DP|RG|Q\(7),
	cin => \DP|LessThan0~13_cout\,
	combout => \DP|LessThan0~14_combout\);

-- Location: LCCOMB_X81_Y36_N30
\LP|char~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|char~3_combout\ = (\LP|char\(0) & (\LP|char~0_combout\ & \DP|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|char~0_combout\,
	datac => \DP|LessThan0~14_combout\,
	combout => \LP|char~3_combout\);

-- Location: FF_X80_Y36_N1
\LP|char[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \LP|char~3_combout\,
	sload => VCC,
	ena => \LP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|char\(3));

-- Location: LCCOMB_X79_Y36_N6
\LP|char~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|char~2_combout\ = (!\LP|char\(3) & !\LP|char\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|char\(3),
	datac => \LP|char\(0),
	combout => \LP|char~2_combout\);

-- Location: FF_X80_Y36_N9
\LP|char[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \LP|char~2_combout\,
	sload => VCC,
	ena => \LP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|char\(0));

-- Location: LCCOMB_X79_Y36_N4
\LP|char~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|char~1_combout\ = (!\LP|char\(3) & (\LP|char\(0) $ (\LP|char\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datac => \LP|char\(3),
	datad => \LP|char\(1),
	combout => \LP|char~1_combout\);

-- Location: FF_X80_Y36_N25
\LP|char[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \LP|char~1_combout\,
	sload => VCC,
	ena => \LP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|char\(1));

-- Location: LCCOMB_X79_Y36_N10
\LP|lcd_clear~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_clear~0_combout\ = (\LP|char\(1)) # ((\LP|char\(3)) # (\LP|char\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|char\(1),
	datac => \LP|char\(3),
	datad => \LP|char\(2),
	combout => \LP|lcd_clear~0_combout\);

-- Location: LCCOMB_X80_Y36_N20
\LP|lcd_clear~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_clear~1_combout\ = (\LP|process_0~0_combout\ & ((\LP|lcd_clear~0_combout\ & (\LP|lcd_clear~q\)) # (!\LP|lcd_clear~0_combout\ & ((!\LP|char\(0)))))) # (!\LP|process_0~0_combout\ & (((\LP|lcd_clear~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|process_0~0_combout\,
	datab => \LP|lcd_clear~0_combout\,
	datac => \LP|lcd_clear~q\,
	datad => \LP|char\(0),
	combout => \LP|lcd_clear~1_combout\);

-- Location: FF_X80_Y36_N21
\LP|lcd_clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|lcd_clear~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|lcd_clear~q\);

-- Location: LCCOMB_X68_Y40_N0
\LP|dut|next_state.S0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|next_state.S0~0_combout\ = (\LP|dut|current_state.S1~q\) # (\LP|lcd_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|current_state.S1~q\,
	datad => \LP|lcd_clear~q\,
	combout => \LP|dut|next_state.S0~0_combout\);

-- Location: FF_X68_Y40_N1
\LP|dut|current_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|next_state.S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|current_state.S0~q\);

-- Location: LCCOMB_X68_Y40_N30
\LP|dut|next_state.S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|next_state.S1~0_combout\ = (\LP|lcd_clear~q\ & !\LP|dut|current_state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|lcd_clear~q\,
	datad => \LP|dut|current_state.S0~q\,
	combout => \LP|dut|next_state.S1~0_combout\);

-- Location: FF_X68_Y40_N31
\LP|dut|current_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|next_state.S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|current_state.S1~q\);

-- Location: LCCOMB_X68_Y41_N0
\LP|dut|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan0~8_combout\ = (!\LP|dut|clk_count\(30) & (!\LP|dut|clk_count\(27) & (!\LP|dut|clk_count\(28) & !\LP|dut|clk_count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(30),
	datab => \LP|dut|clk_count\(27),
	datac => \LP|dut|clk_count\(28),
	datad => \LP|dut|clk_count\(29),
	combout => \LP|dut|LessThan0~8_combout\);

-- Location: LCCOMB_X70_Y42_N28
\LP|dut|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan0~6_combout\ = (!\LP|dut|clk_count\(25) & (!\LP|dut|clk_count\(22) & (!\LP|dut|clk_count\(23) & !\LP|dut|clk_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(25),
	datab => \LP|dut|clk_count\(22),
	datac => \LP|dut|clk_count\(23),
	datad => \LP|dut|clk_count\(24),
	combout => \LP|dut|LessThan0~6_combout\);

-- Location: LCCOMB_X72_Y42_N2
\LP|dut|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan0~7_combout\ = (\LP|dut|LessThan0~6_combout\ & !\LP|dut|clk_count\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|LessThan0~6_combout\,
	datad => \LP|dut|clk_count\(26),
	combout => \LP|dut|LessThan0~7_combout\);

-- Location: LCCOMB_X70_Y42_N18
\LP|dut|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan0~3_combout\ = (!\LP|dut|clk_count\(14) & (!\LP|dut|clk_count\(15) & !\LP|dut|clk_count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(14),
	datac => \LP|dut|clk_count\(15),
	datad => \LP|dut|clk_count\(16),
	combout => \LP|dut|LessThan0~3_combout\);

-- Location: LCCOMB_X72_Y43_N28
\LP|dut|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan0~0_combout\ = (((!\LP|dut|clk_count\(6) & !\LP|dut|clk_count\(5))) # (!\LP|dut|clk_count\(8))) # (!\LP|dut|clk_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(6),
	datab => \LP|dut|clk_count\(5),
	datac => \LP|dut|clk_count\(7),
	datad => \LP|dut|clk_count\(8),
	combout => \LP|dut|LessThan0~0_combout\);

-- Location: LCCOMB_X72_Y43_N30
\LP|dut|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan0~1_combout\ = ((!\LP|dut|clk_count\(9) & \LP|dut|LessThan0~0_combout\)) # (!\LP|dut|clk_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(9),
	datac => \LP|dut|clk_count\(10),
	datad => \LP|dut|LessThan0~0_combout\,
	combout => \LP|dut|LessThan0~1_combout\);

-- Location: LCCOMB_X72_Y42_N28
\LP|dut|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan0~2_combout\ = ((!\LP|dut|clk_count\(11) & (\LP|dut|LessThan0~1_combout\ & !\LP|dut|clk_count\(12)))) # (!\LP|dut|clk_count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(13),
	datab => \LP|dut|clk_count\(11),
	datac => \LP|dut|LessThan0~1_combout\,
	datad => \LP|dut|clk_count\(12),
	combout => \LP|dut|LessThan0~2_combout\);

-- Location: LCCOMB_X72_Y42_N18
\LP|dut|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan0~4_combout\ = (((\LP|dut|LessThan0~3_combout\ & \LP|dut|LessThan0~2_combout\)) # (!\LP|dut|clk_count\(18))) # (!\LP|dut|clk_count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan0~3_combout\,
	datab => \LP|dut|clk_count\(17),
	datac => \LP|dut|clk_count\(18),
	datad => \LP|dut|LessThan0~2_combout\,
	combout => \LP|dut|LessThan0~4_combout\);

-- Location: LCCOMB_X72_Y42_N10
\LP|dut|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan0~5_combout\ = ((!\LP|dut|clk_count\(20) & (!\LP|dut|clk_count\(19) & \LP|dut|LessThan0~4_combout\))) # (!\LP|dut|clk_count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(20),
	datab => \LP|dut|clk_count\(19),
	datac => \LP|dut|clk_count\(21),
	datad => \LP|dut|LessThan0~4_combout\,
	combout => \LP|dut|LessThan0~5_combout\);

-- Location: LCCOMB_X72_Y42_N12
\LP|dut|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan0~9_combout\ = (\LP|dut|clk_count\(31)) # ((\LP|dut|LessThan0~8_combout\ & (\LP|dut|LessThan0~7_combout\ & \LP|dut|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan0~8_combout\,
	datab => \LP|dut|LessThan0~7_combout\,
	datac => \LP|dut|clk_count\(31),
	datad => \LP|dut|LessThan0~5_combout\,
	combout => \LP|dut|LessThan0~9_combout\);

-- Location: LCCOMB_X68_Y40_N26
\LP|dut|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|state~13_combout\ = (!\LP|dut|current_state.S1~q\ & ((\LP|dut|state.power_up~q\) # (!\LP|dut|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|current_state.S1~q\,
	datac => \LP|dut|state.power_up~q\,
	datad => \LP|dut|LessThan0~9_combout\,
	combout => \LP|dut|state~13_combout\);

-- Location: FF_X68_Y40_N27
\LP|dut|state.power_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|state.power_up~q\);

-- Location: LCCOMB_X72_Y42_N30
\LP|dut|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan9~0_combout\ = (!\LP|dut|clk_count\(20) & (!\LP|dut|clk_count\(17) & (!\LP|dut|clk_count\(13) & !\LP|dut|clk_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(20),
	datab => \LP|dut|clk_count\(17),
	datac => \LP|dut|clk_count\(13),
	datad => \LP|dut|clk_count\(19),
	combout => \LP|dut|LessThan9~0_combout\);

-- Location: LCCOMB_X72_Y42_N20
\LP|dut|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan9~1_combout\ = (\LP|dut|LessThan0~3_combout\ & (!\LP|dut|clk_count\(12) & \LP|dut|LessThan9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan0~3_combout\,
	datab => \LP|dut|clk_count\(12),
	datac => \LP|dut|LessThan9~0_combout\,
	combout => \LP|dut|LessThan9~1_combout\);

-- Location: LCCOMB_X72_Y42_N6
\LP|dut|LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan9~2_combout\ = (!\LP|dut|clk_count\(18) & (\LP|dut|LessThan0~7_combout\ & (!\LP|dut|clk_count\(21) & \LP|dut|LessThan9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(18),
	datab => \LP|dut|LessThan0~7_combout\,
	datac => \LP|dut|clk_count\(21),
	datad => \LP|dut|LessThan9~1_combout\,
	combout => \LP|dut|LessThan9~2_combout\);

-- Location: LCCOMB_X70_Y43_N0
\LP|dut|LessThan9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan9~4_combout\ = ((!\LP|dut|clk_count\(8)) # (!\LP|dut|clk_count\(7))) # (!\LP|dut|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(6),
	datac => \LP|dut|clk_count\(7),
	datad => \LP|dut|clk_count\(8),
	combout => \LP|dut|LessThan9~4_combout\);

-- Location: LCCOMB_X70_Y43_N18
\LP|dut|LessThan9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan9~3_combout\ = (!\LP|dut|clk_count\(3) & (!\LP|dut|clk_count\(2) & (!\LP|dut|clk_count\(4) & !\LP|dut|clk_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(3),
	datab => \LP|dut|clk_count\(2),
	datac => \LP|dut|clk_count\(4),
	datad => \LP|dut|clk_count\(5),
	combout => \LP|dut|LessThan9~3_combout\);

-- Location: LCCOMB_X70_Y43_N30
\LP|dut|LessThan9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan9~5_combout\ = (!\LP|dut|clk_count\(9) & (!\LP|dut|clk_count\(10) & ((\LP|dut|LessThan9~4_combout\) # (\LP|dut|LessThan9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(9),
	datab => \LP|dut|LessThan9~4_combout\,
	datac => \LP|dut|clk_count\(10),
	datad => \LP|dut|LessThan9~3_combout\,
	combout => \LP|dut|LessThan9~5_combout\);

-- Location: LCCOMB_X70_Y42_N22
\LP|dut|LessThan9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan9~6_combout\ = (\LP|dut|LessThan0~8_combout\ & (\LP|dut|LessThan9~2_combout\ & ((\LP|dut|LessThan9~5_combout\) # (!\LP|dut|clk_count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan0~8_combout\,
	datab => \LP|dut|clk_count\(11),
	datac => \LP|dut|LessThan9~2_combout\,
	datad => \LP|dut|LessThan9~5_combout\,
	combout => \LP|dut|LessThan9~6_combout\);

-- Location: LCCOMB_X66_Y43_N2
\LP|dut|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan8~0_combout\ = (\LP|dut|Add0~8_combout\ & \LP|dut|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~8_combout\,
	datad => \LP|dut|Add0~10_combout\,
	combout => \LP|dut|LessThan8~0_combout\);

-- Location: LCCOMB_X66_Y43_N14
\LP|dut|LessThan8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan8~2_combout\ = (((!\LP|dut|Add0~12_combout\ & !\LP|dut|LessThan8~0_combout\)) # (!\LP|dut|Add0~14_combout\)) # (!\LP|dut|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~16_combout\,
	datab => \LP|dut|Add0~12_combout\,
	datac => \LP|dut|Add0~14_combout\,
	datad => \LP|dut|LessThan8~0_combout\,
	combout => \LP|dut|LessThan8~2_combout\);

-- Location: LCCOMB_X68_Y43_N24
\LP|dut|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~4_combout\ = (\LP|dut|Add0~20_combout\ & \LP|dut|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~20_combout\,
	datad => \LP|dut|Add0~22_combout\,
	combout => \LP|dut|LessThan3~4_combout\);

-- Location: LCCOMB_X66_Y43_N8
\LP|dut|LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan8~1_combout\ = (!\LP|dut|Add0~24_combout\ & !\LP|dut|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~24_combout\,
	datad => \LP|dut|Add0~28_combout\,
	combout => \LP|dut|LessThan8~1_combout\);

-- Location: LCCOMB_X66_Y43_N0
\LP|dut|LessThan8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan8~3_combout\ = (\LP|dut|LessThan8~1_combout\ & (((!\LP|dut|Add0~18_combout\ & \LP|dut|LessThan8~2_combout\)) # (!\LP|dut|LessThan3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~18_combout\,
	datab => \LP|dut|LessThan8~2_combout\,
	datac => \LP|dut|LessThan3~4_combout\,
	datad => \LP|dut|LessThan8~1_combout\,
	combout => \LP|dut|LessThan8~3_combout\);

-- Location: LCCOMB_X68_Y43_N28
\LP|dut|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan6~2_combout\ = (!\LP|dut|Add0~6_combout\ & (!\LP|dut|Add0~10_combout\ & (!\LP|dut|Add0~8_combout\ & !\LP|dut|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~6_combout\,
	datab => \LP|dut|Add0~10_combout\,
	datac => \LP|dut|Add0~8_combout\,
	datad => \LP|dut|Add0~4_combout\,
	combout => \LP|dut|LessThan6~2_combout\);

-- Location: LCCOMB_X67_Y43_N20
\LP|dut|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan6~3_combout\ = (!\LP|dut|Add0~16_combout\ & (!\LP|dut|Add0~12_combout\ & (!\LP|dut|Add0~14_combout\ & \LP|dut|LessThan6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~16_combout\,
	datab => \LP|dut|Add0~12_combout\,
	datac => \LP|dut|Add0~14_combout\,
	datad => \LP|dut|LessThan6~2_combout\,
	combout => \LP|dut|LessThan6~3_combout\);

-- Location: LCCOMB_X68_Y42_N28
\LP|dut|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan6~0_combout\ = (\LP|dut|Add0~32_combout\ & (\LP|dut|Add0~30_combout\ & ((\LP|dut|Add0~26_combout\) # (\LP|dut|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~26_combout\,
	datab => \LP|dut|Add0~32_combout\,
	datac => \LP|dut|Add0~30_combout\,
	datad => \LP|dut|Add0~28_combout\,
	combout => \LP|dut|LessThan6~0_combout\);

-- Location: LCCOMB_X66_Y43_N12
\LP|dut|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan1~0_combout\ = (!\LP|dut|Add0~18_combout\ & (!\LP|dut|Add0~20_combout\ & (!\LP|dut|Add0~24_combout\ & !\LP|dut|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~18_combout\,
	datab => \LP|dut|Add0~20_combout\,
	datac => \LP|dut|Add0~24_combout\,
	datad => \LP|dut|Add0~22_combout\,
	combout => \LP|dut|LessThan1~0_combout\);

-- Location: LCCOMB_X66_Y43_N10
\LP|dut|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan6~1_combout\ = (!\LP|dut|Add0~28_combout\ & \LP|dut|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~28_combout\,
	datad => \LP|dut|LessThan1~0_combout\,
	combout => \LP|dut|LessThan6~1_combout\);

-- Location: LCCOMB_X66_Y43_N4
\LP|dut|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan7~0_combout\ = (\LP|dut|Add0~16_combout\ & (\LP|dut|Add0~12_combout\ & (\LP|dut|Add0~14_combout\ & \LP|dut|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~16_combout\,
	datab => \LP|dut|Add0~12_combout\,
	datac => \LP|dut|Add0~14_combout\,
	datad => \LP|dut|LessThan8~0_combout\,
	combout => \LP|dut|LessThan7~0_combout\);

-- Location: LCCOMB_X66_Y43_N6
\LP|dut|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan7~1_combout\ = (!\LP|dut|Add0~28_combout\ & (\LP|dut|LessThan1~0_combout\ & ((!\LP|dut|LessThan7~0_combout\) # (!\LP|dut|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~6_combout\,
	datab => \LP|dut|Add0~28_combout\,
	datac => \LP|dut|LessThan7~0_combout\,
	datad => \LP|dut|LessThan1~0_combout\,
	combout => \LP|dut|LessThan7~1_combout\);

-- Location: LCCOMB_X67_Y42_N14
\LP|dut|lcd_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|lcd_data[0]~0_combout\ = (\LP|dut|LessThan6~0_combout\ & (!\LP|dut|LessThan7~1_combout\ & ((!\LP|dut|LessThan6~1_combout\) # (!\LP|dut|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan6~3_combout\,
	datab => \LP|dut|LessThan6~0_combout\,
	datac => \LP|dut|LessThan6~1_combout\,
	datad => \LP|dut|LessThan7~1_combout\,
	combout => \LP|dut|lcd_data[0]~0_combout\);

-- Location: LCCOMB_X68_Y42_N18
\LP|dut|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~1_combout\ = (!\LP|dut|Add0~42_combout\ & (!\LP|dut|Add0~46_combout\ & (!\LP|dut|Add0~44_combout\ & !\LP|dut|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~42_combout\,
	datab => \LP|dut|Add0~46_combout\,
	datac => \LP|dut|Add0~44_combout\,
	datad => \LP|dut|Add0~48_combout\,
	combout => \LP|dut|LessThan3~1_combout\);

-- Location: LCCOMB_X70_Y42_N26
\LP|dut|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~0_combout\ = (!\LP|dut|Add0~34_combout\ & (!\LP|dut|Add0~38_combout\ & (!\LP|dut|Add0~36_combout\ & !\LP|dut|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~34_combout\,
	datab => \LP|dut|Add0~38_combout\,
	datac => \LP|dut|Add0~36_combout\,
	datad => \LP|dut|Add0~40_combout\,
	combout => \LP|dut|LessThan3~0_combout\);

-- Location: LCCOMB_X68_Y42_N20
\LP|dut|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~2_combout\ = (\LP|dut|Add0~52_combout\) # ((\LP|dut|Add0~50_combout\) # ((\LP|dut|Add0~56_combout\) # (\LP|dut|Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~52_combout\,
	datab => \LP|dut|Add0~50_combout\,
	datac => \LP|dut|Add0~56_combout\,
	datad => \LP|dut|Add0~58_combout\,
	combout => \LP|dut|LessThan3~2_combout\);

-- Location: LCCOMB_X68_Y42_N2
\LP|dut|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~3_combout\ = (!\LP|dut|Add0~54_combout\ & (\LP|dut|LessThan3~1_combout\ & (\LP|dut|LessThan3~0_combout\ & !\LP|dut|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~54_combout\,
	datab => \LP|dut|LessThan3~1_combout\,
	datac => \LP|dut|LessThan3~0_combout\,
	datad => \LP|dut|LessThan3~2_combout\,
	combout => \LP|dut|LessThan3~3_combout\);

-- Location: LCCOMB_X67_Y42_N8
\LP|dut|lcd_data[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|lcd_data[0]~1_combout\ = (\LP|dut|Add0~60_combout\) # (((!\LP|dut|LessThan8~3_combout\ & \LP|dut|lcd_data[0]~0_combout\)) # (!\LP|dut|LessThan3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~60_combout\,
	datab => \LP|dut|LessThan8~3_combout\,
	datac => \LP|dut|lcd_data[0]~0_combout\,
	datad => \LP|dut|LessThan3~3_combout\,
	combout => \LP|dut|lcd_data[0]~1_combout\);

-- Location: LCCOMB_X68_Y43_N10
\LP|dut|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan4~0_combout\ = ((!\LP|dut|Add0~18_combout\) # (!\LP|dut|Add0~20_combout\)) # (!\LP|dut|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~16_combout\,
	datac => \LP|dut|Add0~20_combout\,
	datad => \LP|dut|Add0~18_combout\,
	combout => \LP|dut|LessThan4~0_combout\);

-- Location: LCCOMB_X68_Y43_N8
\LP|dut|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan4~1_combout\ = (\LP|dut|Add0~8_combout\ & (\LP|dut|Add0~12_combout\ & \LP|dut|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~8_combout\,
	datac => \LP|dut|Add0~12_combout\,
	datad => \LP|dut|Add0~10_combout\,
	combout => \LP|dut|LessThan4~1_combout\);

-- Location: LCCOMB_X68_Y43_N18
\LP|dut|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan4~2_combout\ = (!\LP|dut|Add0~22_combout\ & ((\LP|dut|LessThan4~0_combout\) # ((!\LP|dut|Add0~14_combout\ & !\LP|dut|LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan4~0_combout\,
	datab => \LP|dut|Add0~14_combout\,
	datac => \LP|dut|LessThan4~1_combout\,
	datad => \LP|dut|Add0~22_combout\,
	combout => \LP|dut|LessThan4~2_combout\);

-- Location: LCCOMB_X68_Y42_N8
\LP|dut|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~5_combout\ = (!\LP|dut|Add0~26_combout\ & (!\LP|dut|Add0~32_combout\ & (!\LP|dut|Add0~30_combout\ & !\LP|dut|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~26_combout\,
	datab => \LP|dut|Add0~32_combout\,
	datac => \LP|dut|Add0~30_combout\,
	datad => \LP|dut|Add0~28_combout\,
	combout => \LP|dut|LessThan3~5_combout\);

-- Location: LCCOMB_X68_Y42_N30
\LP|dut|busy~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|busy~5_combout\ = (!\LP|dut|Add0~56_combout\ & !\LP|dut|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~56_combout\,
	datad => \LP|dut|Add0~58_combout\,
	combout => \LP|dut|busy~5_combout\);

-- Location: LCCOMB_X67_Y42_N6
\LP|dut|LessThan3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~12_combout\ = (!\LP|dut|Add0~52_combout\ & (!\LP|dut|Add0~50_combout\ & (!\LP|dut|Add0~54_combout\ & \LP|dut|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~52_combout\,
	datab => \LP|dut|Add0~50_combout\,
	datac => \LP|dut|Add0~54_combout\,
	datad => \LP|dut|LessThan3~1_combout\,
	combout => \LP|dut|LessThan3~12_combout\);

-- Location: LCCOMB_X67_Y42_N4
\LP|dut|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~13_combout\ = (\LP|dut|LessThan3~0_combout\ & (\LP|dut|LessThan3~5_combout\ & (\LP|dut|busy~5_combout\ & \LP|dut|LessThan3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan3~0_combout\,
	datab => \LP|dut|LessThan3~5_combout\,
	datac => \LP|dut|busy~5_combout\,
	datad => \LP|dut|LessThan3~12_combout\,
	combout => \LP|dut|LessThan3~13_combout\);

-- Location: LCCOMB_X67_Y42_N22
\LP|dut|LessThan4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan4~4_combout\ = (\LP|dut|LessThan3~13_combout\ & (!\LP|dut|Add0~60_combout\ & ((\LP|dut|LessThan4~2_combout\) # (!\LP|dut|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~24_combout\,
	datab => \LP|dut|LessThan4~2_combout\,
	datac => \LP|dut|LessThan3~13_combout\,
	datad => \LP|dut|Add0~60_combout\,
	combout => \LP|dut|LessThan4~4_combout\);

-- Location: LCCOMB_X66_Y43_N18
\LP|dut|LessThan6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan6~4_combout\ = (!\LP|dut|Add0~4_combout\ & (!\LP|dut|Add0~8_combout\ & !\LP|dut|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~4_combout\,
	datac => \LP|dut|Add0~8_combout\,
	datad => \LP|dut|Add0~6_combout\,
	combout => \LP|dut|LessThan6~4_combout\);

-- Location: LCCOMB_X66_Y43_N16
\LP|dut|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan5~0_combout\ = (!\LP|dut|Add0~14_combout\ & (((\LP|dut|LessThan6~4_combout\) # (!\LP|dut|Add0~12_combout\)) # (!\LP|dut|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~10_combout\,
	datab => \LP|dut|Add0~14_combout\,
	datac => \LP|dut|Add0~12_combout\,
	datad => \LP|dut|LessThan6~4_combout\,
	combout => \LP|dut|LessThan5~0_combout\);

-- Location: LCCOMB_X66_Y43_N26
\LP|dut|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan5~1_combout\ = (!\LP|dut|Add0~20_combout\ & (!\LP|dut|Add0~18_combout\ & ((\LP|dut|LessThan5~0_combout\) # (!\LP|dut|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~16_combout\,
	datab => \LP|dut|Add0~20_combout\,
	datac => \LP|dut|Add0~18_combout\,
	datad => \LP|dut|LessThan5~0_combout\,
	combout => \LP|dut|LessThan5~1_combout\);

-- Location: LCCOMB_X66_Y43_N24
\LP|dut|clk_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|clk_count~3_combout\ = ((\LP|dut|LessThan5~1_combout\) # (!\LP|dut|Add0~22_combout\)) # (!\LP|dut|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~24_combout\,
	datab => \LP|dut|Add0~22_combout\,
	datac => \LP|dut|LessThan5~1_combout\,
	combout => \LP|dut|clk_count~3_combout\);

-- Location: LCCOMB_X66_Y43_N28
\LP|dut|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan1~1_combout\ = (\LP|dut|LessThan1~0_combout\ & (((!\LP|dut|Add0~6_combout\ & !\LP|dut|Add0~4_combout\)) # (!\LP|dut|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~6_combout\,
	datab => \LP|dut|Add0~4_combout\,
	datac => \LP|dut|LessThan7~0_combout\,
	datad => \LP|dut|LessThan1~0_combout\,
	combout => \LP|dut|LessThan1~1_combout\);

-- Location: LCCOMB_X70_Y42_N16
\LP|dut|LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~6_combout\ = (\LP|dut|LessThan3~0_combout\ & !\LP|dut|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|LessThan3~0_combout\,
	datad => \LP|dut|Add0~50_combout\,
	combout => \LP|dut|LessThan3~6_combout\);

-- Location: LCCOMB_X67_Y42_N18
\LP|dut|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~7_combout\ = (!\LP|dut|Add0~54_combout\ & (\LP|dut|LessThan3~1_combout\ & (!\LP|dut|Add0~52_combout\ & \LP|dut|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~54_combout\,
	datab => \LP|dut|LessThan3~1_combout\,
	datac => \LP|dut|Add0~52_combout\,
	datad => \LP|dut|LessThan3~6_combout\,
	combout => \LP|dut|LessThan3~7_combout\);

-- Location: LCCOMB_X67_Y42_N28
\LP|dut|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan1~2_combout\ = (\LP|dut|busy~5_combout\ & (\LP|dut|LessThan3~5_combout\ & (\LP|dut|LessThan1~1_combout\ & \LP|dut|LessThan3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|busy~5_combout\,
	datab => \LP|dut|LessThan3~5_combout\,
	datac => \LP|dut|LessThan1~1_combout\,
	datad => \LP|dut|LessThan3~7_combout\,
	combout => \LP|dut|LessThan1~2_combout\);

-- Location: LCCOMB_X67_Y42_N10
\LP|dut|clk_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|clk_count~4_combout\ = (!\LP|dut|Add0~60_combout\ & ((\LP|dut|LessThan1~2_combout\) # ((\LP|dut|clk_count~3_combout\ & \LP|dut|LessThan3~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~60_combout\,
	datab => \LP|dut|clk_count~3_combout\,
	datac => \LP|dut|LessThan3~13_combout\,
	datad => \LP|dut|LessThan1~2_combout\,
	combout => \LP|dut|clk_count~4_combout\);

-- Location: LCCOMB_X67_Y42_N24
\LP|dut|clk_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|clk_count~5_combout\ = (\LP|dut|Add0~62_combout\) # (((\LP|dut|LessThan4~4_combout\) # (\LP|dut|clk_count~4_combout\)) # (!\LP|dut|lcd_data[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~62_combout\,
	datab => \LP|dut|lcd_data[0]~1_combout\,
	datac => \LP|dut|LessThan4~4_combout\,
	datad => \LP|dut|clk_count~4_combout\,
	combout => \LP|dut|clk_count~5_combout\);

-- Location: LCCOMB_X67_Y42_N2
\LP|dut|clk_count[23]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|clk_count[23]~7_combout\ = (\LP|dut|state.send~q\ & ((\LP|dut|clk_count\(31)) # ((\LP|dut|LessThan9~6_combout\)))) # (!\LP|dut|state.send~q\ & (((\LP|dut|clk_count~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(31),
	datab => \LP|dut|state.send~q\,
	datac => \LP|dut|LessThan9~6_combout\,
	datad => \LP|dut|clk_count~5_combout\,
	combout => \LP|dut|clk_count[23]~7_combout\);

-- Location: LCCOMB_X67_Y42_N26
\LP|dut|clk_count[23]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|clk_count[23]~6_combout\ = (!\LP|dut|state.ready~q\ & ((\LP|dut|state.power_up~q\ & ((\LP|dut|clk_count[23]~7_combout\))) # (!\LP|dut|state.power_up~q\ & (\LP|dut|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|state.ready~q\,
	datab => \LP|dut|state.power_up~q\,
	datac => \LP|dut|LessThan0~9_combout\,
	datad => \LP|dut|clk_count[23]~7_combout\,
	combout => \LP|dut|clk_count[23]~6_combout\);

-- Location: LCCOMB_X69_Y43_N0
\LP|dut|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~0_combout\ = \LP|dut|clk_count\(0) $ (VCC)
-- \LP|dut|Add0~1\ = CARRY(\LP|dut|clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(0),
	datad => VCC,
	combout => \LP|dut|Add0~0_combout\,
	cout => \LP|dut|Add0~1\);

-- Location: LCCOMB_X68_Y42_N0
\LP|dut|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector33~0_combout\ = (\LP|dut|clk_count[23]~6_combout\ & \LP|dut|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|clk_count[23]~6_combout\,
	datad => \LP|dut|Add0~0_combout\,
	combout => \LP|dut|Selector33~0_combout\);

-- Location: FF_X68_Y42_N1
\LP|dut|clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(0));

-- Location: LCCOMB_X69_Y43_N2
\LP|dut|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~2_combout\ = (\LP|dut|clk_count\(1) & (!\LP|dut|Add0~1\)) # (!\LP|dut|clk_count\(1) & ((\LP|dut|Add0~1\) # (GND)))
-- \LP|dut|Add0~3\ = CARRY((!\LP|dut|Add0~1\) # (!\LP|dut|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(1),
	datad => VCC,
	cin => \LP|dut|Add0~1\,
	combout => \LP|dut|Add0~2_combout\,
	cout => \LP|dut|Add0~3\);

-- Location: LCCOMB_X70_Y42_N0
\LP|dut|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector32~0_combout\ = (\LP|dut|Add0~2_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~2_combout\,
	datac => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector32~0_combout\);

-- Location: FF_X70_Y42_N1
\LP|dut|clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(1));

-- Location: LCCOMB_X69_Y43_N4
\LP|dut|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~4_combout\ = (\LP|dut|clk_count\(2) & (\LP|dut|Add0~3\ $ (GND))) # (!\LP|dut|clk_count\(2) & (!\LP|dut|Add0~3\ & VCC))
-- \LP|dut|Add0~5\ = CARRY((\LP|dut|clk_count\(2) & !\LP|dut|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(2),
	datad => VCC,
	cin => \LP|dut|Add0~3\,
	combout => \LP|dut|Add0~4_combout\,
	cout => \LP|dut|Add0~5\);

-- Location: LCCOMB_X70_Y42_N14
\LP|dut|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector31~0_combout\ = (\LP|dut|Add0~4_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~4_combout\,
	datac => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector31~0_combout\);

-- Location: FF_X70_Y42_N15
\LP|dut|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(2));

-- Location: LCCOMB_X69_Y43_N6
\LP|dut|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~6_combout\ = (\LP|dut|clk_count\(3) & (!\LP|dut|Add0~5\)) # (!\LP|dut|clk_count\(3) & ((\LP|dut|Add0~5\) # (GND)))
-- \LP|dut|Add0~7\ = CARRY((!\LP|dut|Add0~5\) # (!\LP|dut|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(3),
	datad => VCC,
	cin => \LP|dut|Add0~5\,
	combout => \LP|dut|Add0~6_combout\,
	cout => \LP|dut|Add0~7\);

-- Location: LCCOMB_X68_Y43_N14
\LP|dut|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector30~0_combout\ = (\LP|dut|Add0~6_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~6_combout\,
	datad => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector30~0_combout\);

-- Location: FF_X68_Y43_N15
\LP|dut|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(3));

-- Location: LCCOMB_X69_Y43_N8
\LP|dut|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~8_combout\ = (\LP|dut|clk_count\(4) & (\LP|dut|Add0~7\ $ (GND))) # (!\LP|dut|clk_count\(4) & (!\LP|dut|Add0~7\ & VCC))
-- \LP|dut|Add0~9\ = CARRY((\LP|dut|clk_count\(4) & !\LP|dut|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(4),
	datad => VCC,
	cin => \LP|dut|Add0~7\,
	combout => \LP|dut|Add0~8_combout\,
	cout => \LP|dut|Add0~9\);

-- Location: LCCOMB_X68_Y43_N0
\LP|dut|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector29~0_combout\ = (\LP|dut|Add0~8_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~8_combout\,
	datad => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector29~0_combout\);

-- Location: FF_X68_Y43_N1
\LP|dut|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(4));

-- Location: LCCOMB_X69_Y43_N10
\LP|dut|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~10_combout\ = (\LP|dut|clk_count\(5) & (!\LP|dut|Add0~9\)) # (!\LP|dut|clk_count\(5) & ((\LP|dut|Add0~9\) # (GND)))
-- \LP|dut|Add0~11\ = CARRY((!\LP|dut|Add0~9\) # (!\LP|dut|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(5),
	datad => VCC,
	cin => \LP|dut|Add0~9\,
	combout => \LP|dut|Add0~10_combout\,
	cout => \LP|dut|Add0~11\);

-- Location: LCCOMB_X68_Y43_N20
\LP|dut|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector28~0_combout\ = (\LP|dut|Add0~10_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~10_combout\,
	datad => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector28~0_combout\);

-- Location: FF_X68_Y43_N21
\LP|dut|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(5));

-- Location: LCCOMB_X69_Y43_N12
\LP|dut|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~12_combout\ = (\LP|dut|clk_count\(6) & (\LP|dut|Add0~11\ $ (GND))) # (!\LP|dut|clk_count\(6) & (!\LP|dut|Add0~11\ & VCC))
-- \LP|dut|Add0~13\ = CARRY((\LP|dut|clk_count\(6) & !\LP|dut|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(6),
	datad => VCC,
	cin => \LP|dut|Add0~11\,
	combout => \LP|dut|Add0~12_combout\,
	cout => \LP|dut|Add0~13\);

-- Location: LCCOMB_X68_Y43_N26
\LP|dut|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector27~0_combout\ = (\LP|dut|Add0~12_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~12_combout\,
	datad => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector27~0_combout\);

-- Location: FF_X68_Y43_N27
\LP|dut|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(6));

-- Location: LCCOMB_X69_Y43_N14
\LP|dut|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~14_combout\ = (\LP|dut|clk_count\(7) & (!\LP|dut|Add0~13\)) # (!\LP|dut|clk_count\(7) & ((\LP|dut|Add0~13\) # (GND)))
-- \LP|dut|Add0~15\ = CARRY((!\LP|dut|Add0~13\) # (!\LP|dut|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(7),
	datad => VCC,
	cin => \LP|dut|Add0~13\,
	combout => \LP|dut|Add0~14_combout\,
	cout => \LP|dut|Add0~15\);

-- Location: LCCOMB_X68_Y43_N4
\LP|dut|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector26~0_combout\ = (\LP|dut|Add0~14_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~14_combout\,
	datad => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector26~0_combout\);

-- Location: FF_X68_Y43_N5
\LP|dut|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(7));

-- Location: LCCOMB_X69_Y43_N16
\LP|dut|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~16_combout\ = (\LP|dut|clk_count\(8) & (\LP|dut|Add0~15\ $ (GND))) # (!\LP|dut|clk_count\(8) & (!\LP|dut|Add0~15\ & VCC))
-- \LP|dut|Add0~17\ = CARRY((\LP|dut|clk_count\(8) & !\LP|dut|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(8),
	datad => VCC,
	cin => \LP|dut|Add0~15\,
	combout => \LP|dut|Add0~16_combout\,
	cout => \LP|dut|Add0~17\);

-- Location: LCCOMB_X68_Y43_N22
\LP|dut|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector25~0_combout\ = (\LP|dut|Add0~16_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~16_combout\,
	datad => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector25~0_combout\);

-- Location: FF_X68_Y43_N23
\LP|dut|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(8));

-- Location: LCCOMB_X69_Y43_N18
\LP|dut|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~18_combout\ = (\LP|dut|clk_count\(9) & (!\LP|dut|Add0~17\)) # (!\LP|dut|clk_count\(9) & ((\LP|dut|Add0~17\) # (GND)))
-- \LP|dut|Add0~19\ = CARRY((!\LP|dut|Add0~17\) # (!\LP|dut|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(9),
	datad => VCC,
	cin => \LP|dut|Add0~17\,
	combout => \LP|dut|Add0~18_combout\,
	cout => \LP|dut|Add0~19\);

-- Location: LCCOMB_X68_Y43_N16
\LP|dut|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector24~0_combout\ = (\LP|dut|Add0~18_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~18_combout\,
	datad => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector24~0_combout\);

-- Location: FF_X68_Y43_N17
\LP|dut|clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(9));

-- Location: LCCOMB_X69_Y43_N20
\LP|dut|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~20_combout\ = (\LP|dut|clk_count\(10) & (\LP|dut|Add0~19\ $ (GND))) # (!\LP|dut|clk_count\(10) & (!\LP|dut|Add0~19\ & VCC))
-- \LP|dut|Add0~21\ = CARRY((\LP|dut|clk_count\(10) & !\LP|dut|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(10),
	datad => VCC,
	cin => \LP|dut|Add0~19\,
	combout => \LP|dut|Add0~20_combout\,
	cout => \LP|dut|Add0~21\);

-- Location: LCCOMB_X68_Y43_N2
\LP|dut|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector23~0_combout\ = (\LP|dut|Add0~20_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~20_combout\,
	datad => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector23~0_combout\);

-- Location: FF_X68_Y43_N3
\LP|dut|clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(10));

-- Location: LCCOMB_X69_Y43_N22
\LP|dut|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~22_combout\ = (\LP|dut|clk_count\(11) & (!\LP|dut|Add0~21\)) # (!\LP|dut|clk_count\(11) & ((\LP|dut|Add0~21\) # (GND)))
-- \LP|dut|Add0~23\ = CARRY((!\LP|dut|Add0~21\) # (!\LP|dut|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(11),
	datad => VCC,
	cin => \LP|dut|Add0~21\,
	combout => \LP|dut|Add0~22_combout\,
	cout => \LP|dut|Add0~23\);

-- Location: LCCOMB_X70_Y42_N20
\LP|dut|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector22~0_combout\ = (\LP|dut|Add0~22_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~22_combout\,
	datac => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector22~0_combout\);

-- Location: FF_X70_Y42_N21
\LP|dut|clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(11));

-- Location: LCCOMB_X69_Y43_N24
\LP|dut|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~24_combout\ = (\LP|dut|clk_count\(12) & (\LP|dut|Add0~23\ $ (GND))) # (!\LP|dut|clk_count\(12) & (!\LP|dut|Add0~23\ & VCC))
-- \LP|dut|Add0~25\ = CARRY((\LP|dut|clk_count\(12) & !\LP|dut|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(12),
	datad => VCC,
	cin => \LP|dut|Add0~23\,
	combout => \LP|dut|Add0~24_combout\,
	cout => \LP|dut|Add0~25\);

-- Location: LCCOMB_X72_Y42_N0
\LP|dut|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector21~0_combout\ = (\LP|dut|Add0~24_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~24_combout\,
	datad => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector21~0_combout\);

-- Location: FF_X72_Y42_N1
\LP|dut|clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(12));

-- Location: LCCOMB_X69_Y43_N26
\LP|dut|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~26_combout\ = (\LP|dut|clk_count\(13) & (!\LP|dut|Add0~25\)) # (!\LP|dut|clk_count\(13) & ((\LP|dut|Add0~25\) # (GND)))
-- \LP|dut|Add0~27\ = CARRY((!\LP|dut|Add0~25\) # (!\LP|dut|clk_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(13),
	datad => VCC,
	cin => \LP|dut|Add0~25\,
	combout => \LP|dut|Add0~26_combout\,
	cout => \LP|dut|Add0~27\);

-- Location: LCCOMB_X72_Y42_N22
\LP|dut|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector20~0_combout\ = (\LP|dut|Add0~26_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~26_combout\,
	datad => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector20~0_combout\);

-- Location: FF_X72_Y42_N23
\LP|dut|clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(13));

-- Location: LCCOMB_X69_Y43_N28
\LP|dut|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~28_combout\ = (\LP|dut|clk_count\(14) & (\LP|dut|Add0~27\ $ (GND))) # (!\LP|dut|clk_count\(14) & (!\LP|dut|Add0~27\ & VCC))
-- \LP|dut|Add0~29\ = CARRY((\LP|dut|clk_count\(14) & !\LP|dut|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(14),
	datad => VCC,
	cin => \LP|dut|Add0~27\,
	combout => \LP|dut|Add0~28_combout\,
	cout => \LP|dut|Add0~29\);

-- Location: LCCOMB_X70_Y42_N30
\LP|dut|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector19~0_combout\ = (\LP|dut|Add0~28_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~28_combout\,
	datac => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector19~0_combout\);

-- Location: FF_X70_Y42_N31
\LP|dut|clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(14));

-- Location: LCCOMB_X69_Y43_N30
\LP|dut|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~30_combout\ = (\LP|dut|clk_count\(15) & (!\LP|dut|Add0~29\)) # (!\LP|dut|clk_count\(15) & ((\LP|dut|Add0~29\) # (GND)))
-- \LP|dut|Add0~31\ = CARRY((!\LP|dut|Add0~29\) # (!\LP|dut|clk_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(15),
	datad => VCC,
	cin => \LP|dut|Add0~29\,
	combout => \LP|dut|Add0~30_combout\,
	cout => \LP|dut|Add0~31\);

-- Location: LCCOMB_X68_Y42_N14
\LP|dut|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector18~0_combout\ = (\LP|dut|Add0~30_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~30_combout\,
	datac => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector18~0_combout\);

-- Location: FF_X68_Y42_N15
\LP|dut|clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(15));

-- Location: LCCOMB_X69_Y42_N0
\LP|dut|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~32_combout\ = (\LP|dut|clk_count\(16) & (\LP|dut|Add0~31\ $ (GND))) # (!\LP|dut|clk_count\(16) & (!\LP|dut|Add0~31\ & VCC))
-- \LP|dut|Add0~33\ = CARRY((\LP|dut|clk_count\(16) & !\LP|dut|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(16),
	datad => VCC,
	cin => \LP|dut|Add0~31\,
	combout => \LP|dut|Add0~32_combout\,
	cout => \LP|dut|Add0~33\);

-- Location: LCCOMB_X70_Y42_N12
\LP|dut|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector17~0_combout\ = (\LP|dut|Add0~32_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~32_combout\,
	datac => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector17~0_combout\);

-- Location: FF_X70_Y42_N13
\LP|dut|clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(16));

-- Location: LCCOMB_X69_Y42_N2
\LP|dut|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~34_combout\ = (\LP|dut|clk_count\(17) & (!\LP|dut|Add0~33\)) # (!\LP|dut|clk_count\(17) & ((\LP|dut|Add0~33\) # (GND)))
-- \LP|dut|Add0~35\ = CARRY((!\LP|dut|Add0~33\) # (!\LP|dut|clk_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(17),
	datad => VCC,
	cin => \LP|dut|Add0~33\,
	combout => \LP|dut|Add0~34_combout\,
	cout => \LP|dut|Add0~35\);

-- Location: LCCOMB_X72_Y42_N14
\LP|dut|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector16~0_combout\ = (\LP|dut|Add0~34_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~34_combout\,
	datad => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector16~0_combout\);

-- Location: FF_X72_Y42_N15
\LP|dut|clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(17));

-- Location: LCCOMB_X69_Y42_N4
\LP|dut|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~36_combout\ = (\LP|dut|clk_count\(18) & (\LP|dut|Add0~35\ $ (GND))) # (!\LP|dut|clk_count\(18) & (!\LP|dut|Add0~35\ & VCC))
-- \LP|dut|Add0~37\ = CARRY((\LP|dut|clk_count\(18) & !\LP|dut|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(18),
	datad => VCC,
	cin => \LP|dut|Add0~35\,
	combout => \LP|dut|Add0~36_combout\,
	cout => \LP|dut|Add0~37\);

-- Location: LCCOMB_X72_Y42_N8
\LP|dut|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector15~0_combout\ = (\LP|dut|Add0~36_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~36_combout\,
	datad => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector15~0_combout\);

-- Location: FF_X72_Y42_N9
\LP|dut|clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(18));

-- Location: LCCOMB_X69_Y42_N6
\LP|dut|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~38_combout\ = (\LP|dut|clk_count\(19) & (!\LP|dut|Add0~37\)) # (!\LP|dut|clk_count\(19) & ((\LP|dut|Add0~37\) # (GND)))
-- \LP|dut|Add0~39\ = CARRY((!\LP|dut|Add0~37\) # (!\LP|dut|clk_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(19),
	datad => VCC,
	cin => \LP|dut|Add0~37\,
	combout => \LP|dut|Add0~38_combout\,
	cout => \LP|dut|Add0~39\);

-- Location: LCCOMB_X72_Y42_N16
\LP|dut|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector14~0_combout\ = (\LP|dut|Add0~38_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~38_combout\,
	datad => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector14~0_combout\);

-- Location: FF_X72_Y42_N17
\LP|dut|clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(19));

-- Location: LCCOMB_X69_Y42_N8
\LP|dut|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~40_combout\ = (\LP|dut|clk_count\(20) & (\LP|dut|Add0~39\ $ (GND))) # (!\LP|dut|clk_count\(20) & (!\LP|dut|Add0~39\ & VCC))
-- \LP|dut|Add0~41\ = CARRY((\LP|dut|clk_count\(20) & !\LP|dut|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(20),
	datad => VCC,
	cin => \LP|dut|Add0~39\,
	combout => \LP|dut|Add0~40_combout\,
	cout => \LP|dut|Add0~41\);

-- Location: LCCOMB_X72_Y42_N26
\LP|dut|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector13~0_combout\ = (\LP|dut|Add0~40_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~40_combout\,
	datad => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector13~0_combout\);

-- Location: FF_X72_Y42_N27
\LP|dut|clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(20));

-- Location: LCCOMB_X69_Y42_N10
\LP|dut|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~42_combout\ = (\LP|dut|clk_count\(21) & (!\LP|dut|Add0~41\)) # (!\LP|dut|clk_count\(21) & ((\LP|dut|Add0~41\) # (GND)))
-- \LP|dut|Add0~43\ = CARRY((!\LP|dut|Add0~41\) # (!\LP|dut|clk_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(21),
	datad => VCC,
	cin => \LP|dut|Add0~41\,
	combout => \LP|dut|Add0~42_combout\,
	cout => \LP|dut|Add0~43\);

-- Location: LCCOMB_X72_Y42_N4
\LP|dut|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector12~0_combout\ = (\LP|dut|Add0~42_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~42_combout\,
	datad => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector12~0_combout\);

-- Location: FF_X72_Y42_N5
\LP|dut|clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(21));

-- Location: LCCOMB_X69_Y42_N12
\LP|dut|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~44_combout\ = (\LP|dut|clk_count\(22) & (\LP|dut|Add0~43\ $ (GND))) # (!\LP|dut|clk_count\(22) & (!\LP|dut|Add0~43\ & VCC))
-- \LP|dut|Add0~45\ = CARRY((\LP|dut|clk_count\(22) & !\LP|dut|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(22),
	datad => VCC,
	cin => \LP|dut|Add0~43\,
	combout => \LP|dut|Add0~44_combout\,
	cout => \LP|dut|Add0~45\);

-- Location: LCCOMB_X70_Y42_N4
\LP|dut|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector11~0_combout\ = (\LP|dut|Add0~44_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~44_combout\,
	datac => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector11~0_combout\);

-- Location: FF_X70_Y42_N5
\LP|dut|clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(22));

-- Location: LCCOMB_X69_Y42_N14
\LP|dut|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~46_combout\ = (\LP|dut|clk_count\(23) & (!\LP|dut|Add0~45\)) # (!\LP|dut|clk_count\(23) & ((\LP|dut|Add0~45\) # (GND)))
-- \LP|dut|Add0~47\ = CARRY((!\LP|dut|Add0~45\) # (!\LP|dut|clk_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(23),
	datad => VCC,
	cin => \LP|dut|Add0~45\,
	combout => \LP|dut|Add0~46_combout\,
	cout => \LP|dut|Add0~47\);

-- Location: LCCOMB_X70_Y42_N10
\LP|dut|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector10~0_combout\ = (\LP|dut|Add0~46_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~46_combout\,
	datac => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector10~0_combout\);

-- Location: FF_X70_Y42_N11
\LP|dut|clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(23));

-- Location: LCCOMB_X69_Y42_N16
\LP|dut|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~48_combout\ = (\LP|dut|clk_count\(24) & (\LP|dut|Add0~47\ $ (GND))) # (!\LP|dut|clk_count\(24) & (!\LP|dut|Add0~47\ & VCC))
-- \LP|dut|Add0~49\ = CARRY((\LP|dut|clk_count\(24) & !\LP|dut|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(24),
	datad => VCC,
	cin => \LP|dut|Add0~47\,
	combout => \LP|dut|Add0~48_combout\,
	cout => \LP|dut|Add0~49\);

-- Location: LCCOMB_X70_Y42_N24
\LP|dut|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector9~0_combout\ = (\LP|dut|Add0~48_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~48_combout\,
	datac => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector9~0_combout\);

-- Location: FF_X70_Y42_N25
\LP|dut|clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(24));

-- Location: LCCOMB_X69_Y42_N18
\LP|dut|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~50_combout\ = (\LP|dut|clk_count\(25) & (!\LP|dut|Add0~49\)) # (!\LP|dut|clk_count\(25) & ((\LP|dut|Add0~49\) # (GND)))
-- \LP|dut|Add0~51\ = CARRY((!\LP|dut|Add0~49\) # (!\LP|dut|clk_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(25),
	datad => VCC,
	cin => \LP|dut|Add0~49\,
	combout => \LP|dut|Add0~50_combout\,
	cout => \LP|dut|Add0~51\);

-- Location: LCCOMB_X70_Y42_N6
\LP|dut|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector8~0_combout\ = (\LP|dut|Add0~50_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~50_combout\,
	datac => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector8~0_combout\);

-- Location: FF_X70_Y42_N7
\LP|dut|clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(25));

-- Location: LCCOMB_X69_Y42_N20
\LP|dut|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~52_combout\ = (\LP|dut|clk_count\(26) & (\LP|dut|Add0~51\ $ (GND))) # (!\LP|dut|clk_count\(26) & (!\LP|dut|Add0~51\ & VCC))
-- \LP|dut|Add0~53\ = CARRY((\LP|dut|clk_count\(26) & !\LP|dut|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(26),
	datad => VCC,
	cin => \LP|dut|Add0~51\,
	combout => \LP|dut|Add0~52_combout\,
	cout => \LP|dut|Add0~53\);

-- Location: LCCOMB_X72_Y42_N24
\LP|dut|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector7~0_combout\ = (\LP|dut|Add0~52_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~52_combout\,
	datad => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector7~0_combout\);

-- Location: FF_X72_Y42_N25
\LP|dut|clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(26));

-- Location: LCCOMB_X69_Y42_N22
\LP|dut|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~54_combout\ = (\LP|dut|clk_count\(27) & (!\LP|dut|Add0~53\)) # (!\LP|dut|clk_count\(27) & ((\LP|dut|Add0~53\) # (GND)))
-- \LP|dut|Add0~55\ = CARRY((!\LP|dut|Add0~53\) # (!\LP|dut|clk_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(27),
	datad => VCC,
	cin => \LP|dut|Add0~53\,
	combout => \LP|dut|Add0~54_combout\,
	cout => \LP|dut|Add0~55\);

-- Location: LCCOMB_X68_Y41_N20
\LP|dut|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector6~0_combout\ = (\LP|dut|Add0~54_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~54_combout\,
	datac => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector6~0_combout\);

-- Location: FF_X68_Y41_N21
\LP|dut|clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(27));

-- Location: LCCOMB_X69_Y42_N24
\LP|dut|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~56_combout\ = (\LP|dut|clk_count\(28) & (\LP|dut|Add0~55\ $ (GND))) # (!\LP|dut|clk_count\(28) & (!\LP|dut|Add0~55\ & VCC))
-- \LP|dut|Add0~57\ = CARRY((\LP|dut|clk_count\(28) & !\LP|dut|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(28),
	datad => VCC,
	cin => \LP|dut|Add0~55\,
	combout => \LP|dut|Add0~56_combout\,
	cout => \LP|dut|Add0~57\);

-- Location: LCCOMB_X68_Y41_N22
\LP|dut|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector5~0_combout\ = (\LP|dut|Add0~56_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~56_combout\,
	datac => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector5~0_combout\);

-- Location: FF_X68_Y41_N23
\LP|dut|clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(28));

-- Location: LCCOMB_X69_Y42_N26
\LP|dut|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~58_combout\ = (\LP|dut|clk_count\(29) & (!\LP|dut|Add0~57\)) # (!\LP|dut|clk_count\(29) & ((\LP|dut|Add0~57\) # (GND)))
-- \LP|dut|Add0~59\ = CARRY((!\LP|dut|Add0~57\) # (!\LP|dut|clk_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(29),
	datad => VCC,
	cin => \LP|dut|Add0~57\,
	combout => \LP|dut|Add0~58_combout\,
	cout => \LP|dut|Add0~59\);

-- Location: LCCOMB_X68_Y41_N12
\LP|dut|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector4~0_combout\ = (\LP|dut|Add0~58_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~58_combout\,
	datac => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector4~0_combout\);

-- Location: FF_X68_Y41_N13
\LP|dut|clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(29));

-- Location: LCCOMB_X69_Y42_N28
\LP|dut|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~60_combout\ = (\LP|dut|clk_count\(30) & (\LP|dut|Add0~59\ $ (GND))) # (!\LP|dut|clk_count\(30) & (!\LP|dut|Add0~59\ & VCC))
-- \LP|dut|Add0~61\ = CARRY((\LP|dut|clk_count\(30) & !\LP|dut|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(30),
	datad => VCC,
	cin => \LP|dut|Add0~59\,
	combout => \LP|dut|Add0~60_combout\,
	cout => \LP|dut|Add0~61\);

-- Location: LCCOMB_X68_Y41_N30
\LP|dut|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector3~0_combout\ = (\LP|dut|Add0~60_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~60_combout\,
	datac => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector3~0_combout\);

-- Location: FF_X68_Y41_N31
\LP|dut|clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(30));

-- Location: LCCOMB_X69_Y42_N30
\LP|dut|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~62_combout\ = \LP|dut|Add0~61\ $ (\LP|dut|clk_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LP|dut|clk_count\(31),
	cin => \LP|dut|Add0~61\,
	combout => \LP|dut|Add0~62_combout\);

-- Location: LCCOMB_X68_Y42_N24
\LP|dut|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector2~0_combout\ = (\LP|dut|Add0~62_combout\ & \LP|dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~62_combout\,
	datac => \LP|dut|clk_count[23]~6_combout\,
	combout => \LP|dut|Selector2~0_combout\);

-- Location: FF_X68_Y42_N25
\LP|dut|clk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|clk_count\(31));

-- Location: LCCOMB_X68_Y40_N14
\LP|dut|clk_count[23]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|clk_count[23]~2_combout\ = (\LP|dut|state.send~q\ & ((\LP|dut|clk_count\(31)) # (\LP|dut|LessThan9~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(31),
	datac => \LP|dut|LessThan9~6_combout\,
	datad => \LP|dut|state.send~q\,
	combout => \LP|dut|clk_count[23]~2_combout\);

-- Location: LCCOMB_X68_Y40_N10
\LP|dut|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|state~14_combout\ = (!\LP|dut|current_state.S1~q\ & ((\LP|dut|clk_count[23]~2_combout\) # ((\LP|dut|state.ready~q\ & \LP|lcd_enable~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|state.ready~q\,
	datab => \LP|lcd_enable~q\,
	datac => \LP|dut|current_state.S1~q\,
	datad => \LP|dut|clk_count[23]~2_combout\,
	combout => \LP|dut|state~14_combout\);

-- Location: FF_X68_Y40_N11
\LP|dut|state.send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|state.send~q\);

-- Location: LCCOMB_X68_Y40_N28
\LP|dut|state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|state~8_combout\ = (!\LP|dut|clk_count\(31) & !\LP|dut|LessThan9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(31),
	datac => \LP|dut|LessThan9~6_combout\,
	combout => \LP|dut|state~8_combout\);

-- Location: LCCOMB_X68_Y40_N22
\LP|dut|state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|state~10_combout\ = (!\LP|dut|current_state.S1~q\ & ((\LP|dut|state~9_combout\) # ((\LP|dut|state.send~q\ & \LP|dut|state~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|state.send~q\,
	datab => \LP|dut|state~8_combout\,
	datac => \LP|dut|current_state.S1~q\,
	datad => \LP|dut|state~9_combout\,
	combout => \LP|dut|state~10_combout\);

-- Location: FF_X68_Y40_N23
\LP|dut|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|state.ready~q\);

-- Location: LCCOMB_X68_Y43_N12
\LP|dut|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~9_combout\ = ((!\LP|dut|Add0~8_combout\ & ((!\LP|dut|Add0~4_combout\) # (!\LP|dut|Add0~6_combout\)))) # (!\LP|dut|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~6_combout\,
	datab => \LP|dut|Add0~10_combout\,
	datac => \LP|dut|Add0~8_combout\,
	datad => \LP|dut|Add0~4_combout\,
	combout => \LP|dut|LessThan3~9_combout\);

-- Location: LCCOMB_X68_Y43_N6
\LP|dut|LessThan3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~8_combout\ = ((!\LP|dut|Add0~18_combout\ & ((!\LP|dut|Add0~14_combout\) # (!\LP|dut|Add0~16_combout\)))) # (!\LP|dut|LessThan3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~16_combout\,
	datab => \LP|dut|Add0~18_combout\,
	datac => \LP|dut|Add0~14_combout\,
	datad => \LP|dut|LessThan3~4_combout\,
	combout => \LP|dut|LessThan3~8_combout\);

-- Location: LCCOMB_X68_Y43_N30
\LP|dut|LessThan3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~10_combout\ = (\LP|dut|LessThan3~8_combout\) # ((\LP|dut|LessThan3~9_combout\ & (!\LP|dut|Add0~18_combout\ & !\LP|dut|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan3~9_combout\,
	datab => \LP|dut|Add0~18_combout\,
	datac => \LP|dut|Add0~12_combout\,
	datad => \LP|dut|LessThan3~8_combout\,
	combout => \LP|dut|LessThan3~10_combout\);

-- Location: LCCOMB_X67_Y42_N16
\LP|dut|busy~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|busy~6_combout\ = (!\LP|dut|Add0~24_combout\ & (\LP|dut|LessThan3~5_combout\ & (\LP|dut|LessThan3~10_combout\ & \LP|dut|LessThan3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~24_combout\,
	datab => \LP|dut|LessThan3~5_combout\,
	datac => \LP|dut|LessThan3~10_combout\,
	datad => \LP|dut|LessThan3~7_combout\,
	combout => \LP|dut|busy~6_combout\);

-- Location: LCCOMB_X67_Y42_N12
\LP|dut|busy~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|busy~8_combout\ = (!\LP|dut|Add0~58_combout\ & (!\LP|dut|Add0~56_combout\ & \LP|dut|busy~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~58_combout\,
	datac => \LP|dut|Add0~56_combout\,
	datad => \LP|dut|busy~6_combout\,
	combout => \LP|dut|busy~8_combout\);

-- Location: LCCOMB_X67_Y42_N30
\LP|dut|busy~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|busy~7_combout\ = (!\LP|dut|Add0~62_combout\ & (\LP|dut|lcd_data[0]~1_combout\ & ((\LP|dut|Add0~60_combout\) # (!\LP|dut|busy~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~60_combout\,
	datab => \LP|dut|Add0~62_combout\,
	datac => \LP|dut|lcd_data[0]~1_combout\,
	datad => \LP|dut|busy~8_combout\,
	combout => \LP|dut|busy~7_combout\);

-- Location: LCCOMB_X68_Y40_N12
\LP|dut|state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|state~11_combout\ = (!\LP|dut|current_state.S1~q\ & (\LP|dut|state.initialize~q\ & !\LP|dut|busy~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|current_state.S1~q\,
	datac => \LP|dut|state.initialize~q\,
	datad => \LP|dut|busy~7_combout\,
	combout => \LP|dut|state~11_combout\);

-- Location: LCCOMB_X68_Y40_N24
\LP|dut|state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|state~12_combout\ = (\LP|dut|state~11_combout\) # ((!\LP|dut|LessThan0~9_combout\ & (!\LP|dut|state.power_up~q\ & !\LP|dut|current_state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan0~9_combout\,
	datab => \LP|dut|state.power_up~q\,
	datac => \LP|dut|current_state.S1~q\,
	datad => \LP|dut|state~11_combout\,
	combout => \LP|dut|state~12_combout\);

-- Location: FF_X68_Y40_N25
\LP|dut|state.initialize\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|state.initialize~q\);

-- Location: LCCOMB_X68_Y40_N18
\LP|dut|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|state~9_combout\ = (\LP|dut|state.ready~q\ & (((\LP|dut|state.initialize~q\ & \LP|dut|busy~7_combout\)) # (!\LP|lcd_enable~q\))) # (!\LP|dut|state.ready~q\ & (\LP|dut|state.initialize~q\ & ((\LP|dut|busy~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|state.ready~q\,
	datab => \LP|dut|state.initialize~q\,
	datac => \LP|lcd_enable~q\,
	datad => \LP|dut|busy~7_combout\,
	combout => \LP|dut|state~9_combout\);

-- Location: FF_X68_Y40_N19
\LP|dut|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|busy~q\);

-- Location: LCCOMB_X105_Y36_N26
\CT|PRINT\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|PRINT~combout\ = (\CT|WideOr3~combout\ & ((!\CT|current_state.state_wait~q\))) # (!\CT|WideOr3~combout\ & (\CT|PRINT~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|PRINT~combout\,
	datac => \CT|WideOr3~combout\,
	datad => \CT|current_state.state_wait~q\,
	combout => \CT|PRINT~combout\);

-- Location: LCCOMB_X90_Y39_N2
\LP|printing~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|printing~0_combout\ = (!\CT|PRINT~combout\ & \LP|printing~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CT|PRINT~combout\,
	datad => \LP|printing~q\,
	combout => \LP|printing~0_combout\);

-- Location: LCCOMB_X79_Y36_N16
\LP|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Add0~0_combout\ = (\LP|char\(0) & \LP|char\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|char\(0),
	datad => \LP|char\(1),
	combout => \LP|Add0~0_combout\);

-- Location: LCCOMB_X79_Y36_N20
\LP|printing~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|printing~1_combout\ = (\LP|char\(3)) # ((\LP|char\(2) & (!\DP|LessThan0~14_combout\ & \LP|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(2),
	datab => \LP|char\(3),
	datac => \DP|LessThan0~14_combout\,
	datad => \LP|Add0~0_combout\,
	combout => \LP|printing~1_combout\);

-- Location: LCCOMB_X90_Y39_N20
\LP|printing~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|printing~2_combout\ = (\LP|printing~0_combout\) # ((!\LP|lcd_enable~q\ & (\LP|dut|busy~q\ & \LP|printing~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|lcd_enable~q\,
	datab => \LP|dut|busy~q\,
	datac => \LP|printing~0_combout\,
	datad => \LP|printing~1_combout\,
	combout => \LP|printing~2_combout\);

-- Location: FF_X90_Y39_N21
\LP|printing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|printing~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|printing~q\);

-- Location: LCCOMB_X80_Y36_N2
\LP|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|process_0~0_combout\ = (!\LP|lcd_enable~q\ & (\LP|dut|busy~q\ & ((\CT|PRINT~combout\) # (!\LP|printing~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|printing~q\,
	datab => \CT|PRINT~combout\,
	datac => \LP|lcd_enable~q\,
	datad => \LP|dut|busy~q\,
	combout => \LP|process_0~0_combout\);

-- Location: LCCOMB_X79_Y36_N8
\LP|lcd_enable~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_enable~3_combout\ = (\LP|char\(1) & (((\DP|LessThan0~14_combout\) # (!\LP|char\(2))) # (!\LP|char\(0)))) # (!\LP|char\(1) & (((\LP|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|char\(1),
	datac => \DP|LessThan0~14_combout\,
	datad => \LP|char\(2),
	combout => \LP|lcd_enable~3_combout\);

-- Location: LCCOMB_X80_Y36_N4
\LP|lcd_enable~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_enable~2_combout\ = (\LP|process_0~0_combout\ & (!\LP|char\(3) & \LP|lcd_enable~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|process_0~0_combout\,
	datac => \LP|char\(3),
	datad => \LP|lcd_enable~3_combout\,
	combout => \LP|lcd_enable~2_combout\);

-- Location: FF_X80_Y36_N5
\LP|lcd_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|lcd_enable~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|lcd_enable~q\);

-- Location: LCCOMB_X66_Y42_N6
\LP|dut|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector37~0_combout\ = (\LP|lcd_enable~q\ & \LP|dut|state.ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|lcd_enable~q\,
	datac => \LP|dut|state.ready~q\,
	combout => \LP|dut|Selector37~0_combout\);

-- Location: LCCOMB_X68_Y40_N20
\LP|dut|Selector47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~2_combout\ = (!\LP|dut|state.initialize~q\ & !\LP|dut|state.send~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|state.initialize~q\,
	datad => \LP|dut|state.send~q\,
	combout => \LP|dut|Selector47~2_combout\);

-- Location: LCCOMB_X68_Y40_N16
\LP|dut|rw~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|rw~0_combout\ = (!\LP|dut|state.power_up~q\ & \LP|dut|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|state.power_up~q\,
	datad => \LP|dut|LessThan0~9_combout\,
	combout => \LP|dut|rw~0_combout\);

-- Location: LCCOMB_X68_Y40_N8
\LP|dut|rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|rs~0_combout\ = (\LP|dut|Selector47~2_combout\ & ((\LP|dut|rw~0_combout\ & ((\LP|dut|rs~q\))) # (!\LP|dut|rw~0_combout\ & (\LP|dut|Selector37~0_combout\)))) # (!\LP|dut|Selector47~2_combout\ & (((\LP|dut|rs~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Selector37~0_combout\,
	datab => \LP|dut|Selector47~2_combout\,
	datac => \LP|dut|rs~q\,
	datad => \LP|dut|rw~0_combout\,
	combout => \LP|dut|rs~0_combout\);

-- Location: FF_X68_Y40_N9
\LP|dut|rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|rs~q\);

-- Location: LCCOMB_X70_Y43_N10
\LP|dut|LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan10~2_combout\ = (!\LP|dut|clk_count\(8) & (!\LP|dut|clk_count\(6) & (!\LP|dut|clk_count\(7) & !\LP|dut|clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(8),
	datab => \LP|dut|clk_count\(6),
	datac => \LP|dut|clk_count\(7),
	datad => \LP|dut|clk_count\(9),
	combout => \LP|dut|LessThan10~2_combout\);

-- Location: LCCOMB_X70_Y43_N8
\LP|dut|LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan10~1_combout\ = (\LP|dut|clk_count\(4) & \LP|dut|clk_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|clk_count\(4),
	datad => \LP|dut|clk_count\(5),
	combout => \LP|dut|LessThan10~1_combout\);

-- Location: LCCOMB_X70_Y43_N4
\LP|dut|LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan10~3_combout\ = (!\LP|dut|clk_count\(2) & (!\LP|dut|clk_count\(1) & !\LP|dut|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(2),
	datac => \LP|dut|clk_count\(1),
	datad => \LP|dut|clk_count\(3),
	combout => \LP|dut|LessThan10~3_combout\);

-- Location: LCCOMB_X70_Y43_N12
\LP|dut|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan10~0_combout\ = (!\LP|dut|clk_count\(10) & (!\LP|dut|clk_count\(11) & \LP|dut|LessThan9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(10),
	datac => \LP|dut|clk_count\(11),
	datad => \LP|dut|LessThan9~2_combout\,
	combout => \LP|dut|LessThan10~0_combout\);

-- Location: LCCOMB_X70_Y43_N6
\LP|dut|LessThan10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan10~4_combout\ = (\LP|dut|LessThan10~2_combout\ & (\LP|dut|LessThan10~0_combout\ & ((\LP|dut|LessThan10~3_combout\) # (!\LP|dut|LessThan10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan10~2_combout\,
	datab => \LP|dut|LessThan10~1_combout\,
	datac => \LP|dut|LessThan10~3_combout\,
	datad => \LP|dut|LessThan10~0_combout\,
	combout => \LP|dut|LessThan10~4_combout\);

-- Location: LCCOMB_X70_Y43_N22
\LP|dut|LessThan9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan9~7_combout\ = (!\LP|dut|clk_count\(3) & (!\LP|dut|clk_count\(4) & !\LP|dut|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(3),
	datab => \LP|dut|clk_count\(4),
	datad => \LP|dut|clk_count\(5),
	combout => \LP|dut|LessThan9~7_combout\);

-- Location: LCCOMB_X70_Y43_N24
\LP|dut|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan12~0_combout\ = ((\LP|dut|LessThan9~7_combout\ & ((!\LP|dut|clk_count\(1)) # (!\LP|dut|clk_count\(2))))) # (!\LP|dut|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan9~7_combout\,
	datab => \LP|dut|clk_count\(2),
	datac => \LP|dut|clk_count\(1),
	datad => \LP|dut|clk_count\(6),
	combout => \LP|dut|LessThan12~0_combout\);

-- Location: LCCOMB_X70_Y43_N14
\LP|dut|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan12~1_combout\ = (!\LP|dut|clk_count\(9) & (((\LP|dut|LessThan12~0_combout\ & !\LP|dut|clk_count\(7))) # (!\LP|dut|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(8),
	datab => \LP|dut|LessThan12~0_combout\,
	datac => \LP|dut|clk_count\(7),
	datad => \LP|dut|clk_count\(9),
	combout => \LP|dut|LessThan12~1_combout\);

-- Location: LCCOMB_X70_Y43_N28
\LP|dut|LessThan12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan12~2_combout\ = (!\LP|dut|clk_count\(11) & \LP|dut|LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|clk_count\(11),
	datad => \LP|dut|LessThan9~2_combout\,
	combout => \LP|dut|LessThan12~2_combout\);

-- Location: LCCOMB_X70_Y43_N16
\LP|dut|Selector47~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~15_combout\ = (!\LP|dut|LessThan10~4_combout\ & (((\LP|dut|clk_count\(10) & !\LP|dut|LessThan12~1_combout\)) # (!\LP|dut|LessThan12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan10~4_combout\,
	datab => \LP|dut|clk_count\(10),
	datac => \LP|dut|LessThan12~1_combout\,
	datad => \LP|dut|LessThan12~2_combout\,
	combout => \LP|dut|Selector47~15_combout\);

-- Location: LCCOMB_X70_Y43_N2
\LP|dut|Selector47~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~12_combout\ = (\LP|dut|clk_count\(3) & ((\LP|dut|clk_count\(2)) # ((!\LP|dut|clk_count\(7))))) # (!\LP|dut|clk_count\(3) & (!\LP|dut|clk_count\(7) & ((\LP|dut|clk_count\(2)) # (\LP|dut|clk_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(3),
	datab => \LP|dut|clk_count\(2),
	datac => \LP|dut|clk_count\(7),
	datad => \LP|dut|clk_count\(1),
	combout => \LP|dut|Selector47~12_combout\);

-- Location: LCCOMB_X70_Y43_N26
\LP|dut|Selector47~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~18_combout\ = (\LP|dut|clk_count\(6)) # ((\LP|dut|clk_count\(5) & (\LP|dut|clk_count\(4) & \LP|dut|Selector47~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(5),
	datab => \LP|dut|clk_count\(6),
	datac => \LP|dut|clk_count\(4),
	datad => \LP|dut|Selector47~12_combout\,
	combout => \LP|dut|Selector47~18_combout\);

-- Location: LCCOMB_X70_Y43_N20
\LP|dut|Selector47~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~13_combout\ = (\LP|dut|clk_count\(8) & (((!\LP|dut|clk_count\(9))))) # (!\LP|dut|clk_count\(8) & ((\LP|dut|clk_count\(7) & ((!\LP|dut|clk_count\(9)) # (!\LP|dut|Selector47~18_combout\))) # (!\LP|dut|clk_count\(7) & 
-- ((\LP|dut|Selector47~18_combout\) # (\LP|dut|clk_count\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(8),
	datab => \LP|dut|clk_count\(7),
	datac => \LP|dut|Selector47~18_combout\,
	datad => \LP|dut|clk_count\(9),
	combout => \LP|dut|Selector47~13_combout\);

-- Location: LCCOMB_X67_Y43_N30
\LP|dut|Selector47~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~14_combout\ = (\LP|dut|Selector47~13_combout\ & (\LP|dut|LessThan9~6_combout\ & \LP|dut|LessThan10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Selector47~13_combout\,
	datac => \LP|dut|LessThan9~6_combout\,
	datad => \LP|dut|LessThan10~0_combout\,
	combout => \LP|dut|Selector47~14_combout\);

-- Location: LCCOMB_X67_Y43_N4
\LP|dut|Selector47~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~16_combout\ = (\LP|dut|Selector47~14_combout\) # ((\LP|dut|e~q\ & ((\LP|dut|Selector47~15_combout\) # (!\LP|dut|LessThan9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Selector47~15_combout\,
	datab => \LP|dut|LessThan9~6_combout\,
	datac => \LP|dut|Selector47~14_combout\,
	datad => \LP|dut|e~q\,
	combout => \LP|dut|Selector47~16_combout\);

-- Location: LCCOMB_X66_Y43_N20
\LP|dut|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan5~2_combout\ = (\LP|dut|LessThan3~13_combout\ & ((\LP|dut|LessThan5~1_combout\) # ((!\LP|dut|Add0~24_combout\) # (!\LP|dut|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan5~1_combout\,
	datab => \LP|dut|Add0~22_combout\,
	datac => \LP|dut|Add0~24_combout\,
	datad => \LP|dut|LessThan3~13_combout\,
	combout => \LP|dut|LessThan5~2_combout\);

-- Location: LCCOMB_X66_Y43_N30
\LP|dut|Selector47~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~9_combout\ = (!\LP|dut|Add0~60_combout\ & \LP|dut|LessThan5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~60_combout\,
	datad => \LP|dut|LessThan5~2_combout\,
	combout => \LP|dut|Selector47~9_combout\);

-- Location: LCCOMB_X68_Y42_N4
\LP|dut|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan4~3_combout\ = (\LP|dut|LessThan3~5_combout\ & (\LP|dut|LessThan3~3_combout\ & ((\LP|dut|LessThan4~2_combout\) # (!\LP|dut|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~24_combout\,
	datab => \LP|dut|LessThan3~5_combout\,
	datac => \LP|dut|LessThan4~2_combout\,
	datad => \LP|dut|LessThan3~3_combout\,
	combout => \LP|dut|LessThan4~3_combout\);

-- Location: LCCOMB_X67_Y43_N26
\LP|dut|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan2~0_combout\ = (!\LP|dut|Add0~12_combout\ & (((!\LP|dut|Add0~10_combout\) # (!\LP|dut|Add0~8_combout\)) # (!\LP|dut|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~6_combout\,
	datab => \LP|dut|Add0~12_combout\,
	datac => \LP|dut|Add0~8_combout\,
	datad => \LP|dut|Add0~10_combout\,
	combout => \LP|dut|LessThan2~0_combout\);

-- Location: LCCOMB_X67_Y43_N28
\LP|dut|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan2~1_combout\ = ((!\LP|dut|Add0~18_combout\) # (!\LP|dut|Add0~14_combout\)) # (!\LP|dut|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~16_combout\,
	datab => \LP|dut|Add0~14_combout\,
	datac => \LP|dut|Add0~18_combout\,
	combout => \LP|dut|LessThan2~1_combout\);

-- Location: LCCOMB_X67_Y43_N14
\LP|dut|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan2~2_combout\ = ((!\LP|dut|Add0~20_combout\ & ((\LP|dut|LessThan2~0_combout\) # (\LP|dut|LessThan2~1_combout\)))) # (!\LP|dut|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan2~0_combout\,
	datab => \LP|dut|Add0~22_combout\,
	datac => \LP|dut|Add0~20_combout\,
	datad => \LP|dut|LessThan2~1_combout\,
	combout => \LP|dut|LessThan2~2_combout\);

-- Location: LCCOMB_X68_Y42_N10
\LP|dut|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan2~3_combout\ = (!\LP|dut|Add0~24_combout\ & (\LP|dut|LessThan3~5_combout\ & (\LP|dut|LessThan2~2_combout\ & \LP|dut|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~24_combout\,
	datab => \LP|dut|LessThan3~5_combout\,
	datac => \LP|dut|LessThan2~2_combout\,
	datad => \LP|dut|LessThan3~3_combout\,
	combout => \LP|dut|LessThan2~3_combout\);

-- Location: LCCOMB_X68_Y42_N22
\LP|dut|Selector47~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~10_combout\ = (!\LP|dut|state.send~q\ & (\LP|dut|state.initialize~q\ & (!\LP|dut|LessThan4~3_combout\ & !\LP|dut|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|state.send~q\,
	datab => \LP|dut|state.initialize~q\,
	datac => \LP|dut|LessThan4~3_combout\,
	datad => \LP|dut|LessThan2~3_combout\,
	combout => \LP|dut|Selector47~10_combout\);

-- Location: LCCOMB_X67_Y43_N16
\LP|dut|LessThan8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan8~4_combout\ = (!\LP|dut|Add0~60_combout\ & (\LP|dut|LessThan3~3_combout\ & ((\LP|dut|LessThan8~3_combout\) # (!\LP|dut|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan8~3_combout\,
	datab => \LP|dut|LessThan6~0_combout\,
	datac => \LP|dut|Add0~60_combout\,
	datad => \LP|dut|LessThan3~3_combout\,
	combout => \LP|dut|LessThan8~4_combout\);

-- Location: LCCOMB_X68_Y42_N26
\LP|dut|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan7~2_combout\ = (!\LP|dut|Add0~60_combout\ & (\LP|dut|LessThan3~3_combout\ & ((\LP|dut|LessThan7~1_combout\) # (!\LP|dut|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~60_combout\,
	datab => \LP|dut|LessThan6~0_combout\,
	datac => \LP|dut|LessThan7~1_combout\,
	datad => \LP|dut|LessThan3~3_combout\,
	combout => \LP|dut|LessThan7~2_combout\);

-- Location: LCCOMB_X68_Y42_N6
\LP|dut|busy~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|busy~4_combout\ = (\LP|dut|LessThan3~3_combout\ & (((\LP|dut|LessThan6~3_combout\ & \LP|dut|LessThan6~1_combout\)) # (!\LP|dut|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan6~3_combout\,
	datab => \LP|dut|LessThan6~0_combout\,
	datac => \LP|dut|LessThan6~1_combout\,
	datad => \LP|dut|LessThan3~3_combout\,
	combout => \LP|dut|busy~4_combout\);

-- Location: LCCOMB_X68_Y42_N12
\LP|dut|Selector47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~3_combout\ = (\LP|dut|busy~4_combout\) # ((\LP|dut|LessThan4~3_combout\) # (\LP|dut|LessThan2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|busy~4_combout\,
	datac => \LP|dut|LessThan4~3_combout\,
	datad => \LP|dut|LessThan2~3_combout\,
	combout => \LP|dut|Selector47~3_combout\);

-- Location: LCCOMB_X67_Y43_N10
\LP|dut|Selector47~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~4_combout\ = (!\LP|dut|state.send~q\ & (\LP|dut|state.initialize~q\ & ((\LP|dut|Add0~60_combout\) # (!\LP|dut|Selector47~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|state.send~q\,
	datab => \LP|dut|state.initialize~q\,
	datac => \LP|dut|Add0~60_combout\,
	datad => \LP|dut|Selector47~3_combout\,
	combout => \LP|dut|Selector47~4_combout\);

-- Location: LCCOMB_X67_Y43_N8
\LP|dut|Selector47~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~5_combout\ = (\LP|dut|Selector47~4_combout\ & ((\LP|dut|LessThan7~2_combout\) # ((\LP|dut|e~q\ & !\LP|dut|LessThan8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|e~q\,
	datab => \LP|dut|LessThan8~4_combout\,
	datac => \LP|dut|LessThan7~2_combout\,
	datad => \LP|dut|Selector47~4_combout\,
	combout => \LP|dut|Selector47~5_combout\);

-- Location: LCCOMB_X68_Y42_N16
\LP|dut|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~11_combout\ = (!\LP|dut|Add0~24_combout\ & (\LP|dut|LessThan3~5_combout\ & (\LP|dut|LessThan3~10_combout\ & \LP|dut|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~24_combout\,
	datab => \LP|dut|LessThan3~5_combout\,
	datac => \LP|dut|LessThan3~10_combout\,
	datad => \LP|dut|LessThan3~3_combout\,
	combout => \LP|dut|LessThan3~11_combout\);

-- Location: LCCOMB_X67_Y43_N18
\LP|dut|Selector47~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~6_combout\ = (\LP|dut|LessThan1~2_combout\) # ((!\LP|dut|LessThan2~3_combout\ & \LP|dut|LessThan3~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|LessThan2~3_combout\,
	datac => \LP|dut|LessThan3~11_combout\,
	datad => \LP|dut|LessThan1~2_combout\,
	combout => \LP|dut|Selector47~6_combout\);

-- Location: LCCOMB_X67_Y43_N12
\LP|dut|Selector47~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~7_combout\ = (\LP|dut|Add0~62_combout\) # ((!\LP|dut|Add0~60_combout\ & \LP|dut|Selector47~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~62_combout\,
	datac => \LP|dut|Add0~60_combout\,
	datad => \LP|dut|Selector47~6_combout\,
	combout => \LP|dut|Selector47~7_combout\);

-- Location: LCCOMB_X67_Y43_N6
\LP|dut|Selector47~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~8_combout\ = (!\LP|dut|state.send~q\ & ((\LP|dut|state.initialize~q\ & ((\LP|dut|Selector47~7_combout\))) # (!\LP|dut|state.initialize~q\ & (\LP|dut|e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|state.send~q\,
	datab => \LP|dut|e~q\,
	datac => \LP|dut|state.initialize~q\,
	datad => \LP|dut|Selector47~7_combout\,
	combout => \LP|dut|Selector47~8_combout\);

-- Location: LCCOMB_X67_Y43_N24
\LP|dut|Selector47~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~11_combout\ = (\LP|dut|Selector47~5_combout\) # ((\LP|dut|Selector47~8_combout\) # ((\LP|dut|Selector47~9_combout\ & \LP|dut|Selector47~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Selector47~9_combout\,
	datab => \LP|dut|Selector47~10_combout\,
	datac => \LP|dut|Selector47~5_combout\,
	datad => \LP|dut|Selector47~8_combout\,
	combout => \LP|dut|Selector47~11_combout\);

-- Location: LCCOMB_X67_Y43_N0
\LP|dut|Selector47~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~17_combout\ = (\LP|dut|Selector47~11_combout\) # ((\LP|dut|state.send~q\ & (!\LP|dut|clk_count\(31) & \LP|dut|Selector47~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|state.send~q\,
	datab => \LP|dut|clk_count\(31),
	datac => \LP|dut|Selector47~16_combout\,
	datad => \LP|dut|Selector47~11_combout\,
	combout => \LP|dut|Selector47~17_combout\);

-- Location: FF_X67_Y43_N1
\LP|dut|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector47~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|e~q\);

-- Location: LCCOMB_X79_Y36_N22
\LP|lcd_bus~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~8_combout\ = (\LP|char\(0) & (((\LP|char\(3) & \LP|char\(2))) # (!\LP|char\(1)))) # (!\LP|char\(0) & ((\LP|char\(1)) # ((!\LP|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|char\(1),
	datac => \LP|char\(3),
	datad => \LP|char\(2),
	combout => \LP|lcd_bus~8_combout\);

-- Location: LCCOMB_X80_Y36_N8
\LP|lcd_bus~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~21_combout\ = (\LP|lcd_bus~6_combout\ & ((\LP|char\(1) & ((\DP|LessThan0~14_combout\) # (!\LP|char\(0)))) # (!\LP|char\(1) & ((\LP|char\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|LessThan0~14_combout\,
	datab => \LP|char\(1),
	datac => \LP|char\(0),
	datad => \LP|lcd_bus~6_combout\,
	combout => \LP|lcd_bus~21_combout\);

-- Location: LCCOMB_X79_Y36_N18
\LP|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Add0~2_combout\ = \LP|char\(3) $ (((\LP|char\(0) & (\LP|char\(1) & \LP|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|char\(1),
	datac => \LP|char\(3),
	datad => \LP|char\(2),
	combout => \LP|Add0~2_combout\);

-- Location: LCCOMB_X79_Y36_N28
\LP|lcd_bus~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~7_combout\ = (\LP|Add0~2_combout\ & ((\LP|Add0~0_combout\ $ (\LP|char\(2))) # (!\DP|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|LessThan0~14_combout\,
	datab => \LP|Add0~0_combout\,
	datac => \LP|Add0~2_combout\,
	datad => \LP|char\(2),
	combout => \LP|lcd_bus~7_combout\);

-- Location: LCCOMB_X80_Y36_N30
\LP|lcd_bus~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~9_combout\ = (\LP|lcd_bus~21_combout\) # ((\LP|lcd_bus\(0) & ((\LP|lcd_bus~8_combout\) # (\LP|lcd_bus~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|lcd_bus~8_combout\,
	datab => \LP|lcd_bus~21_combout\,
	datac => \LP|lcd_bus\(0),
	datad => \LP|lcd_bus~7_combout\,
	combout => \LP|lcd_bus~9_combout\);

-- Location: FF_X80_Y36_N31
\LP|lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|lcd_bus~9_combout\,
	ena => \LP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|lcd_bus\(0));

-- Location: LCCOMB_X66_Y42_N16
\LP|dut|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector44~0_combout\ = (\LP|dut|state.initialize~q\ & (!\LP|dut|Add0~60_combout\ & ((!\LP|lcd_enable~q\) # (!\LP|dut|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|state.ready~q\,
	datab => \LP|dut|state.initialize~q\,
	datac => \LP|lcd_enable~q\,
	datad => \LP|dut|Add0~60_combout\,
	combout => \LP|dut|Selector44~0_combout\);

-- Location: LCCOMB_X67_Y43_N2
\LP|dut|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector46~0_combout\ = (!\LP|dut|Add0~62_combout\ & (!\LP|dut|busy~6_combout\ & (\LP|dut|Selector44~0_combout\ & !\LP|dut|LessThan4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~62_combout\,
	datab => \LP|dut|busy~6_combout\,
	datac => \LP|dut|Selector44~0_combout\,
	datad => \LP|dut|LessThan4~4_combout\,
	combout => \LP|dut|Selector46~0_combout\);

-- Location: LCCOMB_X67_Y43_N22
\LP|dut|Selector46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector46~1_combout\ = (\LP|dut|Selector37~0_combout\ & ((\LP|lcd_bus\(0)) # ((\LP|dut|LessThan5~2_combout\ & \LP|dut|Selector46~0_combout\)))) # (!\LP|dut|Selector37~0_combout\ & (\LP|dut|LessThan5~2_combout\ & 
-- ((\LP|dut|Selector46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Selector37~0_combout\,
	datab => \LP|dut|LessThan5~2_combout\,
	datac => \LP|lcd_bus\(0),
	datad => \LP|dut|Selector46~0_combout\,
	combout => \LP|dut|Selector46~1_combout\);

-- Location: LCCOMB_X67_Y42_N0
\LP|dut|lcd_data[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|lcd_data[0]~2_combout\ = (!\LP|dut|state.send~q\ & (!\LP|dut|rw~0_combout\ & ((!\LP|dut|busy~7_combout\) # (!\LP|dut|state.initialize~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|state.initialize~q\,
	datab => \LP|dut|state.send~q\,
	datac => \LP|dut|busy~7_combout\,
	datad => \LP|dut|rw~0_combout\,
	combout => \LP|dut|lcd_data[0]~2_combout\);

-- Location: FF_X67_Y43_N23
\LP|dut|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector46~1_combout\,
	ena => \LP|dut|lcd_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|lcd_data\(0));

-- Location: LCCOMB_X79_Y36_N0
\LP|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux43~0_combout\ = \LP|char\(3) $ (((\LP|char\(2)) # ((\LP|char\(0) & \LP|char\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|char\(1),
	datac => \LP|char\(3),
	datad => \LP|char\(2),
	combout => \LP|Mux43~0_combout\);

-- Location: LCCOMB_X80_Y36_N10
\LP|lcd_bus~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~10_combout\ = (\DP|LessThan0~14_combout\ & ((\LP|lcd_bus\(1)) # ((\LP|char\(0) & \LP|Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|Mux43~0_combout\,
	datac => \DP|LessThan0~14_combout\,
	datad => \LP|lcd_bus\(1),
	combout => \LP|lcd_bus~10_combout\);

-- Location: LCCOMB_X79_Y36_N24
\LP|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Add0~1_combout\ = \LP|char\(0) $ (\LP|char\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|char\(0),
	datad => \LP|char\(1),
	combout => \LP|Add0~1_combout\);

-- Location: LCCOMB_X80_Y36_N0
\LP|lcd_bus~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~11_combout\ = \DP|LessThan0~14_combout\ $ (\LP|char\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|LessThan0~14_combout\,
	datad => \LP|char\(0),
	combout => \LP|lcd_bus~11_combout\);

-- Location: LCCOMB_X80_Y36_N6
\LP|lcd_bus~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~12_combout\ = (!\LP|Add0~1_combout\ & ((\LP|lcd_bus~10_combout\) # ((\LP|lcd_bus~6_combout\ & \LP|lcd_bus~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|lcd_bus~10_combout\,
	datab => \LP|Add0~1_combout\,
	datac => \LP|lcd_bus~6_combout\,
	datad => \LP|lcd_bus~11_combout\,
	combout => \LP|lcd_bus~12_combout\);

-- Location: LCCOMB_X80_Y36_N16
\LP|lcd_bus~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~13_combout\ = (\LP|lcd_bus~12_combout\) # ((!\LP|lcd_bus~6_combout\ & \LP|lcd_bus\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|lcd_bus~6_combout\,
	datac => \LP|lcd_bus\(1),
	datad => \LP|lcd_bus~12_combout\,
	combout => \LP|lcd_bus~13_combout\);

-- Location: FF_X80_Y36_N17
\LP|lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|lcd_bus~13_combout\,
	ena => \LP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|lcd_bus\(1));

-- Location: LCCOMB_X66_Y42_N4
\LP|dut|Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector45~1_combout\ = (!\LP|dut|Selector37~0_combout\ & (\LP|dut|state.initialize~q\ & (!\LP|dut|busy~8_combout\ & !\LP|dut|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Selector37~0_combout\,
	datab => \LP|dut|state.initialize~q\,
	datac => \LP|dut|busy~8_combout\,
	datad => \LP|dut|Add0~62_combout\,
	combout => \LP|dut|Selector45~1_combout\);

-- Location: LCCOMB_X66_Y42_N10
\LP|dut|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector45~0_combout\ = (!\LP|dut|busy~4_combout\ & (\LP|dut|LessThan7~2_combout\ & (!\LP|dut|Selector47~9_combout\ & !\LP|dut|LessThan4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|busy~4_combout\,
	datab => \LP|dut|LessThan7~2_combout\,
	datac => \LP|dut|Selector47~9_combout\,
	datad => \LP|dut|LessThan4~4_combout\,
	combout => \LP|dut|Selector45~0_combout\);

-- Location: LCCOMB_X66_Y42_N20
\LP|dut|Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector45~2_combout\ = (\LP|dut|Selector37~0_combout\ & ((\LP|lcd_bus\(1)) # ((\LP|dut|Selector45~1_combout\ & \LP|dut|Selector45~0_combout\)))) # (!\LP|dut|Selector37~0_combout\ & (((\LP|dut|Selector45~1_combout\ & 
-- \LP|dut|Selector45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Selector37~0_combout\,
	datab => \LP|lcd_bus\(1),
	datac => \LP|dut|Selector45~1_combout\,
	datad => \LP|dut|Selector45~0_combout\,
	combout => \LP|dut|Selector45~2_combout\);

-- Location: FF_X66_Y42_N21
\LP|dut|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector45~2_combout\,
	ena => \LP|dut|lcd_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|lcd_data\(1));

-- Location: LCCOMB_X66_Y42_N28
\LP|dut|Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector44~2_combout\ = ((!\LP|dut|LessThan1~2_combout\ & ((\LP|dut|LessThan2~3_combout\) # (!\LP|dut|LessThan3~11_combout\)))) # (!\LP|dut|Selector44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan2~3_combout\,
	datab => \LP|dut|Selector44~0_combout\,
	datac => \LP|dut|LessThan3~11_combout\,
	datad => \LP|dut|LessThan1~2_combout\,
	combout => \LP|dut|Selector44~2_combout\);

-- Location: LCCOMB_X66_Y42_N18
\LP|dut|Selector44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector44~3_combout\ = (\LP|dut|Selector44~2_combout\ & ((\LP|dut|Selector37~0_combout\) # ((!\LP|dut|state.initialize~q\) # (!\LP|dut|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Selector37~0_combout\,
	datab => \LP|dut|Add0~62_combout\,
	datac => \LP|dut|state.initialize~q\,
	datad => \LP|dut|Selector44~2_combout\,
	combout => \LP|dut|Selector44~3_combout\);

-- Location: LCCOMB_X80_Y36_N28
\LP|lcd_bus~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~14_combout\ = (\LP|lcd_bus~6_combout\ & (\LP|Add0~1_combout\)) # (!\LP|lcd_bus~6_combout\ & (((\DP|LessThan0~14_combout\ & \LP|char~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|lcd_bus~6_combout\,
	datab => \LP|Add0~1_combout\,
	datac => \DP|LessThan0~14_combout\,
	datad => \LP|char~0_combout\,
	combout => \LP|lcd_bus~14_combout\);

-- Location: LCCOMB_X80_Y36_N26
\LP|lcd_bus~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~15_combout\ = (\LP|lcd_bus~6_combout\ & (((\LP|lcd_bus~14_combout\)) # (!\LP|lcd_bus~11_combout\))) # (!\LP|lcd_bus~6_combout\ & ((\LP|lcd_bus\(2)) # ((!\LP|lcd_bus~11_combout\ & \LP|lcd_bus~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|lcd_bus~6_combout\,
	datab => \LP|lcd_bus~11_combout\,
	datac => \LP|lcd_bus\(2),
	datad => \LP|lcd_bus~14_combout\,
	combout => \LP|lcd_bus~15_combout\);

-- Location: FF_X80_Y36_N27
\LP|lcd_bus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|lcd_bus~15_combout\,
	ena => \LP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|lcd_bus\(2));

-- Location: LCCOMB_X66_Y42_N2
\LP|dut|Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector44~1_combout\ = (!\LP|dut|LessThan2~3_combout\ & (\LP|dut|Selector44~0_combout\ & \LP|dut|Selector45~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan2~3_combout\,
	datab => \LP|dut|Selector44~0_combout\,
	datad => \LP|dut|Selector45~0_combout\,
	combout => \LP|dut|Selector44~1_combout\);

-- Location: LCCOMB_X66_Y42_N14
\LP|dut|Selector44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector44~4_combout\ = ((\LP|dut|Selector44~1_combout\) # ((\LP|dut|Selector37~0_combout\ & \LP|lcd_bus\(2)))) # (!\LP|dut|Selector44~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Selector37~0_combout\,
	datab => \LP|dut|Selector44~3_combout\,
	datac => \LP|lcd_bus\(2),
	datad => \LP|dut|Selector44~1_combout\,
	combout => \LP|dut|Selector44~4_combout\);

-- Location: FF_X66_Y42_N15
\LP|dut|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector44~4_combout\,
	ena => \LP|dut|lcd_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|lcd_data\(2));

-- Location: LCCOMB_X80_Y36_N14
\LP|lcd_bus~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~23_combout\ = (\LP|lcd_bus\(3) & (((!\LP|char\(1)) # (!\LP|char\(0))) # (!\DP|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|LessThan0~14_combout\,
	datab => \LP|lcd_bus\(3),
	datac => \LP|char\(0),
	datad => \LP|char\(1),
	combout => \LP|lcd_bus~23_combout\);

-- Location: LCCOMB_X79_Y36_N30
\LP|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Add0~3_combout\ = \LP|char\(2) $ (((\LP|char\(0) & \LP|char\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(2),
	datab => \LP|char\(0),
	datad => \LP|char\(1),
	combout => \LP|Add0~3_combout\);

-- Location: LCCOMB_X80_Y36_N22
\LP|lcd_bus~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~16_combout\ = (\LP|Add0~3_combout\ & ((\LP|Add0~2_combout\ & ((\LP|lcd_bus\(3)))) # (!\LP|Add0~2_combout\ & (!\DP|LessThan0~14_combout\)))) # (!\LP|Add0~3_combout\ & ((\LP|Add0~2_combout\ & (\DP|LessThan0~14_combout\)) # (!\LP|Add0~2_combout\ 
-- & ((\LP|lcd_bus\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|LessThan0~14_combout\,
	datab => \LP|Add0~3_combout\,
	datac => \LP|lcd_bus\(3),
	datad => \LP|Add0~2_combout\,
	combout => \LP|lcd_bus~16_combout\);

-- Location: LCCOMB_X81_Y36_N4
\LP|lcd_bus~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~22_combout\ = (\LP|char\(0) & (\LP|char\(1) & \DP|LessThan0~14_combout\)) # (!\LP|char\(0) & (!\LP|char\(1) & !\DP|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|char\(1),
	datad => \DP|LessThan0~14_combout\,
	combout => \LP|lcd_bus~22_combout\);

-- Location: LCCOMB_X80_Y36_N12
\LP|lcd_bus~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~17_combout\ = (\LP|lcd_bus~6_combout\ & (((\LP|lcd_bus~16_combout\ & \LP|lcd_bus~22_combout\)))) # (!\LP|lcd_bus~6_combout\ & ((\LP|lcd_bus~23_combout\) # ((\LP|lcd_bus~16_combout\ & \LP|lcd_bus~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|lcd_bus~6_combout\,
	datab => \LP|lcd_bus~23_combout\,
	datac => \LP|lcd_bus~16_combout\,
	datad => \LP|lcd_bus~22_combout\,
	combout => \LP|lcd_bus~17_combout\);

-- Location: FF_X80_Y36_N13
\LP|lcd_bus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|lcd_bus~17_combout\,
	ena => \LP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|lcd_bus\(3));

-- Location: LCCOMB_X66_Y42_N12
\LP|dut|Selector43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector43~2_combout\ = ((\LP|dut|state.ready~q\ & (\LP|lcd_enable~q\ & \LP|lcd_bus\(3)))) # (!\LP|dut|Selector44~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|state.ready~q\,
	datab => \LP|lcd_enable~q\,
	datac => \LP|lcd_bus\(3),
	datad => \LP|dut|Selector44~3_combout\,
	combout => \LP|dut|Selector43~2_combout\);

-- Location: FF_X66_Y42_N13
\LP|dut|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector43~2_combout\,
	ena => \LP|dut|lcd_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|lcd_data\(3));

-- Location: LCCOMB_X79_Y36_N12
\LP|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux40~0_combout\ = (\LP|char\(0) & ((\DP|LessThan0~14_combout\ & ((!\LP|Mux43~0_combout\))) # (!\DP|LessThan0~14_combout\ & (!\LP|lcd_bus~6_combout\)))) # (!\LP|char\(0) & (!\LP|lcd_bus~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|lcd_bus~6_combout\,
	datab => \LP|char\(0),
	datac => \DP|LessThan0~14_combout\,
	datad => \LP|Mux43~0_combout\,
	combout => \LP|Mux40~0_combout\);

-- Location: LCCOMB_X79_Y36_N14
\LP|lcd_bus~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~18_combout\ = (\LP|lcd_bus~6_combout\ & (\LP|Mux40~0_combout\ & (\LP|Add0~1_combout\ $ (\DP|LessThan0~14_combout\)))) # (!\LP|lcd_bus~6_combout\ & ((\LP|Mux40~0_combout\) # (\LP|Add0~1_combout\ $ (!\DP|LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|lcd_bus~6_combout\,
	datab => \LP|Add0~1_combout\,
	datac => \DP|LessThan0~14_combout\,
	datad => \LP|Mux40~0_combout\,
	combout => \LP|lcd_bus~18_combout\);

-- Location: LCCOMB_X81_Y36_N16
\LP|lcd_bus~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~19_combout\ = (!\LP|char\(1) & (\LP|char\(0) $ (\DP|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|char\(1),
	datad => \DP|LessThan0~14_combout\,
	combout => \LP|lcd_bus~19_combout\);

-- Location: LCCOMB_X80_Y36_N18
\LP|lcd_bus~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~20_combout\ = (\LP|Mux40~0_combout\ & (\LP|lcd_bus~18_combout\ & (\LP|lcd_bus\(4)))) # (!\LP|Mux40~0_combout\ & ((\LP|lcd_bus~19_combout\) # ((\LP|lcd_bus~18_combout\ & \LP|lcd_bus\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|Mux40~0_combout\,
	datab => \LP|lcd_bus~18_combout\,
	datac => \LP|lcd_bus\(4),
	datad => \LP|lcd_bus~19_combout\,
	combout => \LP|lcd_bus~20_combout\);

-- Location: FF_X80_Y36_N19
\LP|lcd_bus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|lcd_bus~20_combout\,
	ena => \LP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|lcd_bus\(4));

-- Location: LCCOMB_X67_Y42_N20
\LP|dut|Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector42~2_combout\ = ((\LP|dut|Add0~62_combout\) # ((!\LP|dut|Add0~60_combout\ & \LP|dut|LessThan1~2_combout\))) # (!\LP|dut|state.initialize~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|state.initialize~q\,
	datab => \LP|dut|Add0~62_combout\,
	datac => \LP|dut|Add0~60_combout\,
	datad => \LP|dut|LessThan1~2_combout\,
	combout => \LP|dut|Selector42~2_combout\);

-- Location: LCCOMB_X66_Y42_N26
\LP|dut|Selector42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector42~3_combout\ = (\LP|dut|state.ready~q\ & (\LP|lcd_bus\(4) & (\LP|lcd_enable~q\))) # (!\LP|dut|state.ready~q\ & (((\LP|dut|Selector42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|state.ready~q\,
	datab => \LP|lcd_bus\(4),
	datac => \LP|lcd_enable~q\,
	datad => \LP|dut|Selector42~2_combout\,
	combout => \LP|dut|Selector42~3_combout\);

-- Location: FF_X66_Y42_N27
\LP|dut|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector42~3_combout\,
	ena => \LP|dut|lcd_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|lcd_data\(4));

-- Location: FF_X67_Y42_N21
\LP|dut|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector42~2_combout\,
	sclr => \LP|dut|state.ready~q\,
	ena => \LP|dut|lcd_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|lcd_data\(5));

-- Location: LCCOMB_X66_Y42_N8
\LP|dut|lcd_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|lcd_data[6]~feeder_combout\ = \LP|dut|Selector37~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LP|dut|Selector37~0_combout\,
	combout => \LP|dut|lcd_data[6]~feeder_combout\);

-- Location: FF_X66_Y42_N9
\LP|dut|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|lcd_data[6]~feeder_combout\,
	ena => \LP|dut|lcd_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|lcd_data\(6));

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

ww_LCD_RW <= \LCD_RW~output_o\;

ww_LCD_RS <= \LCD_RS~output_o\;

ww_LCD_EN <= \LCD_EN~output_o\;

ww_LCD_DATA(0) <= \LCD_DATA[0]~output_o\;

ww_LCD_DATA(1) <= \LCD_DATA[1]~output_o\;

ww_LCD_DATA(2) <= \LCD_DATA[2]~output_o\;

ww_LCD_DATA(3) <= \LCD_DATA[3]~output_o\;

ww_LCD_DATA(4) <= \LCD_DATA[4]~output_o\;

ww_LCD_DATA(5) <= \LCD_DATA[5]~output_o\;

ww_LCD_DATA(6) <= \LCD_DATA[6]~output_o\;

ww_LCD_DATA(7) <= \LCD_DATA[7]~output_o\;

GPIO(8) <= \GPIO[8]~output_o\;

GPIO(9) <= \GPIO[9]~output_o\;

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

GPIO(2) <= \GPIO[2]~output_o\;

GPIO(3) <= \GPIO[3]~output_o\;

GPIO(4) <= \GPIO[4]~output_o\;

GPIO(5) <= \GPIO[5]~output_o\;

GPIO(6) <= \GPIO[6]~output_o\;

GPIO(7) <= \GPIO[7]~output_o\;

GPIO(10) <= \GPIO[10]~output_o\;

GPIO(11) <= \GPIO[11]~output_o\;

GPIO(12) <= \GPIO[12]~output_o\;
END structure;


