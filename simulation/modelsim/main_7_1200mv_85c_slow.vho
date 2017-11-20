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

-- DATE "11/20/2017 15:16:06"

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
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(8 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0);
	LCD_RW : BUFFER std_logic;
	LCD_RS : BUFFER std_logic;
	LCD_EN : BUFFER std_logic;
	LCD_DATA : BUFFER std_logic_vector(7 DOWNTO 0);
	GPIO : BUFFER std_logic_vector(35 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- GPIO[9]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
-- GPIO[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[3]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[4]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[5]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[7]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[8]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[10]	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[11]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_GPIO : std_logic_vector(35 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CT|current_state.state_print~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
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
SIGNAL \GPIO[9]~input_o\ : std_logic;
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
SIGNAL \GPIO[1]~input_o\ : std_logic;
SIGNAL \GPIO[2]~input_o\ : std_logic;
SIGNAL \GPIO[3]~input_o\ : std_logic;
SIGNAL \GPIO[4]~input_o\ : std_logic;
SIGNAL \GPIO[5]~input_o\ : std_logic;
SIGNAL \GPIO[6]~input_o\ : std_logic;
SIGNAL \GPIO[7]~input_o\ : std_logic;
SIGNAL \GPIO[8]~input_o\ : std_logic;
SIGNAL \GPIO[10]~input_o\ : std_logic;
SIGNAL \GPIO[11]~input_o\ : std_logic;
SIGNAL \GPIO[9]~output_o\ : std_logic;
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
SIGNAL \GPIO[2]~output_o\ : std_logic;
SIGNAL \GPIO[3]~output_o\ : std_logic;
SIGNAL \GPIO[4]~output_o\ : std_logic;
SIGNAL \GPIO[5]~output_o\ : std_logic;
SIGNAL \GPIO[6]~output_o\ : std_logic;
SIGNAL \GPIO[7]~output_o\ : std_logic;
SIGNAL \GPIO[8]~output_o\ : std_logic;
SIGNAL \GPIO[10]~output_o\ : std_logic;
SIGNAL \GPIO[11]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
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
SIGNAL \CT|count~24_combout\ : std_logic;
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
SIGNAL \CT|count~1_combout\ : std_logic;
SIGNAL \CT|Add0~43\ : std_logic;
SIGNAL \CT|Add0~44_combout\ : std_logic;
SIGNAL \CT|count~0_combout\ : std_logic;
SIGNAL \CT|Add0~45\ : std_logic;
SIGNAL \CT|Add0~46_combout\ : std_logic;
SIGNAL \CT|count~23_combout\ : std_logic;
SIGNAL \CT|Add0~47\ : std_logic;
SIGNAL \CT|Add0~48_combout\ : std_logic;
SIGNAL \CT|count~25_combout\ : std_logic;
SIGNAL \CT|Add0~49\ : std_logic;
SIGNAL \CT|Add0~50_combout\ : std_logic;
SIGNAL \CT|current_state.state_wait_blue~0_combout\ : std_logic;
SIGNAL \CT|current_state.state_wait_blue~q\ : std_logic;
SIGNAL \CT|current_state.state_read_green~q\ : std_logic;
SIGNAL \CT|current_state.state_wait_green~q\ : std_logic;
SIGNAL \CT|current_state.state_print~q\ : std_logic;
SIGNAL \CT|LessThan0~34_combout\ : std_logic;
SIGNAL \CT|Add0~51\ : std_logic;
SIGNAL \CT|Add0~52_combout\ : std_logic;
SIGNAL \CT|WideOr2~combout\ : std_logic;
SIGNAL \CT|current_state.state_wait~q\ : std_logic;
SIGNAL \CT|LessThan0~5_combout\ : std_logic;
SIGNAL \CT|LessThan0~36_combout\ : std_logic;
SIGNAL \CT|LessThan0~4_combout\ : std_logic;
SIGNAL \CT|LessThan0~23_combout\ : std_logic;
SIGNAL \CT|LessThan0~22_combout\ : std_logic;
SIGNAL \CT|LessThan0~24_combout\ : std_logic;
SIGNAL \CT|LessThan0~18_combout\ : std_logic;
SIGNAL \CT|LessThan0~17_combout\ : std_logic;
SIGNAL \CT|LessThan0~19_combout\ : std_logic;
SIGNAL \CT|LessThan0~14_combout\ : std_logic;
SIGNAL \CT|LessThan0~15_combout\ : std_logic;
SIGNAL \CT|LessThan0~16_combout\ : std_logic;
SIGNAL \CT|LessThan0~37_combout\ : std_logic;
SIGNAL \CT|LessThan0~11_combout\ : std_logic;
SIGNAL \CT|LessThan0~12_combout\ : std_logic;
SIGNAL \CT|LessThan0~9_combout\ : std_logic;
SIGNAL \CT|LessThan0~10_combout\ : std_logic;
SIGNAL \CT|LessThan0~13_combout\ : std_logic;
SIGNAL \CT|LessThan0~6_combout\ : std_logic;
SIGNAL \CT|LessThan0~7_combout\ : std_logic;
SIGNAL \CT|LessThan0~8_combout\ : std_logic;
SIGNAL \CT|LessThan0~20_combout\ : std_logic;
SIGNAL \CT|LessThan0~21_combout\ : std_logic;
SIGNAL \CT|LessThan0~25_combout\ : std_logic;
SIGNAL \CT|LessThan0~26_combout\ : std_logic;
SIGNAL \CT|LessThan0~27_combout\ : std_logic;
SIGNAL \CT|LessThan0~28_combout\ : std_logic;
SIGNAL \CT|LessThan0~29_combout\ : std_logic;
SIGNAL \CT|LessThan0~30_combout\ : std_logic;
SIGNAL \CT|LessThan0~31_combout\ : std_logic;
SIGNAL \CT|LessThan0~32_combout\ : std_logic;
SIGNAL \CT|LessThan0~33_combout\ : std_logic;
SIGNAL \CT|LessThan0~35_combout\ : std_logic;
SIGNAL \CT|current_state.state_read_blue~q\ : std_logic;
SIGNAL \CT|LIGHT_BLUE~0_combout\ : std_logic;
SIGNAL \CT|current_state.state_print~clkctrl_outclk\ : std_logic;
SIGNAL \CT|LIGHT_BLUE~combout\ : std_logic;
SIGNAL \CT|LIGHT_GREEN~0_combout\ : std_logic;
SIGNAL \CT|LIGHT_GREEN~combout\ : std_logic;
SIGNAL \CT|PRINT~combout\ : std_logic;
SIGNAL \LP|dut|Add0~0_combout\ : std_logic;
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
SIGNAL \LP|dut|LessThan0~6_combout\ : std_logic;
SIGNAL \LP|dut|Add0~51\ : std_logic;
SIGNAL \LP|dut|Add0~52_combout\ : std_logic;
SIGNAL \LP|dut|Selector7~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan0~7_combout\ : std_logic;
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
SIGNAL \LP|dut|LessThan0~8_combout\ : std_logic;
SIGNAL \LP|dut|LessThan0~3_combout\ : std_logic;
SIGNAL \LP|dut|LessThan0~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan0~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan0~2_combout\ : std_logic;
SIGNAL \LP|dut|LessThan0~4_combout\ : std_logic;
SIGNAL \LP|dut|LessThan0~5_combout\ : std_logic;
SIGNAL \LP|dut|LessThan0~9_combout\ : std_logic;
SIGNAL \LP|dut|rw~0_combout\ : std_logic;
SIGNAL \LP|dut|state.power_up~q\ : std_logic;
SIGNAL \LP|dut|Selector36~0_combout\ : std_logic;
SIGNAL \LP|dut|state.send~q\ : std_logic;
SIGNAL \LP|dut|LessThan4~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan4~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan4~2_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~4_combout\ : std_logic;
SIGNAL \LP|dut|busy~5_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~12_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~13_combout\ : std_logic;
SIGNAL \LP|dut|LessThan4~4_combout\ : std_logic;
SIGNAL \LP|dut|LessThan1~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan6~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan6~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan6~2_combout\ : std_logic;
SIGNAL \LP|dut|LessThan6~3_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~2_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~3_combout\ : std_logic;
SIGNAL \LP|dut|busy~4_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~5_combout\ : std_logic;
SIGNAL \LP|dut|LessThan8~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan8~2_combout\ : std_logic;
SIGNAL \LP|dut|LessThan8~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan8~3_combout\ : std_logic;
SIGNAL \LP|dut|LessThan8~4_combout\ : std_logic;
SIGNAL \LP|dut|LessThan7~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan7~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan7~2_combout\ : std_logic;
SIGNAL \LP|dut|lcd_data[4]~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan1~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~6_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~7_combout\ : std_logic;
SIGNAL \LP|dut|LessThan1~2_combout\ : std_logic;
SIGNAL \LP|dut|LessThan6~4_combout\ : std_logic;
SIGNAL \LP|dut|LessThan5~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan5~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan5~2_combout\ : std_logic;
SIGNAL \LP|dut|LessThan2~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan2~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan2~2_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~9_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~8_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~10_combout\ : std_logic;
SIGNAL \LP|dut|clk_count~0_combout\ : std_logic;
SIGNAL \LP|dut|clk_count~1_combout\ : std_logic;
SIGNAL \LP|dut|clk_count~2_combout\ : std_logic;
SIGNAL \LP|dut|clk_count[22]~3_combout\ : std_logic;
SIGNAL \LP|dut|clk_count[22]~4_combout\ : std_logic;
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
SIGNAL \LP|dut|LessThan9~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan9~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan9~2_combout\ : std_logic;
SIGNAL \LP|dut|LessThan9~4_combout\ : std_logic;
SIGNAL \LP|dut|LessThan9~3_combout\ : std_logic;
SIGNAL \LP|dut|LessThan9~5_combout\ : std_logic;
SIGNAL \LP|dut|LessThan9~6_combout\ : std_logic;
SIGNAL \LP|dut|busy~6_combout\ : std_logic;
SIGNAL \LP|dut|busy~8_combout\ : std_logic;
SIGNAL \LP|dut|busy~7_combout\ : std_logic;
SIGNAL \LP|dut|Selector34~0_combout\ : std_logic;
SIGNAL \LP|dut|state.initialize~q\ : std_logic;
SIGNAL \LP|dut|busy~q\ : std_logic;
SIGNAL \LP|Mux28~0_combout\ : std_logic;
SIGNAL \LP|process_0~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \LP|char~0_combout\ : std_logic;
SIGNAL \LP|char~1_combout\ : std_logic;
SIGNAL \LP|Mux10~0_combout\ : std_logic;
SIGNAL \LP|lcd_enable~0_combout\ : std_logic;
SIGNAL \LP|lcd_enable~q\ : std_logic;
SIGNAL \LP|dut|Selector35~0_combout\ : std_logic;
SIGNAL \LP|dut|Selector35~1_combout\ : std_logic;
SIGNAL \LP|dut|state.ready~q\ : std_logic;
SIGNAL \LP|dut|Selector37~0_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~2_combout\ : std_logic;
SIGNAL \LP|dut|rs~0_combout\ : std_logic;
SIGNAL \LP|dut|rs~q\ : std_logic;
SIGNAL \LP|dut|Selector47~12_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~18_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~13_combout\ : std_logic;
SIGNAL \LP|dut|LessThan10~0_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~14_combout\ : std_logic;
SIGNAL \LP|dut|LessThan9~7_combout\ : std_logic;
SIGNAL \LP|dut|LessThan12~0_combout\ : std_logic;
SIGNAL \LP|dut|LessThan12~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan12~2_combout\ : std_logic;
SIGNAL \LP|dut|LessThan10~3_combout\ : std_logic;
SIGNAL \LP|dut|LessThan10~2_combout\ : std_logic;
SIGNAL \LP|dut|LessThan10~1_combout\ : std_logic;
SIGNAL \LP|dut|LessThan10~4_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~15_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~16_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~9_combout\ : std_logic;
SIGNAL \LP|dut|LessThan2~3_combout\ : std_logic;
SIGNAL \LP|dut|LessThan4~3_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~10_combout\ : std_logic;
SIGNAL \LP|dut|LessThan3~11_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~6_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~7_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~8_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~4_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~3_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~5_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~11_combout\ : std_logic;
SIGNAL \LP|dut|Selector47~17_combout\ : std_logic;
SIGNAL \LP|dut|e~q\ : std_logic;
SIGNAL \LP|Add0~0_combout\ : std_logic;
SIGNAL \LP|Mux24~0_combout\ : std_logic;
SIGNAL \LP|lcd_bus[0]~0_combout\ : std_logic;
SIGNAL \LP|lcd_bus~5_combout\ : std_logic;
SIGNAL \LP|lcd_bus~6_combout\ : std_logic;
SIGNAL \LP|lcd_bus~7_combout\ : std_logic;
SIGNAL \LP|dut|Selector44~0_combout\ : std_logic;
SIGNAL \LP|dut|Selector46~0_combout\ : std_logic;
SIGNAL \LP|dut|Selector46~1_combout\ : std_logic;
SIGNAL \LP|dut|lcd_data[4]~1_combout\ : std_logic;
SIGNAL \LP|Mux23~0_combout\ : std_logic;
SIGNAL \LP|Mux23~1_combout\ : std_logic;
SIGNAL \LP|Mux8~0_combout\ : std_logic;
SIGNAL \LP|lcd_bus[1]~1_combout\ : std_logic;
SIGNAL \LP|Mux8~1_combout\ : std_logic;
SIGNAL \LP|Mux8~2_combout\ : std_logic;
SIGNAL \LP|dut|Selector45~0_combout\ : std_logic;
SIGNAL \LP|dut|Selector45~1_combout\ : std_logic;
SIGNAL \LP|dut|Selector45~2_combout\ : std_logic;
SIGNAL \LP|Mux22~0_combout\ : std_logic;
SIGNAL \LP|Mux22~1_combout\ : std_logic;
SIGNAL \LP|lcd_bus[2]~2_combout\ : std_logic;
SIGNAL \LP|Mux7~0_combout\ : std_logic;
SIGNAL \LP|Mux7~1_combout\ : std_logic;
SIGNAL \LP|dut|Selector44~1_combout\ : std_logic;
SIGNAL \LP|dut|Selector44~2_combout\ : std_logic;
SIGNAL \LP|dut|Selector44~3_combout\ : std_logic;
SIGNAL \LP|dut|Selector44~4_combout\ : std_logic;
SIGNAL \LP|Mux21~1_combout\ : std_logic;
SIGNAL \LP|Mux21~0_combout\ : std_logic;
SIGNAL \LP|Mux6~0_combout\ : std_logic;
SIGNAL \LP|lcd_bus[3]~3_combout\ : std_logic;
SIGNAL \LP|Mux6~1_combout\ : std_logic;
SIGNAL \LP|Mux6~2_combout\ : std_logic;
SIGNAL \LP|dut|Selector43~2_combout\ : std_logic;
SIGNAL \LP|Mux5~0_combout\ : std_logic;
SIGNAL \LP|Mux20~1_combout\ : std_logic;
SIGNAL \LP|Mux20~0_combout\ : std_logic;
SIGNAL \LP|lcd_bus[4]~4_combout\ : std_logic;
SIGNAL \LP|Mux5~1_combout\ : std_logic;
SIGNAL \LP|Mux5~2_combout\ : std_logic;
SIGNAL \LP|dut|Selector42~2_combout\ : std_logic;
SIGNAL \LP|dut|Selector42~3_combout\ : std_logic;
SIGNAL \LP|dut|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LP|lcd_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \LP|dut|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \LP|char\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CT|count\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \LP|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \LP|ALT_INV_char\ : std_logic_vector(0 DOWNTO 0);

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
HEX0 <= ww_HEX0;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
LCD_RW <= ww_LCD_RW;
LCD_RS <= ww_LCD_RS;
LCD_EN <= ww_LCD_EN;
LCD_DATA <= ww_LCD_DATA;
GPIO <= ww_GPIO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\CT|current_state.state_print~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CT|current_state.state_print~q\);
\LP|ALT_INV_Add0~0_combout\ <= NOT \LP|Add0~0_combout\;
\LP|ALT_INV_char\(0) <= NOT \LP|char\(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

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

-- Location: IOOBUF_X94_Y0_N9
\GPIO[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CT|LIGHT_BLUE~combout\,
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
	i => \CT|LIGHT_GREEN~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO[11]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

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
	i => \CT|PRINT~combout\,
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

-- Location: LCCOMB_X99_Y37_N8
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

-- Location: LCCOMB_X99_Y37_N18
\CT|count~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~24_combout\ = (!\CT|LessThan0~35_combout\ & \CT|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~35_combout\,
	datac => \CT|Add0~50_combout\,
	combout => \CT|count~24_combout\);

-- Location: FF_X99_Y37_N19
\CT|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~24_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(25));

-- Location: LCCOMB_X101_Y37_N6
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

-- Location: LCCOMB_X101_Y37_N0
\CT|count~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~22_combout\ = (!\CT|LessThan0~35_combout\ & \CT|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~35_combout\,
	datad => \CT|Add0~0_combout\,
	combout => \CT|count~22_combout\);

-- Location: FF_X101_Y37_N1
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

-- Location: LCCOMB_X101_Y37_N8
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

-- Location: LCCOMB_X99_Y37_N24
\CT|count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~21_combout\ = (!\CT|LessThan0~35_combout\ & \CT|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~35_combout\,
	datac => \CT|Add0~2_combout\,
	combout => \CT|count~21_combout\);

-- Location: FF_X99_Y37_N25
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

-- Location: LCCOMB_X101_Y37_N10
\CT|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~4_combout\ = (\CT|count\(2) & (\CT|Add0~3\ $ (GND))) # (!\CT|count\(2) & (!\CT|Add0~3\ & VCC))
-- \CT|Add0~5\ = CARRY((\CT|count\(2) & !\CT|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CT|count\(2),
	datad => VCC,
	cin => \CT|Add0~3\,
	combout => \CT|Add0~4_combout\,
	cout => \CT|Add0~5\);

-- Location: LCCOMB_X99_Y37_N30
\CT|count~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~20_combout\ = (!\CT|LessThan0~35_combout\ & \CT|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~35_combout\,
	datac => \CT|Add0~4_combout\,
	combout => \CT|count~20_combout\);

-- Location: FF_X99_Y37_N31
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

-- Location: LCCOMB_X101_Y37_N12
\CT|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~6_combout\ = (\CT|count\(3) & (!\CT|Add0~5\)) # (!\CT|count\(3) & ((\CT|Add0~5\) # (GND)))
-- \CT|Add0~7\ = CARRY((!\CT|Add0~5\) # (!\CT|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CT|count\(3),
	datad => VCC,
	cin => \CT|Add0~5\,
	combout => \CT|Add0~6_combout\,
	cout => \CT|Add0~7\);

-- Location: LCCOMB_X99_Y37_N28
\CT|count~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~19_combout\ = (!\CT|LessThan0~35_combout\ & \CT|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~35_combout\,
	datad => \CT|Add0~6_combout\,
	combout => \CT|count~19_combout\);

-- Location: FF_X99_Y37_N29
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

-- Location: LCCOMB_X101_Y37_N14
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

-- Location: LCCOMB_X99_Y37_N2
\CT|count~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~18_combout\ = (!\CT|LessThan0~35_combout\ & \CT|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~35_combout\,
	datad => \CT|Add0~8_combout\,
	combout => \CT|count~18_combout\);

-- Location: FF_X99_Y37_N3
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

-- Location: LCCOMB_X101_Y37_N16
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

-- Location: LCCOMB_X102_Y37_N12
\CT|count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~17_combout\ = (!\CT|LessThan0~35_combout\ & \CT|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~35_combout\,
	datac => \CT|Add0~10_combout\,
	combout => \CT|count~17_combout\);

-- Location: FF_X102_Y37_N13
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

-- Location: LCCOMB_X101_Y37_N18
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

-- Location: LCCOMB_X99_Y37_N16
\CT|count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~16_combout\ = (!\CT|LessThan0~35_combout\ & \CT|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~35_combout\,
	datac => \CT|Add0~12_combout\,
	combout => \CT|count~16_combout\);

-- Location: FF_X99_Y37_N17
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

-- Location: LCCOMB_X101_Y37_N20
\CT|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~14_combout\ = (\CT|count\(7) & (!\CT|Add0~13\)) # (!\CT|count\(7) & ((\CT|Add0~13\) # (GND)))
-- \CT|Add0~15\ = CARRY((!\CT|Add0~13\) # (!\CT|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CT|count\(7),
	datad => VCC,
	cin => \CT|Add0~13\,
	combout => \CT|Add0~14_combout\,
	cout => \CT|Add0~15\);

-- Location: LCCOMB_X101_Y37_N2
\CT|count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~15_combout\ = (!\CT|LessThan0~35_combout\ & \CT|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~35_combout\,
	datad => \CT|Add0~14_combout\,
	combout => \CT|count~15_combout\);

-- Location: FF_X101_Y37_N3
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

-- Location: LCCOMB_X101_Y37_N22
\CT|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~16_combout\ = (\CT|count\(8) & (\CT|Add0~15\ $ (GND))) # (!\CT|count\(8) & (!\CT|Add0~15\ & VCC))
-- \CT|Add0~17\ = CARRY((\CT|count\(8) & !\CT|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CT|count\(8),
	datad => VCC,
	cin => \CT|Add0~15\,
	combout => \CT|Add0~16_combout\,
	cout => \CT|Add0~17\);

-- Location: LCCOMB_X102_Y37_N22
\CT|count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~14_combout\ = (!\CT|LessThan0~35_combout\ & \CT|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~35_combout\,
	datad => \CT|Add0~16_combout\,
	combout => \CT|count~14_combout\);

-- Location: FF_X102_Y37_N23
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

-- Location: LCCOMB_X101_Y37_N24
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

-- Location: LCCOMB_X102_Y37_N24
\CT|count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~13_combout\ = (!\CT|LessThan0~35_combout\ & \CT|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~35_combout\,
	datad => \CT|Add0~18_combout\,
	combout => \CT|count~13_combout\);

-- Location: FF_X102_Y37_N25
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

-- Location: LCCOMB_X101_Y37_N26
\CT|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~20_combout\ = (\CT|count\(10) & (\CT|Add0~19\ $ (GND))) # (!\CT|count\(10) & (!\CT|Add0~19\ & VCC))
-- \CT|Add0~21\ = CARRY((\CT|count\(10) & !\CT|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CT|count\(10),
	datad => VCC,
	cin => \CT|Add0~19\,
	combout => \CT|Add0~20_combout\,
	cout => \CT|Add0~21\);

-- Location: LCCOMB_X102_Y37_N18
\CT|count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~12_combout\ = (!\CT|LessThan0~35_combout\ & \CT|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~35_combout\,
	datac => \CT|Add0~20_combout\,
	combout => \CT|count~12_combout\);

-- Location: FF_X102_Y37_N19
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

-- Location: LCCOMB_X101_Y37_N28
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

-- Location: LCCOMB_X101_Y37_N4
\CT|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~11_combout\ = (!\CT|LessThan0~35_combout\ & \CT|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~35_combout\,
	datab => \CT|Add0~22_combout\,
	combout => \CT|count~11_combout\);

-- Location: FF_X101_Y37_N5
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

-- Location: LCCOMB_X101_Y37_N30
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

-- Location: LCCOMB_X102_Y37_N20
\CT|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~10_combout\ = (!\CT|LessThan0~35_combout\ & \CT|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~35_combout\,
	datad => \CT|Add0~24_combout\,
	combout => \CT|count~10_combout\);

-- Location: FF_X102_Y37_N21
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

-- Location: LCCOMB_X101_Y36_N0
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

-- Location: LCCOMB_X100_Y36_N14
\CT|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~9_combout\ = (\CT|Add0~26_combout\ & !\CT|LessThan0~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CT|Add0~26_combout\,
	datad => \CT|LessThan0~35_combout\,
	combout => \CT|count~9_combout\);

-- Location: FF_X100_Y36_N15
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

-- Location: LCCOMB_X101_Y36_N2
\CT|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~28_combout\ = (\CT|count\(14) & (\CT|Add0~27\ $ (GND))) # (!\CT|count\(14) & (!\CT|Add0~27\ & VCC))
-- \CT|Add0~29\ = CARRY((\CT|count\(14) & !\CT|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CT|count\(14),
	datad => VCC,
	cin => \CT|Add0~27\,
	combout => \CT|Add0~28_combout\,
	cout => \CT|Add0~29\);

-- Location: LCCOMB_X100_Y36_N12
\CT|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~8_combout\ = (\CT|Add0~28_combout\ & !\CT|LessThan0~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~28_combout\,
	datad => \CT|LessThan0~35_combout\,
	combout => \CT|count~8_combout\);

-- Location: FF_X100_Y36_N13
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

-- Location: LCCOMB_X101_Y36_N4
\CT|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~30_combout\ = (\CT|count\(15) & (!\CT|Add0~29\)) # (!\CT|count\(15) & ((\CT|Add0~29\) # (GND)))
-- \CT|Add0~31\ = CARRY((!\CT|Add0~29\) # (!\CT|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CT|count\(15),
	datad => VCC,
	cin => \CT|Add0~29\,
	combout => \CT|Add0~30_combout\,
	cout => \CT|Add0~31\);

-- Location: LCCOMB_X100_Y36_N6
\CT|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~7_combout\ = (\CT|Add0~30_combout\ & !\CT|LessThan0~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~30_combout\,
	datad => \CT|LessThan0~35_combout\,
	combout => \CT|count~7_combout\);

-- Location: FF_X100_Y36_N7
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

-- Location: LCCOMB_X101_Y36_N6
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

-- Location: LCCOMB_X100_Y36_N16
\CT|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~6_combout\ = (\CT|Add0~32_combout\ & !\CT|LessThan0~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~32_combout\,
	datad => \CT|LessThan0~35_combout\,
	combout => \CT|count~6_combout\);

-- Location: FF_X100_Y36_N17
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

-- Location: LCCOMB_X101_Y36_N8
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

-- Location: LCCOMB_X100_Y36_N30
\CT|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~5_combout\ = (\CT|Add0~34_combout\ & !\CT|LessThan0~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CT|Add0~34_combout\,
	datad => \CT|LessThan0~35_combout\,
	combout => \CT|count~5_combout\);

-- Location: FF_X100_Y36_N31
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

-- Location: LCCOMB_X101_Y36_N10
\CT|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~36_combout\ = (\CT|count\(18) & (\CT|Add0~35\ $ (GND))) # (!\CT|count\(18) & (!\CT|Add0~35\ & VCC))
-- \CT|Add0~37\ = CARRY((\CT|count\(18) & !\CT|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CT|count\(18),
	datad => VCC,
	cin => \CT|Add0~35\,
	combout => \CT|Add0~36_combout\,
	cout => \CT|Add0~37\);

-- Location: LCCOMB_X100_Y36_N4
\CT|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~4_combout\ = (!\CT|LessThan0~35_combout\ & \CT|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~35_combout\,
	datac => \CT|Add0~36_combout\,
	combout => \CT|count~4_combout\);

-- Location: FF_X100_Y36_N5
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

-- Location: LCCOMB_X101_Y36_N12
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

-- Location: LCCOMB_X99_Y36_N6
\CT|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~3_combout\ = (\CT|Add0~38_combout\ & !\CT|LessThan0~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~38_combout\,
	datad => \CT|LessThan0~35_combout\,
	combout => \CT|count~3_combout\);

-- Location: FF_X99_Y36_N7
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

-- Location: LCCOMB_X101_Y36_N14
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

-- Location: LCCOMB_X99_Y36_N28
\CT|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~2_combout\ = (\CT|Add0~40_combout\ & !\CT|LessThan0~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CT|Add0~40_combout\,
	datad => \CT|LessThan0~35_combout\,
	combout => \CT|count~2_combout\);

-- Location: FF_X99_Y36_N29
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

-- Location: LCCOMB_X101_Y36_N16
\CT|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~42_combout\ = (\CT|count\(21) & (!\CT|Add0~41\)) # (!\CT|count\(21) & ((\CT|Add0~41\) # (GND)))
-- \CT|Add0~43\ = CARRY((!\CT|Add0~41\) # (!\CT|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CT|count\(21),
	datad => VCC,
	cin => \CT|Add0~41\,
	combout => \CT|Add0~42_combout\,
	cout => \CT|Add0~43\);

-- Location: LCCOMB_X102_Y37_N2
\CT|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~1_combout\ = (!\CT|LessThan0~35_combout\ & \CT|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~35_combout\,
	datad => \CT|Add0~42_combout\,
	combout => \CT|count~1_combout\);

-- Location: FF_X102_Y37_N3
\CT|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(21));

-- Location: LCCOMB_X101_Y36_N18
\CT|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~44_combout\ = (\CT|count\(22) & (\CT|Add0~43\ $ (GND))) # (!\CT|count\(22) & (!\CT|Add0~43\ & VCC))
-- \CT|Add0~45\ = CARRY((\CT|count\(22) & !\CT|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CT|count\(22),
	datad => VCC,
	cin => \CT|Add0~43\,
	combout => \CT|Add0~44_combout\,
	cout => \CT|Add0~45\);

-- Location: LCCOMB_X102_Y37_N16
\CT|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~0_combout\ = (!\CT|LessThan0~35_combout\ & \CT|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CT|LessThan0~35_combout\,
	datad => \CT|Add0~44_combout\,
	combout => \CT|count~0_combout\);

-- Location: FF_X102_Y37_N17
\CT|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(22));

-- Location: LCCOMB_X101_Y36_N20
\CT|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~46_combout\ = (\CT|count\(23) & (!\CT|Add0~45\)) # (!\CT|count\(23) & ((\CT|Add0~45\) # (GND)))
-- \CT|Add0~47\ = CARRY((!\CT|Add0~45\) # (!\CT|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CT|count\(23),
	datad => VCC,
	cin => \CT|Add0~45\,
	combout => \CT|Add0~46_combout\,
	cout => \CT|Add0~47\);

-- Location: LCCOMB_X102_Y37_N30
\CT|count~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~23_combout\ = (!\CT|LessThan0~35_combout\ & \CT|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~35_combout\,
	datad => \CT|Add0~46_combout\,
	combout => \CT|count~23_combout\);

-- Location: FF_X102_Y37_N31
\CT|count[23]\ : dffeas
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
	q => \CT|count\(23));

-- Location: LCCOMB_X101_Y36_N22
\CT|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~48_combout\ = (\CT|count\(24) & (\CT|Add0~47\ $ (GND))) # (!\CT|count\(24) & (!\CT|Add0~47\ & VCC))
-- \CT|Add0~49\ = CARRY((\CT|count\(24) & !\CT|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CT|count\(24),
	datad => VCC,
	cin => \CT|Add0~47\,
	combout => \CT|Add0~48_combout\,
	cout => \CT|Add0~49\);

-- Location: LCCOMB_X102_Y37_N28
\CT|count~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|count~25_combout\ = (!\CT|LessThan0~35_combout\ & \CT|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~35_combout\,
	datad => \CT|Add0~48_combout\,
	combout => \CT|count~25_combout\);

-- Location: FF_X102_Y37_N29
\CT|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CT|count~25_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|count\(24));

-- Location: LCCOMB_X101_Y36_N24
\CT|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~50_combout\ = (\CT|count\(25) & (!\CT|Add0~49\)) # (!\CT|count\(25) & ((\CT|Add0~49\) # (GND)))
-- \CT|Add0~51\ = CARRY((!\CT|Add0~49\) # (!\CT|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CT|count\(25),
	datad => VCC,
	cin => \CT|Add0~49\,
	combout => \CT|Add0~50_combout\,
	cout => \CT|Add0~51\);

-- Location: LCCOMB_X99_Y37_N26
\CT|current_state.state_wait_blue~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|current_state.state_wait_blue~0_combout\ = !\CT|current_state.state_read_blue~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CT|current_state.state_read_blue~q\,
	combout => \CT|current_state.state_wait_blue~0_combout\);

-- Location: FF_X99_Y37_N27
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
	ena => \CT|LessThan0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|current_state.state_wait_blue~q\);

-- Location: FF_X100_Y37_N5
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
	ena => \CT|LessThan0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|current_state.state_read_green~q\);

-- Location: FF_X100_Y37_N9
\CT|current_state.state_wait_green\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CT|current_state.state_read_green~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \CT|LessThan0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|current_state.state_wait_green~q\);

-- Location: FF_X100_Y37_N13
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
	ena => \CT|LessThan0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|current_state.state_print~q\);

-- Location: LCCOMB_X100_Y36_N28
\CT|LessThan0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~34_combout\ = (\CT|Add0~48_combout\ & (\CT|Add0~50_combout\ $ (!\CT|current_state.state_print~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CT|Add0~50_combout\,
	datac => \CT|current_state.state_print~q\,
	datad => \CT|Add0~48_combout\,
	combout => \CT|LessThan0~34_combout\);

-- Location: LCCOMB_X101_Y36_N26
\CT|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|Add0~52_combout\ = !\CT|Add0~51\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \CT|Add0~51\,
	combout => \CT|Add0~52_combout\);

-- Location: LCCOMB_X100_Y37_N16
\CT|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|WideOr2~combout\ = (\CT|current_state.state_wait~q\) # (\CT|current_state.state_print~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CT|current_state.state_wait~q\,
	datad => \CT|current_state.state_print~q\,
	combout => \CT|WideOr2~combout\);

-- Location: FF_X100_Y37_N23
\CT|current_state.state_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \CT|WideOr2~combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \CT|LessThan0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|current_state.state_wait~q\);

