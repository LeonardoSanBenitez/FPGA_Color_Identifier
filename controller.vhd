--=================================================--
--	Project:	Color indentifier with FPGA
--	File:		Controller.vhd 
--	Author: 	Leonardo Benitez and Gencen
--	Endianess:	litle endian
--	Version:	1.0 					   29/10/2017
--=================================================--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

-----------------------------------------------------

entity controller is
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
end controller;

-----------------------------------------------------

architecture funcional of controller is
	type	state is (state_init, state_wait, state_read_blue, state_wait_blue, state_read_green, state_wait_green, state_print);
	signal	current_state, next_state: state := state_init;
	constant ms: integer := 50000;
	signal	time : integer range 0 to 100000000;
begin
	-- Process to update the current state
	process(CLK, COMPARE)
		variable count : integer range 0 to 100000000;
	begin
		if (compare = '0') then
			current_state <= state_read_blue;
			count := 0;
		elsif (CLK'event and CLK='1') then
			count := count + 1;
			if (count > time) then
				current_state <= next_state;
				count := 0;
			end if;
		end if;
	end process;
	
	-- Process to set the outputs and the next state
	process(current_state)	
	begin
		case current_state is
			when state_init =>
				ADC_INIT	<= '0';
				PRINT		<= '1';
				time 		<= 1000*ms;
				next_state	<= state_wait;
			
			when state_wait =>
				LIGHT_BLUE	<= '0';
				READ_BLUE	<= '0';
				LIGHT_GREEN	<= '0';
				READ_GREEN	<= '0';
				ADC_INIT 	<= 'Z';
				PRINT		<= '0';
				time 		<= 0;
				if (COMPARE = '0') then	next_state	<= state_read_blue;
				else 					next_state	<= state_wait;
				end if;
				
			when state_read_blue =>
				LIGHT_BLUE	<= '1';
				READ_BLUE	<= '1';
				LIGHT_GREEN	<= '0';
				READ_GREEN	<= '0';
				time 		<= 50*ms;
				if (COMPARE = '0') then	next_state	<= state_read_blue;
				else					next_state	<= state_wait_blue;
				end if;

			when state_wait_blue =>
				LIGHT_BLUE	<= '1';
				READ_BLUE	<= '0';
				LIGHT_GREEN	<= '0';
				READ_GREEN	<= '0';
				time 		<= 50*ms;
				if (COMPARE = '0') then	next_state	<= state_read_blue;
				else					next_state	<= state_read_green;
				end if;
				
			when state_read_green =>
				LIGHT_BLUE	<= '0';
				READ_BLUE	<= '0';
				LIGHT_GREEN	<= '1';
				READ_GREEN	<= '1';
				time 		<= 50*ms;
				if (COMPARE = '0') then	next_state	<= state_read_blue;
				else					next_state	<= state_wait_green;
				end if;

			when state_wait_green =>
				LIGHT_BLUE	<= '0';
				READ_BLUE	<= '0';
				LIGHT_GREEN	<= '1';
				READ_GREEN	<= '1';
				time 		<= 50*ms;
				if (COMPARE = '0') then	next_state	<= state_read_blue;
				else					next_state	<= state_print;
				end if;
				
			when state_print =>
				PRINT		<= '1';
				time 		<= 1000*ms;
				next_state	<= state_wait;
		end case;
	end process;
end funcional;