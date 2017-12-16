--=================================================--
--	Project:	Color indentifier with FPGA
--	File:		datapath.vhd 
--	Author: 	Leonardo Benitez
--	Endianess:	litle endian
--	Version:	1.0 					   29/10/2017
--=================================================--

library ieee;
use ieee.std_logic_1164.all;

-----------------------------------------------------

entity datapath is
	port(
		CLK			: in 	std_logic;							-- 50 MHz
		EN_BLUE		: in 	std_logic;							-- Command from the controller 
		EN_GREEN	: in 	std_logic;							-- Command from the controller 
		DATA		: in	std_logic_vector (7 downto 0);		-- Data input from the sensor 
		LCD_WORD	: out	std_logic_vector (1 downto 0)
	);
end datapath;

-----------------------------------------------------

architecture funcional of datapath is
	signal out_blue, out_green: std_logic_vector (7 downto 0);
	component reg_8b_pipo is
		port (
			D		: in	std_logic_vector(7 downto 0);
			CLK		: in	std_logic;
			EN		: in	std_logic;
			Q		: out	std_logic_vector(7 downto 0)
		);	
	end component;
begin
	RB: reg_8b_pipo port map (DATA, CLK, EN_BLUE,	out_blue);
	RG: reg_8b_pipo port map (DATA, CLK, EN_GREEN,	out_green);
	
	-- LEDG(0)				<= welcome;
	-- LEDR(1 downto 0) 	<= lcd_word;
	
	LCD_WORD <= --"00" when welcome = '1' else
				"01" when out_green > out_blue else
				"10";	
end funcional;