-- Location: LCCOMB_X100_Y36_N2
\CT|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~5_combout\ = (\CT|Add0~36_combout\ & ((\CT|current_state.state_print~q\ & (\CT|Add0~40_combout\ & \CT|Add0~38_combout\)) # (!\CT|current_state.state_print~q\ & (!\CT|Add0~40_combout\ & !\CT|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|current_state.state_print~q\,
	datab => \CT|Add0~40_combout\,
	datac => \CT|Add0~36_combout\,
	datad => \CT|Add0~38_combout\,
	combout => \CT|LessThan0~5_combout\);

-- Location: LCCOMB_X100_Y36_N10
\CT|LessThan0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~36_combout\ = (\CT|current_state.state_wait~q\ & (((\CT|LessThan0~5_combout\) # (\CT|Add0~42_combout\)))) # (!\CT|current_state.state_wait~q\ & (\CT|current_state.state_print~q\ & (\CT|LessThan0~5_combout\ & \CT|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|current_state.state_print~q\,
	datab => \CT|current_state.state_wait~q\,
	datac => \CT|LessThan0~5_combout\,
	datad => \CT|Add0~42_combout\,
	combout => \CT|LessThan0~36_combout\);

-- Location: LCCOMB_X100_Y36_N0
\CT|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~4_combout\ = (\CT|Add0~46_combout\ & (\CT|Add0~50_combout\ & (\CT|current_state.state_print~q\ & \CT|Add0~44_combout\))) # (!\CT|Add0~46_combout\ & (!\CT|Add0~50_combout\ & (!\CT|current_state.state_print~q\ & !\CT|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~46_combout\,
	datab => \CT|Add0~50_combout\,
	datac => \CT|current_state.state_print~q\,
	datad => \CT|Add0~44_combout\,
	combout => \CT|LessThan0~4_combout\);

-- Location: LCCOMB_X100_Y36_N26
\CT|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~23_combout\ = (\CT|current_state.state_wait~q\ & (!\CT|Add0~34_combout\ & (!\CT|Add0~36_combout\))) # (!\CT|current_state.state_wait~q\ & (\CT|Add0~34_combout\ & (\CT|Add0~36_combout\ $ (\CT|current_state.state_print~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|current_state.state_wait~q\,
	datab => \CT|Add0~34_combout\,
	datac => \CT|Add0~36_combout\,
	datad => \CT|current_state.state_print~q\,
	combout => \CT|LessThan0~23_combout\);

-- Location: LCCOMB_X100_Y36_N24
\CT|LessThan0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~22_combout\ = (\CT|current_state.state_print~q\ & (\CT|Add0~38_combout\ & \CT|Add0~40_combout\)) # (!\CT|current_state.state_print~q\ & (!\CT|Add0~38_combout\ & !\CT|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|current_state.state_print~q\,
	datab => \CT|Add0~38_combout\,
	datac => \CT|Add0~40_combout\,
	combout => \CT|LessThan0~22_combout\);

