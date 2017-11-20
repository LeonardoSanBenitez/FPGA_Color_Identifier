--=================================================--
--	Project:	Color indentifier with FPGA
--	File:		main.vhd 
--	Author: 	Leonardo Benitez and Gencen
--	Endianness:	litle endian
--	Version:	1.0 					   29/10/2017
--=================================================--

library ieee;
use ieee.std_logic_1164.all;

-----------------------------------------------------

entity main is
	port(
		CLOCK_50: in	std_logic;
		KEY		: in	std_logic_vector (3 downto 0);	-- Active in Low
		SW		: in	std_logic_vector (17 downto 0);	-- Active in high (not used now)
		HEX0	: out	std_logic_vector (6 downto 0);	
		LEDG	: out	std_logic_vector (8 downto 0);	-- (not used now)
		LEDR	: out	std_logic_vector (17 downto 0);	
		LCD_RW	: out	std_logic;						-- LCD Read/Write
		LCD_RS	: out	std_logic;						-- LCD ??
		LCD_EN	: out	std_logic;						-- LCD Enable
		LCD_DATA: out	std_logic_vector (7 downto 0);	-- LCD data bus
		GPIO	: inout	std_logic_vector (35 downto 0)	-- General Pourpouse IO
	);
end main;

-----------------------------------------------------

architecture funcional of main is
	signal en_blue, en_green 		: std_logic;
	signal lcd_print 				: std_logic;
	signal data_in					: std_logic_vector (7 downto 0);
	signal out_blue, out_green		: std_logic_vector (7 downto 0);
	
	signal lcd_busy, lcd_clear, lcd_enable: std_logic;
	signal lcd_bus: std_logic_vector (9 downto 0);
		
	component controller is
		port(
			CLK			: in 	std_logic;	-- 50MHz
			COMPARE		: in	std_logic;	-- Key (user interface)
			ADC_INIT	: out 	std_logic;	-- Pulse to the ADC iniciatization 
			LIGHT_BLUE	: out	std_logic;	-- Signal to the sensor
			LIGHT_GREEN	: out	std_logic;	-- Signal to the sensor
			READ_BLUE	: out 	std_logic;	-- Command to datapath register enable
			READ_GREEN	: out	std_logic;	-- Command to datapath register enable
			PRINT		: out 	std_logic	-- Command to print result in LCD
		);
	end component;

	component datapath is
		port(
			CLK			: in 	std_logic;							-- 50 MHz
			EN_BLUE		: in 	std_logic;							-- Command from the controller 
			EN_GREEN	: in 	std_logic;							-- Command from the controller 
			DATA		: in	std_logic_vector (7 downto 0);		-- Data input from the sensor 
			OUT_BLUE	: out	std_logic_vector (7 downto 0);
			OUT_GREEN	: out	std_logic_vector (7 downto 0)
		);
	end component;
	
	component lcd_controller is
		port(
			clk        : IN    STD_LOGIC;						--system clock
			reset_n    : IN    STD_LOGIC;						--active low reinitializes lcd
			lcd_enable : IN    STD_LOGIC;						--latches data into lcd controller
			lcd_bus    : IN    STD_LOGIC_VECTOR(9 DOWNTO 0); 	--data and control signals
			busy       : OUT   STD_LOGIC := '1';				--lcd controller busy/idle feedback
			rw, rs, e  : OUT   STD_LOGIC;						--read/write, setup/data, and enable for lcd
			lcd_data   : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0)		--data signals for lcd
		); 
	end component;
	
	component lcd_printer is
		port(
			clk       	: in  	std_logic;  					-- System clock
			print		: in 	std_logic;						-- Comand from de Main Controller to print a word
			word  		: in	std_logic;						-- What the printer should print
			rw, rs, en	: out 	std_logic;  					-- Read/write, setup/data, and enable for lcd
			lcd_data  	: out 	std_logic_vector(7 downto 0)	-- Data signals for lcd
		);
	end component;
begin
	data_in(0) <= GPIO(0);	data_in(4) <= GPIO(1);
	data_in(1) <= GPIO(2);	data_in(5) <= GPIO(3);
	data_in(2) <= GPIO(4);	data_in(6) <= GPIO(5);
	data_in(3) <= GPIO(6);	data_in(7) <= GPIO(7);	
	
	CT: controller	port map (CLOCK_50, KEY(0), GPIO(8), GPIO(10), GPIO(11), en_blue, en_green, LEDR(0));
	DP: datapath	port map (CLOCK_50, en_blue, en_green, data_in(7 downto 0), out_blue, out_green);
	LP:	lcd_printer	port map (CLOCK_50, '1', SW(0), LCD_RW, LCD_RS, LCD_EN, LCD_DATA);
	
	
	--	DP: datapath	port map (CLOCK_50, en_blue, en_green, data_in(7 downto 0), LEDR(17 downto 10), LEDR(7 downto 0));
	--HEX0 <= "0001000" when out_blue > out_green else
	--		"1000001";
end funcional;