-- Location: LCCOMB_X100_Y36_N8
\CT|LessThan0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~24_combout\ = (\CT|LessThan0~23_combout\ & (\CT|LessThan0~22_combout\ & (\CT|Add0~34_combout\ $ (!\CT|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~23_combout\,
	datab => \CT|LessThan0~22_combout\,
	datac => \CT|Add0~34_combout\,
	datad => \CT|Add0~42_combout\,
	combout => \CT|LessThan0~24_combout\);

-- Location: LCCOMB_X99_Y37_N14
\CT|LessThan0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~18_combout\ = (\CT|Add0~10_combout\) # ((\CT|Add0~12_combout\) # ((\CT|Add0~6_combout\ & !\CT|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~10_combout\,
	datab => \CT|Add0~6_combout\,
	datac => \CT|Add0~12_combout\,
	datad => \CT|Add0~14_combout\,
	combout => \CT|LessThan0~18_combout\);

-- Location: LCCOMB_X99_Y37_N0
\CT|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~17_combout\ = (\CT|Add0~0_combout\) # ((\CT|Add0~2_combout\) # ((\CT|Add0~4_combout\) # (\CT|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~0_combout\,
	datab => \CT|Add0~2_combout\,
	datac => \CT|Add0~4_combout\,
	datad => \CT|Add0~8_combout\,
	combout => \CT|LessThan0~17_combout\);

-- Location: LCCOMB_X99_Y37_N4
\CT|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~19_combout\ = (\CT|Add0~14_combout\ & ((\CT|current_state.state_wait~q\) # ((\CT|LessThan0~18_combout\)))) # (!\CT|Add0~14_combout\ & (\CT|current_state.state_wait~q\ & ((\CT|LessThan0~18_combout\) # (\CT|LessThan0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~14_combout\,
	datab => \CT|current_state.state_wait~q\,
	datac => \CT|LessThan0~18_combout\,
	datad => \CT|LessThan0~17_combout\,
	combout => \CT|LessThan0~19_combout\);

-- Location: LCCOMB_X100_Y37_N8
\CT|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~14_combout\ = (\CT|Add0~4_combout\) # ((\CT|Add0~2_combout\) # (\CT|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~4_combout\,
	datab => \CT|Add0~2_combout\,
	datad => \CT|Add0~6_combout\,
	combout => \CT|LessThan0~14_combout\);

-- Location: LCCOMB_X99_Y37_N20
\CT|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~15_combout\ = (\CT|Add0~0_combout\) # ((\CT|LessThan0~14_combout\) # (\CT|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~0_combout\,
	datac => \CT|LessThan0~14_combout\,
	datad => \CT|Add0~8_combout\,
	combout => \CT|LessThan0~15_combout\);

-- Location: LCCOMB_X99_Y37_N10
\CT|LessThan0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~16_combout\ = (\CT|Add0~14_combout\ & ((\CT|current_state.state_wait~q\) # ((\CT|Add0~12_combout\) # (\CT|LessThan0~15_combout\)))) # (!\CT|Add0~14_combout\ & (\CT|current_state.state_wait~q\ & ((\CT|Add0~12_combout\) # 
-- (\CT|LessThan0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~14_combout\,
	datab => \CT|current_state.state_wait~q\,
	datac => \CT|Add0~12_combout\,
	datad => \CT|LessThan0~15_combout\,
	combout => \CT|LessThan0~16_combout\);

-- Location: LCCOMB_X99_Y37_N12
\CT|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~37_combout\ = (\CT|current_state.state_print~q\ & (((\CT|LessThan0~19_combout\) # (\CT|LessThan0~16_combout\)))) # (!\CT|current_state.state_print~q\ & (\CT|LessThan0~19_combout\ & ((\CT|current_state.state_wait~q\) # 
-- (\CT|LessThan0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|current_state.state_print~q\,
	datab => \CT|current_state.state_wait~q\,
	datac => \CT|LessThan0~19_combout\,
	datad => \CT|LessThan0~16_combout\,
	combout => \CT|LessThan0~37_combout\);

-- Location: LCCOMB_X100_Y37_N18
\CT|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~11_combout\ = (\CT|Add0~22_combout\) # ((\CT|WideOr2~combout\ & ((\CT|Add0~16_combout\) # (\CT|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~16_combout\,
	datab => \CT|WideOr2~combout\,
	datac => \CT|Add0~20_combout\,
	datad => \CT|Add0~22_combout\,
	combout => \CT|LessThan0~11_combout\);

-- Location: LCCOMB_X100_Y37_N10
\CT|LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~12_combout\ = (\CT|LessThan0~11_combout\ & ((\CT|Add0~28_combout\ & (\CT|Add0~24_combout\ & \CT|current_state.state_print~q\)) # (!\CT|Add0~28_combout\ & (!\CT|Add0~24_combout\ & !\CT|current_state.state_print~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~28_combout\,
	datab => \CT|LessThan0~11_combout\,
	datac => \CT|Add0~24_combout\,
	datad => \CT|current_state.state_print~q\,
	combout => \CT|LessThan0~12_combout\);

-- Location: LCCOMB_X100_Y37_N0
\CT|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~9_combout\ = (\CT|Add0~26_combout\ & ((\CT|current_state.state_wait~q\) # ((\CT|Add0~24_combout\ & !\CT|current_state.state_print~q\)))) # (!\CT|Add0~26_combout\ & (\CT|Add0~24_combout\ & (\CT|current_state.state_wait~q\ & 
-- !\CT|current_state.state_print~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~24_combout\,
	datab => \CT|Add0~26_combout\,
	datac => \CT|current_state.state_wait~q\,
	datad => \CT|current_state.state_print~q\,
	combout => \CT|LessThan0~9_combout\);

-- Location: LCCOMB_X100_Y37_N4
\CT|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~10_combout\ = (\CT|Add0~28_combout\ & ((\CT|LessThan0~9_combout\) # (!\CT|current_state.state_print~q\))) # (!\CT|Add0~28_combout\ & (\CT|LessThan0~9_combout\ & !\CT|current_state.state_print~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~28_combout\,
	datab => \CT|LessThan0~9_combout\,
	datad => \CT|current_state.state_print~q\,
	combout => \CT|LessThan0~10_combout\);

-- Location: LCCOMB_X100_Y37_N2
\CT|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~13_combout\ = (\CT|LessThan0~10_combout\) # ((\CT|LessThan0~12_combout\ & (\CT|current_state.state_wait~q\ $ (\CT|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~12_combout\,
	datab => \CT|LessThan0~10_combout\,
	datac => \CT|current_state.state_wait~q\,
	datad => \CT|Add0~26_combout\,
	combout => \CT|LessThan0~13_combout\);

-- Location: LCCOMB_X102_Y37_N26
\CT|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~6_combout\ = (\CT|Add0~26_combout\ & (!\CT|current_state.state_wait~q\ & (\CT|Add0~28_combout\ $ (!\CT|current_state.state_print~q\)))) # (!\CT|Add0~26_combout\ & (\CT|current_state.state_wait~q\ & (\CT|Add0~28_combout\ $ 
-- (!\CT|current_state.state_print~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~26_combout\,
	datab => \CT|current_state.state_wait~q\,
	datac => \CT|Add0~28_combout\,
	datad => \CT|current_state.state_print~q\,
	combout => \CT|LessThan0~6_combout\);

-- Location: LCCOMB_X102_Y37_N4
\CT|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~7_combout\ = (\CT|LessThan0~6_combout\ & (\CT|current_state.state_print~q\ $ (!\CT|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CT|current_state.state_print~q\,
	datac => \CT|LessThan0~6_combout\,
	datad => \CT|Add0~24_combout\,
	combout => \CT|LessThan0~7_combout\);

-- Location: LCCOMB_X102_Y37_N10
\CT|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~8_combout\ = (\CT|LessThan0~7_combout\ & (\CT|Add0~18_combout\ & (\CT|Add0~20_combout\ $ (\CT|WideOr2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~20_combout\,
	datab => \CT|WideOr2~combout\,
	datac => \CT|LessThan0~7_combout\,
	datad => \CT|Add0~18_combout\,
	combout => \CT|LessThan0~8_combout\);

-- Location: LCCOMB_X102_Y37_N8
\CT|LessThan0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~20_combout\ = (\CT|LessThan0~7_combout\ & ((\CT|Add0~20_combout\ & (!\CT|WideOr2~combout\ & \CT|Add0~16_combout\)) # (!\CT|Add0~20_combout\ & (\CT|WideOr2~combout\ & !\CT|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~20_combout\,
	datab => \CT|WideOr2~combout\,
	datac => \CT|LessThan0~7_combout\,
	datad => \CT|Add0~16_combout\,
	combout => \CT|LessThan0~20_combout\);

-- Location: LCCOMB_X100_Y37_N14
\CT|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~21_combout\ = (\CT|LessThan0~13_combout\) # ((\CT|LessThan0~8_combout\) # ((\CT|LessThan0~37_combout\ & \CT|LessThan0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~37_combout\,
	datab => \CT|LessThan0~13_combout\,
	datac => \CT|LessThan0~8_combout\,
	datad => \CT|LessThan0~20_combout\,
	combout => \CT|LessThan0~21_combout\);

-- Location: LCCOMB_X100_Y37_N30
\CT|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~25_combout\ = (\CT|LessThan0~24_combout\ & (\CT|LessThan0~21_combout\ & (\CT|current_state.state_print~q\ $ (!\CT|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~24_combout\,
	datab => \CT|current_state.state_print~q\,
	datac => \CT|LessThan0~21_combout\,
	datad => \CT|Add0~30_combout\,
	combout => \CT|LessThan0~25_combout\);

-- Location: LCCOMB_X100_Y36_N18
\CT|LessThan0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~26_combout\ = (\CT|Add0~34_combout\ & (!\CT|Add0~36_combout\ & !\CT|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CT|Add0~34_combout\,
	datac => \CT|Add0~36_combout\,
	datad => \CT|Add0~42_combout\,
	combout => \CT|LessThan0~26_combout\);

-- Location: LCCOMB_X100_Y36_N20
\CT|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~27_combout\ = (\CT|LessThan0~22_combout\ & (\CT|current_state.state_wait~q\ & \CT|LessThan0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CT|LessThan0~22_combout\,
	datac => \CT|current_state.state_wait~q\,
	datad => \CT|LessThan0~26_combout\,
	combout => \CT|LessThan0~27_combout\);

-- Location: LCCOMB_X101_Y36_N28
\CT|LessThan0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~28_combout\ = (\CT|Add0~36_combout\ & (!\CT|WideOr2~combout\ & (\CT|Add0~34_combout\ $ (!\CT|Add0~42_combout\)))) # (!\CT|Add0~36_combout\ & (\CT|WideOr2~combout\ & (\CT|Add0~34_combout\ $ (!\CT|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~36_combout\,
	datab => \CT|Add0~34_combout\,
	datac => \CT|WideOr2~combout\,
	datad => \CT|Add0~42_combout\,
	combout => \CT|LessThan0~28_combout\);

-- Location: LCCOMB_X101_Y36_N30
\CT|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~29_combout\ = (\CT|Add0~38_combout\) # ((\CT|Add0~40_combout\) # ((\CT|Add0~30_combout\ & \CT|LessThan0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~38_combout\,
	datab => \CT|Add0~30_combout\,
	datac => \CT|Add0~40_combout\,
	datad => \CT|LessThan0~28_combout\,
	combout => \CT|LessThan0~29_combout\);

-- Location: LCCOMB_X100_Y37_N20
\CT|LessThan0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~30_combout\ = (!\CT|current_state.state_print~q\ & (\CT|LessThan0~29_combout\ & (\CT|current_state.state_wait~q\ $ (\CT|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|current_state.state_wait~q\,
	datab => \CT|current_state.state_print~q\,
	datac => \CT|Add0~42_combout\,
	datad => \CT|LessThan0~29_combout\,
	combout => \CT|LessThan0~30_combout\);

-- Location: LCCOMB_X100_Y37_N24
\CT|LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~31_combout\ = (\CT|LessThan0~27_combout\) # ((\CT|LessThan0~30_combout\) # ((\CT|LessThan0~24_combout\ & \CT|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~24_combout\,
	datab => \CT|LessThan0~27_combout\,
	datac => \CT|Add0~32_combout\,
	datad => \CT|LessThan0~30_combout\,
	combout => \CT|LessThan0~31_combout\);

-- Location: LCCOMB_X100_Y37_N26
\CT|LessThan0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~32_combout\ = (\CT|LessThan0~4_combout\ & ((\CT|LessThan0~36_combout\) # ((\CT|LessThan0~25_combout\) # (\CT|LessThan0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~36_combout\,
	datab => \CT|LessThan0~4_combout\,
	datac => \CT|LessThan0~25_combout\,
	datad => \CT|LessThan0~31_combout\,
	combout => \CT|LessThan0~32_combout\);

-- Location: LCCOMB_X100_Y36_N22
\CT|LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~33_combout\ = (!\CT|current_state.state_print~q\ & ((\CT|Add0~46_combout\) # ((\CT|Add0~50_combout\) # (\CT|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|Add0~46_combout\,
	datab => \CT|Add0~50_combout\,
	datac => \CT|current_state.state_print~q\,
	datad => \CT|Add0~44_combout\,
	combout => \CT|LessThan0~33_combout\);

-- Location: LCCOMB_X100_Y37_N6
\CT|LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LessThan0~35_combout\ = (\CT|LessThan0~34_combout\) # ((\CT|Add0~52_combout\) # ((\CT|LessThan0~32_combout\) # (\CT|LessThan0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LessThan0~34_combout\,
	datab => \CT|Add0~52_combout\,
	datac => \CT|LessThan0~32_combout\,
	datad => \CT|LessThan0~33_combout\,
	combout => \CT|LessThan0~35_combout\);

-- Location: FF_X99_Y37_N9
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
	ena => \CT|LessThan0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|current_state.state_read_blue~q\);

-- Location: LCCOMB_X99_Y37_N22
\CT|LIGHT_BLUE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LIGHT_BLUE~0_combout\ = (\CT|current_state.state_wait_blue~q\) # (!\CT|current_state.state_read_blue~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CT|current_state.state_read_blue~q\,
	datad => \CT|current_state.state_wait_blue~q\,
	combout => \CT|LIGHT_BLUE~0_combout\);

-- Location: CLKCTRL_G7
\CT|current_state.state_print~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CT|current_state.state_print~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CT|current_state.state_print~clkctrl_outclk\);

-- Location: LCCOMB_X99_Y37_N6
\CT|LIGHT_BLUE\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LIGHT_BLUE~combout\ = (GLOBAL(\CT|current_state.state_print~clkctrl_outclk\) & (\CT|LIGHT_BLUE~combout\)) # (!GLOBAL(\CT|current_state.state_print~clkctrl_outclk\) & ((\CT|LIGHT_BLUE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LIGHT_BLUE~combout\,
	datac => \CT|LIGHT_BLUE~0_combout\,
	datad => \CT|current_state.state_print~clkctrl_outclk\,
	combout => \CT|LIGHT_BLUE~combout\);

-- Location: LCCOMB_X100_Y37_N28
\CT|LIGHT_GREEN~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LIGHT_GREEN~0_combout\ = (\CT|current_state.state_wait_green~q\) # (\CT|current_state.state_read_green~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CT|current_state.state_wait_green~q\,
	datad => \CT|current_state.state_read_green~q\,
	combout => \CT|LIGHT_GREEN~0_combout\);

-- Location: LCCOMB_X100_Y37_N12
\CT|LIGHT_GREEN\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|LIGHT_GREEN~combout\ = (GLOBAL(\CT|current_state.state_print~clkctrl_outclk\) & (\CT|LIGHT_GREEN~combout\)) # (!GLOBAL(\CT|current_state.state_print~clkctrl_outclk\) & ((\CT|LIGHT_GREEN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CT|LIGHT_GREEN~combout\,
	datab => \CT|current_state.state_print~clkctrl_outclk\,
	datad => \CT|LIGHT_GREEN~0_combout\,
	combout => \CT|LIGHT_GREEN~combout\);

-- Location: LCCOMB_X100_Y37_N22
\CT|PRINT\ : cycloneive_lcell_comb
-- Equation(s):
-- \CT|PRINT~combout\ = (\CT|WideOr2~combout\ & ((!\CT|current_state.state_wait~q\))) # (!\CT|WideOr2~combout\ & (\CT|PRINT~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CT|PRINT~combout\,
	datac => \CT|current_state.state_wait~q\,
	datad => \CT|WideOr2~combout\,
	combout => \CT|PRINT~combout\);

-- Location: LCCOMB_X6_Y51_N0
\LP|dut|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~0_combout\ = \LP|dut|clk_count\(0) $ (VCC)
-- \LP|dut|Add0~1\ = CARRY(\LP|dut|clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(0),
	datad => VCC,
	combout => \LP|dut|Add0~0_combout\,
	cout => \LP|dut|Add0~1\);

-- Location: LCCOMB_X6_Y51_N22
\LP|dut|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~22_combout\ = (\LP|dut|clk_count\(11) & (!\LP|dut|Add0~21\)) # (!\LP|dut|clk_count\(11) & ((\LP|dut|Add0~21\) # (GND)))
-- \LP|dut|Add0~23\ = CARRY((!\LP|dut|Add0~21\) # (!\LP|dut|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(11),
	datad => VCC,
	cin => \LP|dut|Add0~21\,
	combout => \LP|dut|Add0~22_combout\,
	cout => \LP|dut|Add0~23\);

-- Location: LCCOMB_X6_Y51_N24
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

-- Location: LCCOMB_X7_Y50_N0
\LP|dut|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector21~0_combout\ = (\LP|dut|Add0~24_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~24_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector21~0_combout\);

-- Location: FF_X7_Y50_N1
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

-- Location: LCCOMB_X6_Y51_N26
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

-- Location: LCCOMB_X5_Y50_N14
\LP|dut|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector20~0_combout\ = (\LP|dut|Add0~26_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~26_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector20~0_combout\);

-- Location: FF_X5_Y50_N15
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

-- Location: LCCOMB_X6_Y51_N28
\LP|dut|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~28_combout\ = (\LP|dut|clk_count\(14) & (\LP|dut|Add0~27\ $ (GND))) # (!\LP|dut|clk_count\(14) & (!\LP|dut|Add0~27\ & VCC))
-- \LP|dut|Add0~29\ = CARRY((\LP|dut|clk_count\(14) & !\LP|dut|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(14),
	datad => VCC,
	cin => \LP|dut|Add0~27\,
	combout => \LP|dut|Add0~28_combout\,
	cout => \LP|dut|Add0~29\);

-- Location: LCCOMB_X5_Y50_N20
\LP|dut|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector19~0_combout\ = (\LP|dut|Add0~28_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~28_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector19~0_combout\);

-- Location: FF_X5_Y50_N21
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

-- Location: LCCOMB_X6_Y51_N30
\LP|dut|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~30_combout\ = (\LP|dut|clk_count\(15) & (!\LP|dut|Add0~29\)) # (!\LP|dut|clk_count\(15) & ((\LP|dut|Add0~29\) # (GND)))
-- \LP|dut|Add0~31\ = CARRY((!\LP|dut|Add0~29\) # (!\LP|dut|clk_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(15),
	datad => VCC,
	cin => \LP|dut|Add0~29\,
	combout => \LP|dut|Add0~30_combout\,
	cout => \LP|dut|Add0~31\);

-- Location: LCCOMB_X5_Y50_N2
\LP|dut|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector18~0_combout\ = (\LP|dut|Add0~30_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~30_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector18~0_combout\);

-- Location: FF_X5_Y50_N3
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

-- Location: LCCOMB_X6_Y50_N0
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

-- Location: LCCOMB_X5_Y50_N24
\LP|dut|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector17~0_combout\ = (\LP|dut|Add0~32_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~32_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector17~0_combout\);

-- Location: FF_X5_Y50_N25
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

-- Location: LCCOMB_X6_Y50_N2
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

-- Location: LCCOMB_X7_Y50_N30
\LP|dut|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector16~0_combout\ = (\LP|dut|Add0~34_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~34_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector16~0_combout\);

-- Location: FF_X7_Y50_N31
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

-- Location: LCCOMB_X6_Y50_N4
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

-- Location: LCCOMB_X7_Y50_N28
\LP|dut|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector15~0_combout\ = (\LP|dut|Add0~36_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~36_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector15~0_combout\);

-- Location: FF_X7_Y50_N29
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

-- Location: LCCOMB_X6_Y50_N6
\LP|dut|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~38_combout\ = (\LP|dut|clk_count\(19) & (!\LP|dut|Add0~37\)) # (!\LP|dut|clk_count\(19) & ((\LP|dut|Add0~37\) # (GND)))
-- \LP|dut|Add0~39\ = CARRY((!\LP|dut|Add0~37\) # (!\LP|dut|clk_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(19),
	datad => VCC,
	cin => \LP|dut|Add0~37\,
	combout => \LP|dut|Add0~38_combout\,
	cout => \LP|dut|Add0~39\);

-- Location: LCCOMB_X7_Y50_N18
\LP|dut|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector14~0_combout\ = (\LP|dut|Add0~38_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~38_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector14~0_combout\);

-- Location: FF_X7_Y50_N19
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

-- Location: LCCOMB_X6_Y50_N8
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

-- Location: LCCOMB_X7_Y50_N20
\LP|dut|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector13~0_combout\ = (\LP|dut|Add0~40_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~40_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector13~0_combout\);

-- Location: FF_X7_Y50_N21
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

-- Location: LCCOMB_X6_Y50_N10
\LP|dut|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~42_combout\ = (\LP|dut|clk_count\(21) & (!\LP|dut|Add0~41\)) # (!\LP|dut|clk_count\(21) & ((\LP|dut|Add0~41\) # (GND)))
-- \LP|dut|Add0~43\ = CARRY((!\LP|dut|Add0~41\) # (!\LP|dut|clk_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(21),
	datad => VCC,
	cin => \LP|dut|Add0~41\,
	combout => \LP|dut|Add0~42_combout\,
	cout => \LP|dut|Add0~43\);

-- Location: LCCOMB_X7_Y50_N10
\LP|dut|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector12~0_combout\ = (\LP|dut|Add0~42_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~42_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector12~0_combout\);

-- Location: FF_X7_Y50_N11
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

-- Location: LCCOMB_X6_Y50_N12
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

-- Location: LCCOMB_X7_Y50_N4
\LP|dut|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector11~0_combout\ = (\LP|dut|Add0~44_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~44_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector11~0_combout\);

-- Location: FF_X7_Y50_N5
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

-- Location: LCCOMB_X6_Y50_N14
\LP|dut|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~46_combout\ = (\LP|dut|clk_count\(23) & (!\LP|dut|Add0~45\)) # (!\LP|dut|clk_count\(23) & ((\LP|dut|Add0~45\) # (GND)))
-- \LP|dut|Add0~47\ = CARRY((!\LP|dut|Add0~45\) # (!\LP|dut|clk_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(23),
	datad => VCC,
	cin => \LP|dut|Add0~45\,
	combout => \LP|dut|Add0~46_combout\,
	cout => \LP|dut|Add0~47\);

-- Location: LCCOMB_X7_Y50_N2
\LP|dut|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector10~0_combout\ = (\LP|dut|Add0~46_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~46_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector10~0_combout\);

-- Location: FF_X7_Y50_N3
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

-- Location: LCCOMB_X6_Y50_N16
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

-- Location: LCCOMB_X7_Y50_N8
\LP|dut|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector9~0_combout\ = (\LP|dut|Add0~48_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~48_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector9~0_combout\);

-- Location: FF_X7_Y50_N9
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

-- Location: LCCOMB_X6_Y50_N18
\LP|dut|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~50_combout\ = (\LP|dut|clk_count\(25) & (!\LP|dut|Add0~49\)) # (!\LP|dut|clk_count\(25) & ((\LP|dut|Add0~49\) # (GND)))
-- \LP|dut|Add0~51\ = CARRY((!\LP|dut|Add0~49\) # (!\LP|dut|clk_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(25),
	datad => VCC,
	cin => \LP|dut|Add0~49\,
	combout => \LP|dut|Add0~50_combout\,
	cout => \LP|dut|Add0~51\);

-- Location: LCCOMB_X7_Y50_N22
\LP|dut|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector8~0_combout\ = (\LP|dut|Add0~50_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~50_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector8~0_combout\);

-- Location: FF_X7_Y50_N23
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

-- Location: LCCOMB_X7_Y50_N12
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

-- Location: LCCOMB_X6_Y50_N20
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

-- Location: LCCOMB_X7_Y50_N6
\LP|dut|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector7~0_combout\ = (\LP|dut|Add0~52_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~52_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector7~0_combout\);

-- Location: FF_X7_Y50_N7
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

-- Location: LCCOMB_X7_Y50_N16
\LP|dut|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan0~7_combout\ = (\LP|dut|LessThan0~6_combout\ & !\LP|dut|clk_count\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan0~6_combout\,
	datad => \LP|dut|clk_count\(26),
	combout => \LP|dut|LessThan0~7_combout\);

-- Location: LCCOMB_X6_Y50_N22
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

-- Location: LCCOMB_X5_Y50_N28
\LP|dut|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector6~0_combout\ = (\LP|dut|Add0~54_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~54_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector6~0_combout\);

-- Location: FF_X5_Y50_N29
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

-- Location: LCCOMB_X6_Y50_N24
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

-- Location: LCCOMB_X5_Y50_N6
\LP|dut|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector5~0_combout\ = (\LP|dut|Add0~56_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~56_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector5~0_combout\);

-- Location: FF_X5_Y50_N7
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

-- Location: LCCOMB_X6_Y50_N26
\LP|dut|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~58_combout\ = (\LP|dut|clk_count\(29) & (!\LP|dut|Add0~57\)) # (!\LP|dut|clk_count\(29) & ((\LP|dut|Add0~57\) # (GND)))
-- \LP|dut|Add0~59\ = CARRY((!\LP|dut|Add0~57\) # (!\LP|dut|clk_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(29),
	datad => VCC,
	cin => \LP|dut|Add0~57\,
	combout => \LP|dut|Add0~58_combout\,
	cout => \LP|dut|Add0~59\);

-- Location: LCCOMB_X5_Y50_N16
\LP|dut|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector4~0_combout\ = (\LP|dut|Add0~58_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~58_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector4~0_combout\);

-- Location: FF_X5_Y50_N17
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

-- Location: LCCOMB_X6_Y50_N28
\LP|dut|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~60_combout\ = (\LP|dut|clk_count\(30) & (\LP|dut|Add0~59\ $ (GND))) # (!\LP|dut|clk_count\(30) & (!\LP|dut|Add0~59\ & VCC))
-- \LP|dut|Add0~61\ = CARRY((\LP|dut|clk_count\(30) & !\LP|dut|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(30),
	datad => VCC,
	cin => \LP|dut|Add0~59\,
	combout => \LP|dut|Add0~60_combout\,
	cout => \LP|dut|Add0~61\);

-- Location: LCCOMB_X4_Y50_N24
\LP|dut|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector3~0_combout\ = (\LP|dut|clk_count[22]~4_combout\ & \LP|dut|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|clk_count[22]~4_combout\,
	datad => \LP|dut|Add0~60_combout\,
	combout => \LP|dut|Selector3~0_combout\);

-- Location: FF_X4_Y50_N25
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

-- Location: LCCOMB_X6_Y50_N30
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

-- Location: LCCOMB_X3_Y50_N14
\LP|dut|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector2~0_combout\ = (\LP|dut|Add0~62_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~62_combout\,
	datac => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector2~0_combout\);

-- Location: FF_X3_Y50_N15
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

-- Location: LCCOMB_X5_Y50_N26
\LP|dut|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan0~8_combout\ = (!\LP|dut|clk_count\(28) & (!\LP|dut|clk_count\(29) & (!\LP|dut|clk_count\(30) & !\LP|dut|clk_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(28),
	datab => \LP|dut|clk_count\(29),
	datac => \LP|dut|clk_count\(30),
	datad => \LP|dut|clk_count\(27),
	combout => \LP|dut|LessThan0~8_combout\);

-- Location: LCCOMB_X5_Y50_N22
\LP|dut|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan0~3_combout\ = (!\LP|dut|clk_count\(15) & (!\LP|dut|clk_count\(14) & !\LP|dut|clk_count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(15),
	datac => \LP|dut|clk_count\(14),
	datad => \LP|dut|clk_count\(16),
	combout => \LP|dut|LessThan0~3_combout\);

-- Location: LCCOMB_X8_Y51_N8
\LP|dut|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan0~0_combout\ = (((!\LP|dut|clk_count\(6) & !\LP|dut|clk_count\(5))) # (!\LP|dut|clk_count\(7))) # (!\LP|dut|clk_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(8),
	datab => \LP|dut|clk_count\(6),
	datac => \LP|dut|clk_count\(5),
	datad => \LP|dut|clk_count\(7),
	combout => \LP|dut|LessThan0~0_combout\);

-- Location: LCCOMB_X8_Y51_N30
\LP|dut|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan0~1_combout\ = ((!\LP|dut|clk_count\(9) & \LP|dut|LessThan0~0_combout\)) # (!\LP|dut|clk_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(9),
	datac => \LP|dut|LessThan0~0_combout\,
	datad => \LP|dut|clk_count\(10),
	combout => \LP|dut|LessThan0~1_combout\);

-- Location: LCCOMB_X8_Y50_N28
\LP|dut|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan0~2_combout\ = ((\LP|dut|LessThan0~1_combout\ & (!\LP|dut|clk_count\(12) & !\LP|dut|clk_count\(11)))) # (!\LP|dut|clk_count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan0~1_combout\,
	datab => \LP|dut|clk_count\(13),
	datac => \LP|dut|clk_count\(12),
	datad => \LP|dut|clk_count\(11),
	combout => \LP|dut|LessThan0~2_combout\);

-- Location: LCCOMB_X8_Y50_N30
\LP|dut|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan0~4_combout\ = (((\LP|dut|LessThan0~3_combout\ & \LP|dut|LessThan0~2_combout\)) # (!\LP|dut|clk_count\(17))) # (!\LP|dut|clk_count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan0~3_combout\,
	datab => \LP|dut|clk_count\(18),
	datac => \LP|dut|clk_count\(17),
	datad => \LP|dut|LessThan0~2_combout\,
	combout => \LP|dut|LessThan0~4_combout\);

-- Location: LCCOMB_X8_Y50_N16
\LP|dut|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan0~5_combout\ = ((!\LP|dut|clk_count\(20) & (\LP|dut|LessThan0~4_combout\ & !\LP|dut|clk_count\(19)))) # (!\LP|dut|clk_count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(21),
	datab => \LP|dut|clk_count\(20),
	datac => \LP|dut|LessThan0~4_combout\,
	datad => \LP|dut|clk_count\(19),
	combout => \LP|dut|LessThan0~5_combout\);

-- Location: LCCOMB_X8_Y50_N22
\LP|dut|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan0~9_combout\ = (\LP|dut|clk_count\(31)) # ((\LP|dut|LessThan0~7_combout\ & (\LP|dut|LessThan0~8_combout\ & \LP|dut|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan0~7_combout\,
	datab => \LP|dut|clk_count\(31),
	datac => \LP|dut|LessThan0~8_combout\,
	datad => \LP|dut|LessThan0~5_combout\,
	combout => \LP|dut|LessThan0~9_combout\);

-- Location: LCCOMB_X2_Y50_N20
\LP|dut|rw~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|rw~0_combout\ = (\LP|dut|state.power_up~q\) # (!\LP|dut|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|state.power_up~q\,
	datad => \LP|dut|LessThan0~9_combout\,
	combout => \LP|dut|rw~0_combout\);

-- Location: FF_X2_Y50_N21
\LP|dut|state.power_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|rw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|state.power_up~q\);

-- Location: LCCOMB_X2_Y50_N8
\LP|dut|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector36~0_combout\ = (\LP|dut|Selector37~0_combout\) # ((\LP|dut|state.send~q\ & ((\LP|dut|LessThan9~6_combout\) # (\LP|dut|clk_count\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Selector37~0_combout\,
	datab => \LP|dut|LessThan9~6_combout\,
	datac => \LP|dut|state.send~q\,
	datad => \LP|dut|clk_count\(31),
	combout => \LP|dut|Selector36~0_combout\);

-- Location: FF_X2_Y50_N9
\LP|dut|state.send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|state.send~q\);

-- Location: LCCOMB_X7_Y51_N22
\LP|dut|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan4~1_combout\ = (\LP|dut|Add0~8_combout\ & (\LP|dut|Add0~10_combout\ & \LP|dut|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~8_combout\,
	datac => \LP|dut|Add0~10_combout\,
	datad => \LP|dut|Add0~12_combout\,
	combout => \LP|dut|LessThan4~1_combout\);

-- Location: LCCOMB_X7_Y51_N16
\LP|dut|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan4~0_combout\ = ((!\LP|dut|Add0~18_combout\) # (!\LP|dut|Add0~16_combout\)) # (!\LP|dut|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~20_combout\,
	datac => \LP|dut|Add0~16_combout\,
	datad => \LP|dut|Add0~18_combout\,
	combout => \LP|dut|LessThan4~0_combout\);

-- Location: LCCOMB_X7_Y51_N28
\LP|dut|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan4~2_combout\ = (!\LP|dut|Add0~22_combout\ & ((\LP|dut|LessThan4~0_combout\) # ((!\LP|dut|Add0~14_combout\ & !\LP|dut|LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~14_combout\,
	datab => \LP|dut|Add0~22_combout\,
	datac => \LP|dut|LessThan4~1_combout\,
	datad => \LP|dut|LessThan4~0_combout\,
	combout => \LP|dut|LessThan4~2_combout\);

-- Location: LCCOMB_X5_Y50_N30
\LP|dut|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~0_combout\ = (!\LP|dut|Add0~34_combout\ & (!\LP|dut|Add0~40_combout\ & (!\LP|dut|Add0~36_combout\ & !\LP|dut|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~34_combout\,
	datab => \LP|dut|Add0~40_combout\,
	datac => \LP|dut|Add0~36_combout\,
	datad => \LP|dut|Add0~38_combout\,
	combout => \LP|dut|LessThan3~0_combout\);

-- Location: LCCOMB_X5_Y50_N18
\LP|dut|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~4_combout\ = (!\LP|dut|Add0~26_combout\ & (!\LP|dut|Add0~32_combout\ & (!\LP|dut|Add0~30_combout\ & !\LP|dut|Add0~28_combout\)))

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
	combout => \LP|dut|LessThan3~4_combout\);

-- Location: LCCOMB_X5_Y50_N10
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

-- Location: LCCOMB_X5_Y50_N4
\LP|dut|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~1_combout\ = (!\LP|dut|Add0~42_combout\ & (!\LP|dut|Add0~44_combout\ & (!\LP|dut|Add0~46_combout\ & !\LP|dut|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~42_combout\,
	datab => \LP|dut|Add0~44_combout\,
	datac => \LP|dut|Add0~46_combout\,
	datad => \LP|dut|Add0~48_combout\,
	combout => \LP|dut|LessThan3~1_combout\);

-- Location: LCCOMB_X4_Y50_N0
\LP|dut|LessThan3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~12_combout\ = (!\LP|dut|Add0~50_combout\ & (!\LP|dut|Add0~52_combout\ & (!\LP|dut|Add0~54_combout\ & \LP|dut|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~50_combout\,
	datab => \LP|dut|Add0~52_combout\,
	datac => \LP|dut|Add0~54_combout\,
	datad => \LP|dut|LessThan3~1_combout\,
	combout => \LP|dut|LessThan3~12_combout\);

-- Location: LCCOMB_X4_Y50_N18
\LP|dut|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~13_combout\ = (\LP|dut|LessThan3~0_combout\ & (\LP|dut|LessThan3~4_combout\ & (\LP|dut|busy~5_combout\ & \LP|dut|LessThan3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan3~0_combout\,
	datab => \LP|dut|LessThan3~4_combout\,
	datac => \LP|dut|busy~5_combout\,
	datad => \LP|dut|LessThan3~12_combout\,
	combout => \LP|dut|LessThan3~13_combout\);

-- Location: LCCOMB_X4_Y50_N30
\LP|dut|LessThan4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan4~4_combout\ = (!\LP|dut|Add0~60_combout\ & (\LP|dut|LessThan3~13_combout\ & ((\LP|dut|LessThan4~2_combout\) # (!\LP|dut|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan4~2_combout\,
	datab => \LP|dut|Add0~60_combout\,
	datac => \LP|dut|Add0~24_combout\,
	datad => \LP|dut|LessThan3~13_combout\,
	combout => \LP|dut|LessThan4~4_combout\);

-- Location: LCCOMB_X4_Y51_N8
\LP|dut|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan1~0_combout\ = (!\LP|dut|Add0~20_combout\ & (!\LP|dut|Add0~18_combout\ & (!\LP|dut|Add0~24_combout\ & !\LP|dut|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~20_combout\,
	datab => \LP|dut|Add0~18_combout\,
	datac => \LP|dut|Add0~24_combout\,
	datad => \LP|dut|Add0~22_combout\,
	combout => \LP|dut|LessThan1~0_combout\);

-- Location: LCCOMB_X4_Y51_N30
\LP|dut|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan6~0_combout\ = (\LP|dut|LessThan1~0_combout\ & !\LP|dut|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|LessThan1~0_combout\,
	datad => \LP|dut|Add0~28_combout\,
	combout => \LP|dut|LessThan6~0_combout\);

-- Location: LCCOMB_X5_Y51_N18
\LP|dut|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan6~1_combout\ = (!\LP|dut|Add0~6_combout\ & (!\LP|dut|Add0~10_combout\ & (!\LP|dut|Add0~8_combout\ & !\LP|dut|Add0~4_combout\)))

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
	combout => \LP|dut|LessThan6~1_combout\);

-- Location: LCCOMB_X5_Y51_N8
\LP|dut|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan6~2_combout\ = (!\LP|dut|Add0~12_combout\ & (!\LP|dut|Add0~16_combout\ & (!\LP|dut|Add0~14_combout\ & \LP|dut|LessThan6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~12_combout\,
	datab => \LP|dut|Add0~16_combout\,
	datac => \LP|dut|Add0~14_combout\,
	datad => \LP|dut|LessThan6~1_combout\,
	combout => \LP|dut|LessThan6~2_combout\);

-- Location: LCCOMB_X5_Y50_N8
\LP|dut|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan6~3_combout\ = (\LP|dut|Add0~32_combout\ & (\LP|dut|Add0~30_combout\ & ((\LP|dut|Add0~28_combout\) # (\LP|dut|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~28_combout\,
	datab => \LP|dut|Add0~32_combout\,
	datac => \LP|dut|Add0~30_combout\,
	datad => \LP|dut|Add0~26_combout\,
	combout => \LP|dut|LessThan6~3_combout\);

-- Location: LCCOMB_X4_Y50_N10
\LP|dut|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~2_combout\ = (!\LP|dut|Add0~50_combout\ & (!\LP|dut|Add0~52_combout\ & (\LP|dut|LessThan3~0_combout\ & \LP|dut|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~50_combout\,
	datab => \LP|dut|Add0~52_combout\,
	datac => \LP|dut|LessThan3~0_combout\,
	datad => \LP|dut|LessThan3~1_combout\,
	combout => \LP|dut|LessThan3~2_combout\);

-- Location: LCCOMB_X4_Y50_N20
\LP|dut|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~3_combout\ = (!\LP|dut|Add0~56_combout\ & (!\LP|dut|Add0~54_combout\ & (!\LP|dut|Add0~58_combout\ & \LP|dut|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~56_combout\,
	datab => \LP|dut|Add0~54_combout\,
	datac => \LP|dut|Add0~58_combout\,
	datad => \LP|dut|LessThan3~2_combout\,
	combout => \LP|dut|LessThan3~3_combout\);

-- Location: LCCOMB_X4_Y50_N26
\LP|dut|busy~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|busy~4_combout\ = (\LP|dut|LessThan3~3_combout\ & (((\LP|dut|LessThan6~0_combout\ & \LP|dut|LessThan6~2_combout\)) # (!\LP|dut|LessThan6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan6~0_combout\,
	datab => \LP|dut|LessThan6~2_combout\,
	datac => \LP|dut|LessThan6~3_combout\,
	datad => \LP|dut|LessThan3~3_combout\,
	combout => \LP|dut|busy~4_combout\);

-- Location: LCCOMB_X4_Y51_N10
\LP|dut|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~5_combout\ = (\LP|dut|Add0~20_combout\ & \LP|dut|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~20_combout\,
	datad => \LP|dut|Add0~22_combout\,
	combout => \LP|dut|LessThan3~5_combout\);

-- Location: LCCOMB_X4_Y51_N0
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

-- Location: LCCOMB_X4_Y51_N4
\LP|dut|LessThan8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan8~2_combout\ = (((!\LP|dut|Add0~12_combout\ & !\LP|dut|LessThan8~0_combout\)) # (!\LP|dut|Add0~14_combout\)) # (!\LP|dut|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~12_combout\,
	datab => \LP|dut|LessThan8~0_combout\,
	datac => \LP|dut|Add0~16_combout\,
	datad => \LP|dut|Add0~14_combout\,
	combout => \LP|dut|LessThan8~2_combout\);

-- Location: LCCOMB_X4_Y51_N2
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

-- Location: LCCOMB_X4_Y51_N12
\LP|dut|LessThan8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan8~3_combout\ = (\LP|dut|LessThan8~1_combout\ & (((!\LP|dut|Add0~18_combout\ & \LP|dut|LessThan8~2_combout\)) # (!\LP|dut|LessThan3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan3~5_combout\,
	datab => \LP|dut|Add0~18_combout\,
	datac => \LP|dut|LessThan8~2_combout\,
	datad => \LP|dut|LessThan8~1_combout\,
	combout => \LP|dut|LessThan8~3_combout\);

-- Location: LCCOMB_X4_Y50_N22
\LP|dut|LessThan8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan8~4_combout\ = (!\LP|dut|Add0~60_combout\ & (\LP|dut|LessThan3~3_combout\ & ((\LP|dut|LessThan8~3_combout\) # (!\LP|dut|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan8~3_combout\,
	datab => \LP|dut|Add0~60_combout\,
	datac => \LP|dut|LessThan6~3_combout\,
	datad => \LP|dut|LessThan3~3_combout\,
	combout => \LP|dut|LessThan8~4_combout\);

-- Location: LCCOMB_X4_Y51_N6
\LP|dut|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan7~0_combout\ = (\LP|dut|Add0~14_combout\ & (\LP|dut|Add0~12_combout\ & (\LP|dut|Add0~16_combout\ & \LP|dut|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~14_combout\,
	datab => \LP|dut|Add0~12_combout\,
	datac => \LP|dut|Add0~16_combout\,
	datad => \LP|dut|LessThan8~0_combout\,
	combout => \LP|dut|LessThan7~0_combout\);

-- Location: LCCOMB_X4_Y51_N20
\LP|dut|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan7~1_combout\ = (!\LP|dut|Add0~28_combout\ & (\LP|dut|LessThan1~0_combout\ & ((!\LP|dut|LessThan7~0_combout\) # (!\LP|dut|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~28_combout\,
	datab => \LP|dut|Add0~6_combout\,
	datac => \LP|dut|LessThan1~0_combout\,
	datad => \LP|dut|LessThan7~0_combout\,
	combout => \LP|dut|LessThan7~1_combout\);

-- Location: LCCOMB_X4_Y50_N28
\LP|dut|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan7~2_combout\ = (!\LP|dut|Add0~60_combout\ & (\LP|dut|LessThan3~3_combout\ & ((\LP|dut|LessThan7~1_combout\) # (!\LP|dut|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan7~1_combout\,
	datab => \LP|dut|Add0~60_combout\,
	datac => \LP|dut|LessThan6~3_combout\,
	datad => \LP|dut|LessThan3~3_combout\,
	combout => \LP|dut|LessThan7~2_combout\);

-- Location: LCCOMB_X4_Y50_N4
\LP|dut|lcd_data[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|lcd_data[4]~0_combout\ = (!\LP|dut|LessThan8~4_combout\ & (!\LP|dut|LessThan7~2_combout\ & ((\LP|dut|Add0~60_combout\) # (!\LP|dut|busy~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|busy~4_combout\,
	datab => \LP|dut|Add0~60_combout\,
	datac => \LP|dut|LessThan8~4_combout\,
	datad => \LP|dut|LessThan7~2_combout\,
	combout => \LP|dut|lcd_data[4]~0_combout\);

-- Location: LCCOMB_X4_Y51_N26
\LP|dut|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan1~1_combout\ = (\LP|dut|LessThan1~0_combout\ & (((!\LP|dut|Add0~4_combout\ & !\LP|dut|Add0~6_combout\)) # (!\LP|dut|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~4_combout\,
	datab => \LP|dut|Add0~6_combout\,
	datac => \LP|dut|LessThan1~0_combout\,
	datad => \LP|dut|LessThan7~0_combout\,
	combout => \LP|dut|LessThan1~1_combout\);

-- Location: LCCOMB_X3_Y50_N2
\LP|dut|LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~6_combout\ = (!\LP|dut|Add0~52_combout\ & (!\LP|dut|Add0~54_combout\ & !\LP|dut|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~52_combout\,
	datac => \LP|dut|Add0~54_combout\,
	datad => \LP|dut|Add0~50_combout\,
	combout => \LP|dut|LessThan3~6_combout\);

-- Location: LCCOMB_X3_Y50_N20
\LP|dut|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~7_combout\ = (\LP|dut|LessThan3~0_combout\ & (\LP|dut|LessThan3~1_combout\ & \LP|dut|LessThan3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan3~0_combout\,
	datac => \LP|dut|LessThan3~1_combout\,
	datad => \LP|dut|LessThan3~6_combout\,
	combout => \LP|dut|LessThan3~7_combout\);

-- Location: LCCOMB_X3_Y50_N6
\LP|dut|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan1~2_combout\ = (\LP|dut|LessThan1~1_combout\ & (\LP|dut|LessThan3~4_combout\ & (\LP|dut|busy~5_combout\ & \LP|dut|LessThan3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan1~1_combout\,
	datab => \LP|dut|LessThan3~4_combout\,
	datac => \LP|dut|busy~5_combout\,
	datad => \LP|dut|LessThan3~7_combout\,
	combout => \LP|dut|LessThan1~2_combout\);

-- Location: LCCOMB_X5_Y51_N10
\LP|dut|LessThan6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan6~4_combout\ = (!\LP|dut|Add0~4_combout\ & (!\LP|dut|Add0~8_combout\ & !\LP|dut|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~4_combout\,
	datac => \LP|dut|Add0~8_combout\,
	datad => \LP|dut|Add0~6_combout\,
	combout => \LP|dut|LessThan6~4_combout\);

-- Location: LCCOMB_X5_Y51_N20
\LP|dut|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan5~0_combout\ = (!\LP|dut|Add0~14_combout\ & (((\LP|dut|LessThan6~4_combout\) # (!\LP|dut|Add0~10_combout\)) # (!\LP|dut|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~12_combout\,
	datab => \LP|dut|Add0~10_combout\,
	datac => \LP|dut|Add0~14_combout\,
	datad => \LP|dut|LessThan6~4_combout\,
	combout => \LP|dut|LessThan5~0_combout\);

-- Location: LCCOMB_X5_Y51_N30
\LP|dut|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan5~1_combout\ = (!\LP|dut|Add0~20_combout\ & (!\LP|dut|Add0~18_combout\ & ((\LP|dut|LessThan5~0_combout\) # (!\LP|dut|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~20_combout\,
	datab => \LP|dut|Add0~16_combout\,
	datac => \LP|dut|Add0~18_combout\,
	datad => \LP|dut|LessThan5~0_combout\,
	combout => \LP|dut|LessThan5~1_combout\);

-- Location: LCCOMB_X4_Y50_N8
\LP|dut|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan5~2_combout\ = (\LP|dut|LessThan3~13_combout\ & (((\LP|dut|LessThan5~1_combout\) # (!\LP|dut|Add0~22_combout\)) # (!\LP|dut|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~24_combout\,
	datab => \LP|dut|Add0~22_combout\,
	datac => \LP|dut|LessThan5~1_combout\,
	datad => \LP|dut|LessThan3~13_combout\,
	combout => \LP|dut|LessThan5~2_combout\);

-- Location: LCCOMB_X5_Y51_N22
\LP|dut|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan2~1_combout\ = ((!\LP|dut|Add0~18_combout\) # (!\LP|dut|Add0~14_combout\)) # (!\LP|dut|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~16_combout\,
	datac => \LP|dut|Add0~14_combout\,
	datad => \LP|dut|Add0~18_combout\,
	combout => \LP|dut|LessThan2~1_combout\);

-- Location: LCCOMB_X5_Y51_N24
\LP|dut|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan2~0_combout\ = (!\LP|dut|Add0~12_combout\ & (((!\LP|dut|Add0~6_combout\) # (!\LP|dut|Add0~8_combout\)) # (!\LP|dut|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~12_combout\,
	datab => \LP|dut|Add0~10_combout\,
	datac => \LP|dut|Add0~8_combout\,
	datad => \LP|dut|Add0~6_combout\,
	combout => \LP|dut|LessThan2~0_combout\);

-- Location: LCCOMB_X5_Y51_N28
\LP|dut|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan2~2_combout\ = ((!\LP|dut|Add0~20_combout\ & ((\LP|dut|LessThan2~1_combout\) # (\LP|dut|LessThan2~0_combout\)))) # (!\LP|dut|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~20_combout\,
	datab => \LP|dut|Add0~22_combout\,
	datac => \LP|dut|LessThan2~1_combout\,
	datad => \LP|dut|LessThan2~0_combout\,
	combout => \LP|dut|LessThan2~2_combout\);

-- Location: LCCOMB_X4_Y51_N14
\LP|dut|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~9_combout\ = ((!\LP|dut|Add0~8_combout\ & ((!\LP|dut|Add0~6_combout\) # (!\LP|dut|Add0~4_combout\)))) # (!\LP|dut|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~4_combout\,
	datab => \LP|dut|Add0~8_combout\,
	datac => \LP|dut|Add0~6_combout\,
	datad => \LP|dut|Add0~10_combout\,
	combout => \LP|dut|LessThan3~9_combout\);

-- Location: LCCOMB_X4_Y51_N28
\LP|dut|LessThan3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~8_combout\ = ((!\LP|dut|Add0~18_combout\ & ((!\LP|dut|Add0~16_combout\) # (!\LP|dut|Add0~14_combout\)))) # (!\LP|dut|LessThan3~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~14_combout\,
	datab => \LP|dut|Add0~18_combout\,
	datac => \LP|dut|Add0~16_combout\,
	datad => \LP|dut|LessThan3~5_combout\,
	combout => \LP|dut|LessThan3~8_combout\);

-- Location: LCCOMB_X4_Y51_N16
\LP|dut|LessThan3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~10_combout\ = (\LP|dut|LessThan3~8_combout\) # ((!\LP|dut|Add0~12_combout\ & (!\LP|dut|Add0~18_combout\ & \LP|dut|LessThan3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~12_combout\,
	datab => \LP|dut|Add0~18_combout\,
	datac => \LP|dut|LessThan3~9_combout\,
	datad => \LP|dut|LessThan3~8_combout\,
	combout => \LP|dut|LessThan3~10_combout\);

-- Location: LCCOMB_X4_Y50_N6
\LP|dut|clk_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|clk_count~0_combout\ = (!\LP|dut|Add0~24_combout\ & (\LP|dut|LessThan3~13_combout\ & ((\LP|dut|LessThan2~2_combout\) # (\LP|dut|LessThan3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~24_combout\,
	datab => \LP|dut|LessThan2~2_combout\,
	datac => \LP|dut|LessThan3~10_combout\,
	datad => \LP|dut|LessThan3~13_combout\,
	combout => \LP|dut|clk_count~0_combout\);

-- Location: LCCOMB_X4_Y50_N16
\LP|dut|clk_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|clk_count~1_combout\ = (!\LP|dut|Add0~60_combout\ & ((\LP|dut|LessThan1~2_combout\) # ((\LP|dut|LessThan5~2_combout\) # (\LP|dut|clk_count~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~60_combout\,
	datab => \LP|dut|LessThan1~2_combout\,
	datac => \LP|dut|LessThan5~2_combout\,
	datad => \LP|dut|clk_count~0_combout\,
	combout => \LP|dut|clk_count~1_combout\);

-- Location: LCCOMB_X4_Y50_N2
\LP|dut|clk_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|clk_count~2_combout\ = (\LP|dut|LessThan4~4_combout\) # ((\LP|dut|Add0~62_combout\) # ((\LP|dut|clk_count~1_combout\) # (!\LP|dut|lcd_data[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan4~4_combout\,
	datab => \LP|dut|Add0~62_combout\,
	datac => \LP|dut|lcd_data[4]~0_combout\,
	datad => \LP|dut|clk_count~1_combout\,
	combout => \LP|dut|clk_count~2_combout\);

-- Location: LCCOMB_X4_Y50_N12
\LP|dut|clk_count[22]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|clk_count[22]~3_combout\ = (\LP|dut|state.send~q\ & ((\LP|dut|clk_count\(31)) # ((\LP|dut|LessThan9~6_combout\)))) # (!\LP|dut|state.send~q\ & (((\LP|dut|clk_count~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(31),
	datab => \LP|dut|state.send~q\,
	datac => \LP|dut|LessThan9~6_combout\,
	datad => \LP|dut|clk_count~2_combout\,
	combout => \LP|dut|clk_count[22]~3_combout\);

-- Location: LCCOMB_X4_Y50_N14
\LP|dut|clk_count[22]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|clk_count[22]~4_combout\ = (!\LP|dut|state.ready~q\ & ((\LP|dut|state.power_up~q\ & ((\LP|dut|clk_count[22]~3_combout\))) # (!\LP|dut|state.power_up~q\ & (\LP|dut|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan0~9_combout\,
	datab => \LP|dut|state.power_up~q\,
	datac => \LP|dut|state.ready~q\,
	datad => \LP|dut|clk_count[22]~3_combout\,
	combout => \LP|dut|clk_count[22]~4_combout\);

-- Location: LCCOMB_X5_Y50_N0
\LP|dut|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector33~0_combout\ = (\LP|dut|Add0~0_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~0_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector33~0_combout\);

-- Location: FF_X5_Y50_N1
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

-- Location: LCCOMB_X6_Y51_N2
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

-- Location: LCCOMB_X5_Y51_N14
\LP|dut|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector32~0_combout\ = (\LP|dut|Add0~2_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~2_combout\,
	datac => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector32~0_combout\);

-- Location: FF_X5_Y51_N15
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

-- Location: LCCOMB_X6_Y51_N4
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

-- Location: LCCOMB_X5_Y51_N0
\LP|dut|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector31~0_combout\ = (\LP|dut|Add0~4_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~4_combout\,
	datac => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector31~0_combout\);

-- Location: FF_X5_Y51_N1
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

-- Location: LCCOMB_X6_Y51_N6
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

-- Location: LCCOMB_X5_Y51_N2
\LP|dut|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector30~0_combout\ = (\LP|dut|Add0~6_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~6_combout\,
	datac => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector30~0_combout\);

-- Location: FF_X5_Y51_N3
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

-- Location: LCCOMB_X6_Y51_N8
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

-- Location: LCCOMB_X5_Y51_N12
\LP|dut|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector29~0_combout\ = (\LP|dut|Add0~8_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~8_combout\,
	datac => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector29~0_combout\);

-- Location: FF_X5_Y51_N13
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

-- Location: LCCOMB_X6_Y51_N10
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

-- Location: LCCOMB_X5_Y50_N12
\LP|dut|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector28~0_combout\ = (\LP|dut|Add0~10_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|Add0~10_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector28~0_combout\);

-- Location: FF_X5_Y50_N13
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

-- Location: LCCOMB_X6_Y51_N12
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

-- Location: LCCOMB_X7_Y51_N20
\LP|dut|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector27~0_combout\ = (\LP|dut|Add0~12_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~12_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector27~0_combout\);

-- Location: FF_X7_Y51_N21
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

-- Location: LCCOMB_X6_Y51_N14
\LP|dut|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~14_combout\ = (\LP|dut|clk_count\(7) & (!\LP|dut|Add0~13\)) # (!\LP|dut|clk_count\(7) & ((\LP|dut|Add0~13\) # (GND)))
-- \LP|dut|Add0~15\ = CARRY((!\LP|dut|Add0~13\) # (!\LP|dut|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(7),
	datad => VCC,
	cin => \LP|dut|Add0~13\,
	combout => \LP|dut|Add0~14_combout\,
	cout => \LP|dut|Add0~15\);

-- Location: LCCOMB_X5_Y51_N16
\LP|dut|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector26~0_combout\ = (\LP|dut|Add0~14_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~14_combout\,
	datac => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector26~0_combout\);

-- Location: FF_X5_Y51_N17
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

-- Location: LCCOMB_X6_Y51_N16
\LP|dut|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~16_combout\ = (\LP|dut|clk_count\(8) & (\LP|dut|Add0~15\ $ (GND))) # (!\LP|dut|clk_count\(8) & (!\LP|dut|Add0~15\ & VCC))
-- \LP|dut|Add0~17\ = CARRY((\LP|dut|clk_count\(8) & !\LP|dut|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(8),
	datad => VCC,
	cin => \LP|dut|Add0~15\,
	combout => \LP|dut|Add0~16_combout\,
	cout => \LP|dut|Add0~17\);

-- Location: LCCOMB_X5_Y51_N26
\LP|dut|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector25~0_combout\ = (\LP|dut|Add0~16_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~16_combout\,
	datac => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector25~0_combout\);

-- Location: FF_X5_Y51_N27
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

-- Location: LCCOMB_X6_Y51_N18
\LP|dut|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~18_combout\ = (\LP|dut|clk_count\(9) & (!\LP|dut|Add0~17\)) # (!\LP|dut|clk_count\(9) & ((\LP|dut|Add0~17\) # (GND)))
-- \LP|dut|Add0~19\ = CARRY((!\LP|dut|Add0~17\) # (!\LP|dut|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(9),
	datad => VCC,
	cin => \LP|dut|Add0~17\,
	combout => \LP|dut|Add0~18_combout\,
	cout => \LP|dut|Add0~19\);

-- Location: LCCOMB_X5_Y51_N4
\LP|dut|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector24~0_combout\ = (\LP|dut|Add0~18_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~18_combout\,
	datac => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector24~0_combout\);

-- Location: FF_X5_Y51_N5
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

-- Location: LCCOMB_X6_Y51_N20
\LP|dut|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Add0~20_combout\ = (\LP|dut|clk_count\(10) & (\LP|dut|Add0~19\ $ (GND))) # (!\LP|dut|clk_count\(10) & (!\LP|dut|Add0~19\ & VCC))
-- \LP|dut|Add0~21\ = CARRY((\LP|dut|clk_count\(10) & !\LP|dut|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(10),
	datad => VCC,
	cin => \LP|dut|Add0~19\,
	combout => \LP|dut|Add0~20_combout\,
	cout => \LP|dut|Add0~21\);

-- Location: LCCOMB_X5_Y51_N6
\LP|dut|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector23~0_combout\ = (\LP|dut|Add0~20_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~20_combout\,
	datac => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector23~0_combout\);

-- Location: FF_X5_Y51_N7
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

-- Location: LCCOMB_X7_Y51_N26
\LP|dut|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector22~0_combout\ = (\LP|dut|Add0~22_combout\ & \LP|dut|clk_count[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~22_combout\,
	datad => \LP|dut|clk_count[22]~4_combout\,
	combout => \LP|dut|Selector22~0_combout\);

-- Location: FF_X7_Y51_N27
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

-- Location: LCCOMB_X8_Y50_N12
\LP|dut|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan9~0_combout\ = (!\LP|dut|clk_count\(17) & (!\LP|dut|clk_count\(19) & (!\LP|dut|clk_count\(13) & !\LP|dut|clk_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(17),
	datab => \LP|dut|clk_count\(19),
	datac => \LP|dut|clk_count\(13),
	datad => \LP|dut|clk_count\(20),
	combout => \LP|dut|LessThan9~0_combout\);

-- Location: LCCOMB_X8_Y50_N2
\LP|dut|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan9~1_combout\ = (!\LP|dut|clk_count\(12) & (\LP|dut|LessThan0~3_combout\ & \LP|dut|LessThan9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(12),
	datac => \LP|dut|LessThan0~3_combout\,
	datad => \LP|dut|LessThan9~0_combout\,
	combout => \LP|dut|LessThan9~1_combout\);

-- Location: LCCOMB_X8_Y50_N0
\LP|dut|LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan9~2_combout\ = (!\LP|dut|clk_count\(21) & (\LP|dut|LessThan9~1_combout\ & (\LP|dut|LessThan0~7_combout\ & !\LP|dut|clk_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(21),
	datab => \LP|dut|LessThan9~1_combout\,
	datac => \LP|dut|LessThan0~7_combout\,
	datad => \LP|dut|clk_count\(18),
	combout => \LP|dut|LessThan9~2_combout\);

-- Location: LCCOMB_X8_Y51_N22
\LP|dut|LessThan9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan9~4_combout\ = ((!\LP|dut|clk_count\(7)) # (!\LP|dut|clk_count\(8))) # (!\LP|dut|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|clk_count\(6),
	datac => \LP|dut|clk_count\(8),
	datad => \LP|dut|clk_count\(7),
	combout => \LP|dut|LessThan9~4_combout\);

-- Location: LCCOMB_X8_Y51_N12
\LP|dut|LessThan9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan9~3_combout\ = (!\LP|dut|clk_count\(3) & (!\LP|dut|clk_count\(5) & (!\LP|dut|clk_count\(2) & !\LP|dut|clk_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(3),
	datab => \LP|dut|clk_count\(5),
	datac => \LP|dut|clk_count\(2),
	datad => \LP|dut|clk_count\(4),
	combout => \LP|dut|LessThan9~3_combout\);

-- Location: LCCOMB_X8_Y51_N28
\LP|dut|LessThan9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan9~5_combout\ = (!\LP|dut|clk_count\(10) & (!\LP|dut|clk_count\(9) & ((\LP|dut|LessThan9~4_combout\) # (\LP|dut|LessThan9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(10),
	datab => \LP|dut|clk_count\(9),
	datac => \LP|dut|LessThan9~4_combout\,
	datad => \LP|dut|LessThan9~3_combout\,
	combout => \LP|dut|LessThan9~5_combout\);

-- Location: LCCOMB_X7_Y51_N24
\LP|dut|LessThan9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan9~6_combout\ = (\LP|dut|LessThan9~2_combout\ & (\LP|dut|LessThan0~8_combout\ & ((\LP|dut|LessThan9~5_combout\) # (!\LP|dut|clk_count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(11),
	datab => \LP|dut|LessThan9~2_combout\,
	datac => \LP|dut|LessThan0~8_combout\,
	datad => \LP|dut|LessThan9~5_combout\,
	combout => \LP|dut|LessThan9~6_combout\);

-- Location: LCCOMB_X1_Y50_N10
\LP|dut|busy~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|busy~6_combout\ = (!\LP|dut|Add0~24_combout\ & (\LP|dut|LessThan3~4_combout\ & (\LP|dut|LessThan3~10_combout\ & \LP|dut|LessThan3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~24_combout\,
	datab => \LP|dut|LessThan3~4_combout\,
	datac => \LP|dut|LessThan3~10_combout\,
	datad => \LP|dut|LessThan3~7_combout\,
	combout => \LP|dut|busy~6_combout\);

-- Location: LCCOMB_X1_Y50_N6
\LP|dut|busy~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|busy~8_combout\ = (!\LP|dut|Add0~56_combout\ & (!\LP|dut|Add0~58_combout\ & \LP|dut|busy~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Add0~56_combout\,
	datac => \LP|dut|Add0~58_combout\,
	datad => \LP|dut|busy~6_combout\,
	combout => \LP|dut|busy~8_combout\);

-- Location: LCCOMB_X1_Y50_N12
\LP|dut|busy~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|busy~7_combout\ = (!\LP|dut|Add0~62_combout\ & (\LP|dut|lcd_data[4]~0_combout\ & ((\LP|dut|Add0~60_combout\) # (!\LP|dut|busy~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~60_combout\,
	datab => \LP|dut|Add0~62_combout\,
	datac => \LP|dut|lcd_data[4]~0_combout\,
	datad => \LP|dut|busy~8_combout\,
	combout => \LP|dut|busy~7_combout\);

-- Location: LCCOMB_X1_Y50_N24
\LP|dut|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector34~0_combout\ = (\LP|dut|LessThan0~9_combout\ & (((\LP|dut|state.initialize~q\ & !\LP|dut|busy~7_combout\)))) # (!\LP|dut|LessThan0~9_combout\ & (((\LP|dut|state.initialize~q\ & !\LP|dut|busy~7_combout\)) # (!\LP|dut|state.power_up~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan0~9_combout\,
	datab => \LP|dut|state.power_up~q\,
	datac => \LP|dut|state.initialize~q\,
	datad => \LP|dut|busy~7_combout\,
	combout => \LP|dut|Selector34~0_combout\);

-- Location: FF_X1_Y50_N25
\LP|dut|state.initialize\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|state.initialize~q\);

-- Location: FF_X1_Y50_N21
\LP|dut|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|busy~q\);

-- Location: LCCOMB_X2_Y50_N24
\LP|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux28~0_combout\ = (!\LP|char\(2) & (\LP|char\(0) $ (\LP|char\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datac => \LP|char\(1),
	datad => \LP|char\(2),
	combout => \LP|Mux28~0_combout\);

-- Location: LCCOMB_X2_Y50_N22
\LP|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|process_0~0_combout\ = (!\LP|lcd_enable~q\ & \LP|dut|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|lcd_enable~q\,
	datad => \LP|dut|busy~q\,
	combout => \LP|process_0~0_combout\);

-- Location: FF_X2_Y50_N25
\LP|char[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|Mux28~0_combout\,
	ena => \LP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|char\(1));

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

-- Location: LCCOMB_X2_Y50_N30
\LP|char~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|char~0_combout\ = (\LP|char\(0) & (\LP|char\(1) & (!\LP|char\(2)))) # (!\LP|char\(0) & (!\LP|char\(1) & (\LP|char\(2) & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|char\(1),
	datac => \LP|char\(2),
	datad => \SW[0]~input_o\,
	combout => \LP|char~0_combout\);

-- Location: FF_X2_Y50_N31
\LP|char[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|char~0_combout\,
	ena => \LP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|char\(2));

-- Location: LCCOMB_X2_Y50_N18
\LP|char~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|char~1_combout\ = (!\LP|char\(0) & (((!\LP|char\(1) & !\SW[0]~input_o\)) # (!\LP|char\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(2),
	datab => \LP|char\(1),
	datac => \LP|char\(0),
	datad => \SW[0]~input_o\,
	combout => \LP|char~1_combout\);

-- Location: FF_X2_Y50_N19
\LP|char[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|char~1_combout\,
	ena => \LP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|char\(0));

-- Location: LCCOMB_X2_Y50_N12
\LP|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux10~0_combout\ = (\LP|char\(2) & ((\LP|char\(0)) # ((\LP|char\(1)) # (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|char\(1),
	datac => \LP|char\(2),
	datad => \SW[0]~input_o\,
	combout => \LP|Mux10~0_combout\);

-- Location: LCCOMB_X2_Y50_N26
\LP|lcd_enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_enable~0_combout\ = (\LP|dut|busy~q\ & (!\LP|lcd_enable~q\ & !\LP|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|busy~q\,
	datac => \LP|lcd_enable~q\,
	datad => \LP|Mux10~0_combout\,
	combout => \LP|lcd_enable~0_combout\);

-- Location: FF_X2_Y50_N27
\LP|lcd_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|lcd_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|lcd_enable~q\);

-- Location: LCCOMB_X1_Y50_N20
\LP|dut|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector35~0_combout\ = (\LP|dut|state.initialize~q\ & ((\LP|dut|busy~7_combout\) # ((!\LP|lcd_enable~q\ & \LP|dut|state.ready~q\)))) # (!\LP|dut|state.initialize~q\ & (!\LP|lcd_enable~q\ & (\LP|dut|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|state.initialize~q\,
	datab => \LP|lcd_enable~q\,
	datac => \LP|dut|state.ready~q\,
	datad => \LP|dut|busy~7_combout\,
	combout => \LP|dut|Selector35~0_combout\);

-- Location: LCCOMB_X1_Y50_N14
\LP|dut|Selector35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector35~1_combout\ = (\LP|dut|Selector35~0_combout\) # ((!\LP|dut|LessThan9~6_combout\ & (!\LP|dut|clk_count\(31) & \LP|dut|state.send~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan9~6_combout\,
	datab => \LP|dut|clk_count\(31),
	datac => \LP|dut|state.send~q\,
	datad => \LP|dut|Selector35~0_combout\,
	combout => \LP|dut|Selector35~1_combout\);

-- Location: FF_X1_Y50_N15
\LP|dut|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|state.ready~q\);

-- Location: LCCOMB_X1_Y50_N8
\LP|dut|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector37~0_combout\ = (\LP|dut|state.ready~q\ & \LP|lcd_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|state.ready~q\,
	datad => \LP|lcd_enable~q\,
	combout => \LP|dut|Selector37~0_combout\);

-- Location: LCCOMB_X2_Y50_N2
\LP|dut|Selector47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~2_combout\ = (!\LP|dut|state.send~q\ & !\LP|dut|state.initialize~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|state.send~q\,
	datad => \LP|dut|state.initialize~q\,
	combout => \LP|dut|Selector47~2_combout\);

-- Location: LCCOMB_X2_Y50_N16
\LP|dut|rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|rs~0_combout\ = (\LP|dut|Selector47~2_combout\ & ((\LP|dut|rw~0_combout\ & (\LP|dut|Selector37~0_combout\)) # (!\LP|dut|rw~0_combout\ & ((\LP|dut|rs~q\))))) # (!\LP|dut|Selector47~2_combout\ & (((\LP|dut|rs~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Selector37~0_combout\,
	datab => \LP|dut|Selector47~2_combout\,
	datac => \LP|dut|rs~q\,
	datad => \LP|dut|rw~0_combout\,
	combout => \LP|dut|rs~0_combout\);

-- Location: FF_X2_Y50_N17
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

-- Location: LCCOMB_X8_Y51_N16
\LP|dut|Selector47~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~12_combout\ = (\LP|dut|clk_count\(3) & ((\LP|dut|clk_count\(2)) # ((!\LP|dut|clk_count\(7))))) # (!\LP|dut|clk_count\(3) & (!\LP|dut|clk_count\(7) & ((\LP|dut|clk_count\(2)) # (\LP|dut|clk_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(3),
	datab => \LP|dut|clk_count\(2),
	datac => \LP|dut|clk_count\(1),
	datad => \LP|dut|clk_count\(7),
	combout => \LP|dut|Selector47~12_combout\);

-- Location: LCCOMB_X8_Y51_N10
\LP|dut|Selector47~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~18_combout\ = (\LP|dut|clk_count\(6)) # ((\LP|dut|clk_count\(4) & (\LP|dut|clk_count\(5) & \LP|dut|Selector47~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(4),
	datab => \LP|dut|clk_count\(6),
	datac => \LP|dut|clk_count\(5),
	datad => \LP|dut|Selector47~12_combout\,
	combout => \LP|dut|Selector47~18_combout\);

-- Location: LCCOMB_X8_Y51_N14
\LP|dut|Selector47~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~13_combout\ = (\LP|dut|clk_count\(8) & (((!\LP|dut|clk_count\(9))))) # (!\LP|dut|clk_count\(8) & ((\LP|dut|clk_count\(7) & ((!\LP|dut|Selector47~18_combout\) # (!\LP|dut|clk_count\(9)))) # (!\LP|dut|clk_count\(7) & 
-- ((\LP|dut|clk_count\(9)) # (\LP|dut|Selector47~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(8),
	datab => \LP|dut|clk_count\(7),
	datac => \LP|dut|clk_count\(9),
	datad => \LP|dut|Selector47~18_combout\,
	combout => \LP|dut|Selector47~13_combout\);

-- Location: LCCOMB_X7_Y51_N30
\LP|dut|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan10~0_combout\ = (!\LP|dut|clk_count\(11) & (!\LP|dut|clk_count\(10) & \LP|dut|LessThan9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(11),
	datac => \LP|dut|clk_count\(10),
	datad => \LP|dut|LessThan9~2_combout\,
	combout => \LP|dut|LessThan10~0_combout\);

-- Location: LCCOMB_X7_Y51_N6
\LP|dut|Selector47~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~14_combout\ = (\LP|dut|Selector47~13_combout\ & (\LP|dut|LessThan10~0_combout\ & \LP|dut|LessThan9~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|Selector47~13_combout\,
	datac => \LP|dut|LessThan10~0_combout\,
	datad => \LP|dut|LessThan9~6_combout\,
	combout => \LP|dut|Selector47~14_combout\);

-- Location: LCCOMB_X8_Y51_N24
\LP|dut|LessThan9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan9~7_combout\ = (!\LP|dut|clk_count\(3) & (!\LP|dut|clk_count\(5) & !\LP|dut|clk_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(3),
	datac => \LP|dut|clk_count\(5),
	datad => \LP|dut|clk_count\(4),
	combout => \LP|dut|LessThan9~7_combout\);

-- Location: LCCOMB_X8_Y51_N18
\LP|dut|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan12~0_combout\ = ((\LP|dut|LessThan9~7_combout\ & ((!\LP|dut|clk_count\(2)) # (!\LP|dut|clk_count\(1))))) # (!\LP|dut|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(1),
	datab => \LP|dut|clk_count\(6),
	datac => \LP|dut|clk_count\(2),
	datad => \LP|dut|LessThan9~7_combout\,
	combout => \LP|dut|LessThan12~0_combout\);

-- Location: LCCOMB_X8_Y51_N20
\LP|dut|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan12~1_combout\ = (!\LP|dut|clk_count\(9) & (((!\LP|dut|clk_count\(7) & \LP|dut|LessThan12~0_combout\)) # (!\LP|dut|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(8),
	datab => \LP|dut|clk_count\(7),
	datac => \LP|dut|clk_count\(9),
	datad => \LP|dut|LessThan12~0_combout\,
	combout => \LP|dut|LessThan12~1_combout\);

-- Location: LCCOMB_X7_Y51_N8
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

-- Location: LCCOMB_X8_Y51_N4
\LP|dut|LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan10~3_combout\ = (!\LP|dut|clk_count\(3) & (!\LP|dut|clk_count\(2) & !\LP|dut|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(3),
	datab => \LP|dut|clk_count\(2),
	datac => \LP|dut|clk_count\(1),
	combout => \LP|dut|LessThan10~3_combout\);

-- Location: LCCOMB_X8_Y51_N26
\LP|dut|LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan10~2_combout\ = (!\LP|dut|clk_count\(8) & (!\LP|dut|clk_count\(6) & (!\LP|dut|clk_count\(9) & !\LP|dut|clk_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|clk_count\(8),
	datab => \LP|dut|clk_count\(6),
	datac => \LP|dut|clk_count\(9),
	datad => \LP|dut|clk_count\(7),
	combout => \LP|dut|LessThan10~2_combout\);

-- Location: LCCOMB_X8_Y51_N6
\LP|dut|LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan10~1_combout\ = (\LP|dut|clk_count\(5) & \LP|dut|clk_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|clk_count\(5),
	datad => \LP|dut|clk_count\(4),
	combout => \LP|dut|LessThan10~1_combout\);

-- Location: LCCOMB_X7_Y51_N10
\LP|dut|LessThan10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan10~4_combout\ = (\LP|dut|LessThan10~2_combout\ & (\LP|dut|LessThan10~0_combout\ & ((\LP|dut|LessThan10~3_combout\) # (!\LP|dut|LessThan10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan10~3_combout\,
	datab => \LP|dut|LessThan10~2_combout\,
	datac => \LP|dut|LessThan10~0_combout\,
	datad => \LP|dut|LessThan10~1_combout\,
	combout => \LP|dut|LessThan10~4_combout\);

-- Location: LCCOMB_X7_Y51_N12
\LP|dut|Selector47~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~15_combout\ = (!\LP|dut|LessThan10~4_combout\ & (((!\LP|dut|LessThan12~1_combout\ & \LP|dut|clk_count\(10))) # (!\LP|dut|LessThan12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan12~1_combout\,
	datab => \LP|dut|LessThan12~2_combout\,
	datac => \LP|dut|clk_count\(10),
	datad => \LP|dut|LessThan10~4_combout\,
	combout => \LP|dut|Selector47~15_combout\);

-- Location: LCCOMB_X7_Y51_N14
\LP|dut|Selector47~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~16_combout\ = (\LP|dut|Selector47~14_combout\) # ((\LP|dut|e~q\ & ((\LP|dut|Selector47~15_combout\) # (!\LP|dut|LessThan9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Selector47~14_combout\,
	datab => \LP|dut|LessThan9~6_combout\,
	datac => \LP|dut|e~q\,
	datad => \LP|dut|Selector47~15_combout\,
	combout => \LP|dut|Selector47~16_combout\);

-- Location: LCCOMB_X2_Y50_N10
\LP|dut|Selector47~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~9_combout\ = (\LP|dut|LessThan5~2_combout\ & !\LP|dut|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|dut|LessThan5~2_combout\,
	datad => \LP|dut|Add0~60_combout\,
	combout => \LP|dut|Selector47~9_combout\);

-- Location: LCCOMB_X3_Y50_N4
\LP|dut|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan2~3_combout\ = (\LP|dut|LessThan2~2_combout\ & (\LP|dut|LessThan3~4_combout\ & (\LP|dut|LessThan3~3_combout\ & !\LP|dut|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan2~2_combout\,
	datab => \LP|dut|LessThan3~4_combout\,
	datac => \LP|dut|LessThan3~3_combout\,
	datad => \LP|dut|Add0~24_combout\,
	combout => \LP|dut|LessThan2~3_combout\);

-- Location: LCCOMB_X3_Y50_N18
\LP|dut|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan4~3_combout\ = (\LP|dut|LessThan3~3_combout\ & (\LP|dut|LessThan3~4_combout\ & ((\LP|dut|LessThan4~2_combout\) # (!\LP|dut|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~24_combout\,
	datab => \LP|dut|LessThan4~2_combout\,
	datac => \LP|dut|LessThan3~3_combout\,
	datad => \LP|dut|LessThan3~4_combout\,
	combout => \LP|dut|LessThan4~3_combout\);

-- Location: LCCOMB_X3_Y50_N8
\LP|dut|Selector47~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~10_combout\ = (!\LP|dut|state.send~q\ & (\LP|dut|state.initialize~q\ & (!\LP|dut|LessThan2~3_combout\ & !\LP|dut|LessThan4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|state.send~q\,
	datab => \LP|dut|state.initialize~q\,
	datac => \LP|dut|LessThan2~3_combout\,
	datad => \LP|dut|LessThan4~3_combout\,
	combout => \LP|dut|Selector47~10_combout\);

-- Location: LCCOMB_X3_Y50_N24
\LP|dut|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|LessThan3~11_combout\ = (!\LP|dut|Add0~24_combout\ & (\LP|dut|LessThan3~10_combout\ & (\LP|dut|LessThan3~3_combout\ & \LP|dut|LessThan3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~24_combout\,
	datab => \LP|dut|LessThan3~10_combout\,
	datac => \LP|dut|LessThan3~3_combout\,
	datad => \LP|dut|LessThan3~4_combout\,
	combout => \LP|dut|LessThan3~11_combout\);

-- Location: LCCOMB_X3_Y50_N30
\LP|dut|Selector47~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~6_combout\ = (\LP|dut|LessThan1~2_combout\) # ((!\LP|dut|LessThan2~3_combout\ & \LP|dut|LessThan3~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan1~2_combout\,
	datac => \LP|dut|LessThan2~3_combout\,
	datad => \LP|dut|LessThan3~11_combout\,
	combout => \LP|dut|Selector47~6_combout\);

-- Location: LCCOMB_X3_Y50_N28
\LP|dut|Selector47~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~7_combout\ = (\LP|dut|Add0~62_combout\) # ((!\LP|dut|Add0~60_combout\ & \LP|dut|Selector47~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~62_combout\,
	datab => \LP|dut|Add0~60_combout\,
	datac => \LP|dut|Selector47~6_combout\,
	combout => \LP|dut|Selector47~7_combout\);

-- Location: LCCOMB_X3_Y50_N22
\LP|dut|Selector47~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~8_combout\ = (!\LP|dut|state.send~q\ & ((\LP|dut|state.initialize~q\ & ((\LP|dut|Selector47~7_combout\))) # (!\LP|dut|state.initialize~q\ & (\LP|dut|e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|e~q\,
	datab => \LP|dut|state.initialize~q\,
	datac => \LP|dut|state.send~q\,
	datad => \LP|dut|Selector47~7_combout\,
	combout => \LP|dut|Selector47~8_combout\);

-- Location: LCCOMB_X3_Y50_N26
\LP|dut|Selector47~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~4_combout\ = (!\LP|dut|state.send~q\ & ((\LP|dut|LessThan7~2_combout\) # ((!\LP|dut|LessThan8~4_combout\ & \LP|dut|e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|state.send~q\,
	datab => \LP|dut|LessThan8~4_combout\,
	datac => \LP|dut|e~q\,
	datad => \LP|dut|LessThan7~2_combout\,
	combout => \LP|dut|Selector47~4_combout\);

-- Location: LCCOMB_X3_Y50_N16
\LP|dut|Selector47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~3_combout\ = (\LP|dut|busy~4_combout\) # ((\LP|dut|LessThan2~3_combout\) # (\LP|dut|LessThan4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|dut|busy~4_combout\,
	datac => \LP|dut|LessThan2~3_combout\,
	datad => \LP|dut|LessThan4~3_combout\,
	combout => \LP|dut|Selector47~3_combout\);

-- Location: LCCOMB_X3_Y50_N12
\LP|dut|Selector47~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~5_combout\ = (\LP|dut|state.initialize~q\ & (\LP|dut|Selector47~4_combout\ & ((\LP|dut|Add0~60_combout\) # (!\LP|dut|Selector47~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~60_combout\,
	datab => \LP|dut|state.initialize~q\,
	datac => \LP|dut|Selector47~4_combout\,
	datad => \LP|dut|Selector47~3_combout\,
	combout => \LP|dut|Selector47~5_combout\);

-- Location: LCCOMB_X3_Y50_N10
\LP|dut|Selector47~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector47~11_combout\ = (\LP|dut|Selector47~8_combout\) # ((\LP|dut|Selector47~5_combout\) # ((\LP|dut|Selector47~9_combout\ & \LP|dut|Selector47~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Selector47~9_combout\,
	datab => \LP|dut|Selector47~10_combout\,
	datac => \LP|dut|Selector47~8_combout\,
	datad => \LP|dut|Selector47~5_combout\,
	combout => \LP|dut|Selector47~11_combout\);

-- Location: LCCOMB_X3_Y50_N0
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

-- Location: FF_X3_Y50_N1
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

-- Location: LCCOMB_X2_Y48_N26
\LP|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Add0~0_combout\ = \LP|char\(1) $ (\LP|char\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LP|char\(1),
	datad => \LP|char\(0),
	combout => \LP|Add0~0_combout\);

-- Location: LCCOMB_X2_Y48_N24
\LP|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux24~0_combout\ = \LP|char\(2) $ (((!\LP|char\(1) & !\LP|char\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|char\(2),
	datac => \LP|char\(1),
	datad => \LP|char\(0),
	combout => \LP|Mux24~0_combout\);

-- Location: LCCOMB_X2_Y48_N4
\LP|lcd_bus[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus[0]~0_combout\ = (\LP|Mux24~0_combout\ & ((\LP|lcd_bus\(0)))) # (!\LP|Mux24~0_combout\ & (!\LP|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|Add0~0_combout\,
	datac => \LP|lcd_bus\(0),
	datad => \LP|Mux24~0_combout\,
	combout => \LP|lcd_bus[0]~0_combout\);

-- Location: LCCOMB_X2_Y48_N10
\LP|lcd_bus~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~5_combout\ = (\LP|char\(0) & ((\LP|char\(1) & ((\SW[0]~input_o\))) # (!\LP|char\(1) & (\LP|lcd_bus\(0))))) # (!\LP|char\(0) & ((\LP|lcd_bus\(0) & (\LP|char\(1))) # (!\LP|lcd_bus\(0) & (!\LP|char\(1) & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|lcd_bus\(0),
	datac => \LP|char\(1),
	datad => \SW[0]~input_o\,
	combout => \LP|lcd_bus~5_combout\);

-- Location: LCCOMB_X2_Y48_N8
\LP|lcd_bus~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~6_combout\ = (\LP|char\(0) & (\LP|char\(1) & ((!\SW[0]~input_o\) # (!\LP|lcd_bus\(0))))) # (!\LP|char\(0) & (((!\LP|char\(1) & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|lcd_bus\(0),
	datac => \LP|char\(1),
	datad => \SW[0]~input_o\,
	combout => \LP|lcd_bus~6_combout\);

-- Location: LCCOMB_X2_Y48_N30
\LP|lcd_bus~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus~7_combout\ = \LP|lcd_bus~6_combout\ $ (((\LP|lcd_bus~5_combout\) # (!\LP|char\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|lcd_bus~5_combout\,
	datac => \LP|lcd_bus~6_combout\,
	datad => \LP|char\(2),
	combout => \LP|lcd_bus~7_combout\);

-- Location: FF_X2_Y48_N5
\LP|lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|lcd_bus[0]~0_combout\,
	asdata => \LP|lcd_bus~7_combout\,
	sload => \LP|ALT_INV_char\(0),
	ena => \LP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|lcd_bus\(0));

-- Location: LCCOMB_X2_Y50_N4
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

-- Location: LCCOMB_X2_Y50_N6
\LP|dut|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector46~0_combout\ = (!\LP|dut|busy~6_combout\ & (!\LP|dut|Add0~62_combout\ & (\LP|dut|Selector44~0_combout\ & !\LP|dut|LessThan4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|busy~6_combout\,
	datab => \LP|dut|Add0~62_combout\,
	datac => \LP|dut|Selector44~0_combout\,
	datad => \LP|dut|LessThan4~4_combout\,
	combout => \LP|dut|Selector46~0_combout\);

-- Location: LCCOMB_X1_Y50_N30
\LP|dut|Selector46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector46~1_combout\ = (\LP|dut|LessThan5~2_combout\ & ((\LP|dut|Selector46~0_combout\) # ((\LP|dut|Selector37~0_combout\ & \LP|lcd_bus\(0))))) # (!\LP|dut|LessThan5~2_combout\ & (\LP|dut|Selector37~0_combout\ & (\LP|lcd_bus\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan5~2_combout\,
	datab => \LP|dut|Selector37~0_combout\,
	datac => \LP|lcd_bus\(0),
	datad => \LP|dut|Selector46~0_combout\,
	combout => \LP|dut|Selector46~1_combout\);

-- Location: LCCOMB_X1_Y50_N2
\LP|dut|lcd_data[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|lcd_data[4]~1_combout\ = (\LP|dut|rw~0_combout\ & (!\LP|dut|state.send~q\ & ((!\LP|dut|busy~7_combout\) # (!\LP|dut|state.initialize~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|rw~0_combout\,
	datab => \LP|dut|state.initialize~q\,
	datac => \LP|dut|state.send~q\,
	datad => \LP|dut|busy~7_combout\,
	combout => \LP|dut|lcd_data[4]~1_combout\);

-- Location: FF_X1_Y50_N31
\LP|dut|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector46~1_combout\,
	ena => \LP|dut|lcd_data[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|lcd_data\(0));

-- Location: LCCOMB_X1_Y48_N0
\LP|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux23~0_combout\ = (\LP|lcd_bus\(1) & ((\LP|char\(2)) # ((\LP|char\(1) & \LP|char\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|lcd_bus\(1),
	datab => \LP|char\(2),
	datac => \LP|char\(1),
	datad => \LP|char\(0),
	combout => \LP|Mux23~0_combout\);

-- Location: LCCOMB_X1_Y48_N2
\LP|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux23~1_combout\ = (\LP|lcd_bus\(1)) # ((!\LP|char\(2) & ((!\LP|char\(0)) # (!\LP|char\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|lcd_bus\(1),
	datab => \LP|char\(2),
	datac => \LP|char\(1),
	datad => \LP|char\(0),
	combout => \LP|Mux23~1_combout\);

-- Location: LCCOMB_X2_Y48_N28
\LP|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux8~0_combout\ = (\LP|char\(0) & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datad => \SW[0]~input_o\,
	combout => \LP|Mux8~0_combout\);

-- Location: LCCOMB_X1_Y48_N12
\LP|lcd_bus[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus[1]~1_combout\ = (\LP|Mux8~0_combout\ & ((\LP|Mux23~1_combout\))) # (!\LP|Mux8~0_combout\ & (\LP|Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|Mux23~0_combout\,
	datab => \LP|Mux23~1_combout\,
	datad => \LP|Mux8~0_combout\,
	combout => \LP|lcd_bus[1]~1_combout\);

-- Location: LCCOMB_X1_Y48_N16
\LP|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux8~1_combout\ = (\LP|lcd_bus\(1) & (\LP|char\(0) & (\LP|char\(2) $ (!\LP|char\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|lcd_bus\(1),
	datab => \LP|char\(2),
	datac => \LP|char\(1),
	datad => \LP|char\(0),
	combout => \LP|Mux8~1_combout\);

-- Location: LCCOMB_X1_Y48_N26
\LP|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux8~2_combout\ = (\LP|Mux8~1_combout\) # ((!\LP|char\(0) & ((\LP|Mux23~1_combout\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|Mux8~1_combout\,
	datac => \SW[0]~input_o\,
	datad => \LP|Mux23~1_combout\,
	combout => \LP|Mux8~2_combout\);

-- Location: FF_X1_Y48_N13
\LP|lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|lcd_bus[1]~1_combout\,
	asdata => \LP|Mux8~2_combout\,
	sload => \LP|ALT_INV_Add0~0_combout\,
	ena => \LP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|lcd_bus\(1));

-- Location: LCCOMB_X2_Y50_N0
\LP|dut|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector45~0_combout\ = (\LP|dut|LessThan7~2_combout\ & (!\LP|dut|LessThan4~4_combout\ & (!\LP|dut|busy~4_combout\ & !\LP|dut|Selector47~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan7~2_combout\,
	datab => \LP|dut|LessThan4~4_combout\,
	datac => \LP|dut|busy~4_combout\,
	datad => \LP|dut|Selector47~9_combout\,
	combout => \LP|dut|Selector45~0_combout\);

-- Location: LCCOMB_X1_Y50_N0
\LP|dut|Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector45~1_combout\ = (!\LP|dut|Add0~62_combout\ & (\LP|dut|state.initialize~q\ & (!\LP|dut|Selector37~0_combout\ & !\LP|dut|busy~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~62_combout\,
	datab => \LP|dut|state.initialize~q\,
	datac => \LP|dut|Selector37~0_combout\,
	datad => \LP|dut|busy~8_combout\,
	combout => \LP|dut|Selector45~1_combout\);

-- Location: LCCOMB_X1_Y50_N16
\LP|dut|Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector45~2_combout\ = (\LP|lcd_bus\(1) & ((\LP|dut|Selector37~0_combout\) # ((\LP|dut|Selector45~0_combout\ & \LP|dut|Selector45~1_combout\)))) # (!\LP|lcd_bus\(1) & (((\LP|dut|Selector45~0_combout\ & \LP|dut|Selector45~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|lcd_bus\(1),
	datab => \LP|dut|Selector37~0_combout\,
	datac => \LP|dut|Selector45~0_combout\,
	datad => \LP|dut|Selector45~1_combout\,
	combout => \LP|dut|Selector45~2_combout\);

-- Location: FF_X1_Y50_N17
\LP|dut|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector45~2_combout\,
	ena => \LP|dut|lcd_data[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|lcd_data\(1));

-- Location: LCCOMB_X1_Y48_N24
\LP|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux22~0_combout\ = (\LP|lcd_bus\(2)) # ((!\LP|char\(2) & ((!\LP|char\(1)) # (!\LP|char\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|char\(1),
	datac => \LP|lcd_bus\(2),
	datad => \LP|char\(2),
	combout => \LP|Mux22~0_combout\);

-- Location: LCCOMB_X1_Y48_N18
\LP|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux22~1_combout\ = (\LP|lcd_bus\(2) & ((\LP|char\(2)) # ((\LP|char\(0) & \LP|char\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|char\(1),
	datac => \LP|lcd_bus\(2),
	datad => \LP|char\(2),
	combout => \LP|Mux22~1_combout\);

-- Location: LCCOMB_X1_Y48_N14
\LP|lcd_bus[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus[2]~2_combout\ = (\LP|Mux8~0_combout\ & ((\LP|Mux22~1_combout\))) # (!\LP|Mux8~0_combout\ & (\LP|Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|Mux22~0_combout\,
	datab => \LP|Mux22~1_combout\,
	datad => \LP|Mux8~0_combout\,
	combout => \LP|lcd_bus[2]~2_combout\);

-- Location: LCCOMB_X1_Y48_N8
\LP|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux7~0_combout\ = (\LP|char\(0) & ((\LP|lcd_bus\(2)) # (\LP|char\(1) $ (\LP|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|char\(1),
	datac => \LP|lcd_bus\(2),
	datad => \LP|char\(2),
	combout => \LP|Mux7~0_combout\);

-- Location: LCCOMB_X1_Y48_N22
\LP|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux7~1_combout\ = (\LP|Mux7~0_combout\) # ((!\LP|char\(0) & ((\LP|Mux22~1_combout\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \SW[0]~input_o\,
	datac => \LP|Mux7~0_combout\,
	datad => \LP|Mux22~1_combout\,
	combout => \LP|Mux7~1_combout\);

-- Location: FF_X1_Y48_N15
\LP|lcd_bus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|lcd_bus[2]~2_combout\,
	asdata => \LP|Mux7~1_combout\,
	sload => \LP|ALT_INV_Add0~0_combout\,
	ena => \LP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|lcd_bus\(2));

-- Location: LCCOMB_X2_Y50_N14
\LP|dut|Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector44~1_combout\ = (!\LP|dut|LessThan2~3_combout\ & (\LP|dut|Selector44~0_combout\ & \LP|dut|Selector45~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan2~3_combout\,
	datac => \LP|dut|Selector44~0_combout\,
	datad => \LP|dut|Selector45~0_combout\,
	combout => \LP|dut|Selector44~1_combout\);

-- Location: LCCOMB_X2_Y50_N28
\LP|dut|Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector44~2_combout\ = ((!\LP|dut|LessThan1~2_combout\ & ((\LP|dut|LessThan2~3_combout\) # (!\LP|dut|LessThan3~11_combout\)))) # (!\LP|dut|Selector44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|LessThan2~3_combout\,
	datab => \LP|dut|Selector44~0_combout\,
	datac => \LP|dut|LessThan1~2_combout\,
	datad => \LP|dut|LessThan3~11_combout\,
	combout => \LP|dut|Selector44~2_combout\);

-- Location: LCCOMB_X1_Y50_N18
\LP|dut|Selector44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector44~3_combout\ = (\LP|dut|Selector44~2_combout\ & (((\LP|dut|Selector37~0_combout\) # (!\LP|dut|state.initialize~q\)) # (!\LP|dut|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~62_combout\,
	datab => \LP|dut|state.initialize~q\,
	datac => \LP|dut|Selector37~0_combout\,
	datad => \LP|dut|Selector44~2_combout\,
	combout => \LP|dut|Selector44~3_combout\);

-- Location: LCCOMB_X1_Y50_N26
\LP|dut|Selector44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector44~4_combout\ = (\LP|dut|Selector44~1_combout\) # (((\LP|lcd_bus\(2) & \LP|dut|Selector37~0_combout\)) # (!\LP|dut|Selector44~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|lcd_bus\(2),
	datab => \LP|dut|Selector37~0_combout\,
	datac => \LP|dut|Selector44~1_combout\,
	datad => \LP|dut|Selector44~3_combout\,
	combout => \LP|dut|Selector44~4_combout\);

-- Location: FF_X1_Y50_N27
\LP|dut|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector44~4_combout\,
	ena => \LP|dut|lcd_data[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|lcd_data\(2));

-- Location: LCCOMB_X1_Y48_N10
\LP|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux21~1_combout\ = (\LP|lcd_bus\(3)) # (\LP|char\(2) $ (((!\LP|char\(1)) # (!\LP|char\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|lcd_bus\(3),
	datac => \LP|char\(1),
	datad => \LP|char\(2),
	combout => \LP|Mux21~1_combout\);

-- Location: LCCOMB_X1_Y48_N20
\LP|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux21~0_combout\ = (\LP|lcd_bus\(3) & ((\LP|char\(2)) # ((\LP|char\(0) & \LP|char\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|lcd_bus\(3),
	datac => \LP|char\(1),
	datad => \LP|char\(2),
	combout => \LP|Mux21~0_combout\);

-- Location: LCCOMB_X2_Y48_N18
\LP|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux6~0_combout\ = (\LP|char\(0) & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datad => \SW[0]~input_o\,
	combout => \LP|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y48_N28
\LP|lcd_bus[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus[3]~3_combout\ = (\LP|Mux6~0_combout\ & (\LP|Mux21~1_combout\)) # (!\LP|Mux6~0_combout\ & ((\LP|Mux21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|Mux21~1_combout\,
	datab => \LP|Mux21~0_combout\,
	datad => \LP|Mux6~0_combout\,
	combout => \LP|lcd_bus[3]~3_combout\);

-- Location: LCCOMB_X1_Y48_N4
\LP|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux6~1_combout\ = \LP|char\(2) $ (((\LP|char\(1) & \LP|char\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LP|char\(2),
	datac => \LP|char\(1),
	datad => \LP|char\(0),
	combout => \LP|Mux6~1_combout\);

-- Location: LCCOMB_X1_Y48_N30
\LP|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux6~2_combout\ = (\LP|char\(0) & (((!\LP|Mux6~1_combout\ & \LP|lcd_bus\(3))))) # (!\LP|char\(0) & (\LP|Mux6~1_combout\ & ((\LP|lcd_bus\(3)) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \SW[0]~input_o\,
	datac => \LP|Mux6~1_combout\,
	datad => \LP|lcd_bus\(3),
	combout => \LP|Mux6~2_combout\);

-- Location: FF_X1_Y48_N29
\LP|lcd_bus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|lcd_bus[3]~3_combout\,
	asdata => \LP|Mux6~2_combout\,
	sload => \LP|ALT_INV_Add0~0_combout\,
	ena => \LP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|lcd_bus\(3));

-- Location: LCCOMB_X1_Y50_N4
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

-- Location: FF_X1_Y50_N5
\LP|dut|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector43~2_combout\,
	ena => \LP|dut|lcd_data[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|lcd_data\(3));

-- Location: LCCOMB_X2_Y48_N20
\LP|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux5~0_combout\ = \LP|char\(0) $ (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datad => \SW[0]~input_o\,
	combout => \LP|Mux5~0_combout\);

-- Location: LCCOMB_X2_Y48_N22
\LP|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux20~1_combout\ = (\LP|lcd_bus\(4)) # ((!\LP|char\(2) & ((!\LP|char\(0)) # (!\LP|char\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(1),
	datab => \LP|char\(2),
	datac => \LP|lcd_bus\(4),
	datad => \LP|char\(0),
	combout => \LP|Mux20~1_combout\);

-- Location: LCCOMB_X2_Y48_N16
\LP|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux20~0_combout\ = (\LP|lcd_bus\(4) & ((\LP|char\(2)) # ((\LP|char\(1) & \LP|char\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(1),
	datab => \LP|char\(2),
	datac => \LP|lcd_bus\(4),
	datad => \LP|char\(0),
	combout => \LP|Mux20~0_combout\);

-- Location: LCCOMB_X1_Y48_N6
\LP|lcd_bus[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|lcd_bus[4]~4_combout\ = (\LP|Mux5~0_combout\ & (\LP|Mux20~1_combout\)) # (!\LP|Mux5~0_combout\ & ((\LP|Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|Mux5~0_combout\,
	datab => \LP|Mux20~1_combout\,
	datad => \LP|Mux20~0_combout\,
	combout => \LP|lcd_bus[4]~4_combout\);

-- Location: LCCOMB_X2_Y48_N14
\LP|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux5~1_combout\ = (\LP|lcd_bus\(4) & (\LP|char\(0) & (\LP|char\(1) $ (!\LP|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(1),
	datab => \LP|char\(2),
	datac => \LP|lcd_bus\(4),
	datad => \LP|char\(0),
	combout => \LP|Mux5~1_combout\);

-- Location: LCCOMB_X2_Y48_N12
\LP|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|Mux5~2_combout\ = (\LP|Mux5~1_combout\) # ((!\LP|char\(0) & (\LP|Mux20~0_combout\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|char\(0),
	datab => \LP|Mux20~0_combout\,
	datac => \LP|Mux5~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \LP|Mux5~2_combout\);

-- Location: FF_X1_Y48_N7
\LP|lcd_bus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|lcd_bus[4]~4_combout\,
	asdata => \LP|Mux5~2_combout\,
	sload => \LP|ALT_INV_Add0~0_combout\,
	ena => \LP|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|lcd_bus\(4));

-- Location: LCCOMB_X1_Y50_N28
\LP|dut|Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector42~2_combout\ = ((\LP|dut|Add0~62_combout\) # ((!\LP|dut|Add0~60_combout\ & \LP|dut|LessThan1~2_combout\))) # (!\LP|dut|state.initialize~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|dut|Add0~60_combout\,
	datab => \LP|dut|state.initialize~q\,
	datac => \LP|dut|Add0~62_combout\,
	datad => \LP|dut|LessThan1~2_combout\,
	combout => \LP|dut|Selector42~2_combout\);

-- Location: LCCOMB_X1_Y50_N22
\LP|dut|Selector42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LP|dut|Selector42~3_combout\ = (\LP|dut|state.ready~q\ & (\LP|lcd_bus\(4) & (\LP|lcd_enable~q\))) # (!\LP|dut|state.ready~q\ & (((\LP|dut|Selector42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LP|lcd_bus\(4),
	datab => \LP|lcd_enable~q\,
	datac => \LP|dut|state.ready~q\,
	datad => \LP|dut|Selector42~2_combout\,
	combout => \LP|dut|Selector42~3_combout\);

-- Location: FF_X1_Y50_N23
\LP|dut|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector42~3_combout\,
	ena => \LP|dut|lcd_data[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|lcd_data\(4));

-- Location: FF_X1_Y50_N29
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
	ena => \LP|dut|lcd_data[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LP|dut|lcd_data\(5));

-- Location: FF_X1_Y50_N9
\LP|dut|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LP|dut|Selector37~0_combout\,
	ena => \LP|dut|lcd_data[4]~1_combout\,
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

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

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

GPIO(9) <= \GPIO[9]~output_o\;

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

GPIO(2) <= \GPIO[2]~output_o\;

GPIO(3) <= \GPIO[3]~output_o\;

GPIO(4) <= \GPIO[4]~output_o\;

GPIO(5) <= \GPIO[5]~output_o\;

GPIO(6) <= \GPIO[6]~output_o\;

GPIO(7) <= \GPIO[7]~output_o\;

GPIO(8) <= \GPIO[8]~output_o\;

GPIO(10) <= \GPIO[10]~output_o\;

GPIO(11) <= \GPIO[11]~output_o\;
END structure;


