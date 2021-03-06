--=================================================--
--	Project:	Color indentifier with FPGA
--	File:		lcd_printer.vhd 
--	Author: 	Digi-key, Scott Larson, 2012
--	Edited by:	Leonardo Benitez, 2017
--	Endianness:	litle endian
--	Version:	1.0 
--=================================================--

library ieee;
use ieee.std_logic_1164.all;

--------------------------------------------------------------------------------

entity lcd_printer is
	port(
		clk       	: in  	std_logic;  					-- System clock
		print		: in 	std_logic;						-- Comand from de Main Controller to print a word
		word  		: in	std_logic_vector (1 downto 0);	-- What the LCD should print (00=Welcome, 01=Green, 10=Blue)
		rw, rs, en	: out 	std_logic;  					-- Read/write, setup/data, and enable for lcd
		lcd_data  	: out 	std_logic_vector(7 downto 0)	-- Data signals for lcd
	);
end lcd_printer;

--------------------------------------------------------------------------------

architecture behavior of lcd_printer is
	signal   	lcd_enable	: std_logic;
	signal   	lcd_busy	: std_logic;
	signal   	lcd_clear	: std_logic := '1';
	signal   	lcd_bus		: std_logic_vector (9 downto 0);
	constant	A			: std_logic_vector (9 downto 0) := "1001000001";
	constant	B			: std_logic_vector (9 downto 0) := "1001000010";
	constant	C			: std_logic_vector (9 downto 0) := "1001000011";
	constant	D			: std_logic_vector (9 downto 0) := "1001000100";
	constant	E			: std_logic_vector (9 downto 0) := "1001000101";
	constant	F			: std_logic_vector (9 downto 0) := "1001000110";
	constant	G			: std_logic_vector (9 downto 0) := "1001000111";
	constant	H			: std_logic_vector (9 downto 0) := "1001001000";
	constant	I			: std_logic_vector (9 downto 0) := "1001001001";
	constant	J			: std_logic_vector (9 downto 0) := "1001001010";
	constant	K			: std_logic_vector (9 downto 0) := "1001001011";
	constant	L			: std_logic_vector (9 downto 0) := "1001001100";
	constant	M			: std_logic_vector (9 downto 0) := "1001001101";
	constant	N			: std_logic_vector (9 downto 0) := "1001001110";
	constant	O			: std_logic_vector (9 downto 0) := "1001001111";
	constant	P			: std_logic_vector (9 downto 0) := "1001010000";
	constant	Q			: std_logic_vector (9 downto 0) := "1001010001";
	constant	R			: std_logic_vector (9 downto 0) := "1001010010";
	constant	S			: std_logic_vector (9 downto 0) := "1001010011";
	constant	T			: std_logic_vector (9 downto 0) := "1001010100";
	constant	U			: std_logic_vector (9 downto 0) := "1001010101";
	constant	v			: std_logic_vector (9 downto 0) := "1001010110";
	constant	W			: std_logic_vector (9 downto 0) := "1001010111";
	constant	X			: std_logic_vector (9 downto 0) := "1001011000";
	constant	Y			: std_logic_vector (9 downto 0) := "1001011001";
	constant	Z			: std_logic_vector (9 downto 0) := "1001011010";
	
	component lcd_controller is
		port(
		   clk        : in  std_logic; 						--system clock
		   reset_n    : in  std_logic; 						--active low reinitializes lcd
		   lcd_enable : in  std_logic; 						--latches data into lcd controller
		   lcd_bus    : in  std_logic_vector(9 downto 0); 	--data and control signals
		   busy       : out std_logic; 						--lcd controller busy/idle feedback
		   rw, rs, e  : out std_logic; 						--read/write, setup/data, and enable for lcd
		   lcd_data   : out std_logic_vector(7 downto 0)	--data signals for lcd
		); 
	end component;
begin
	-- Instantiate the lcd controller
	dut: lcd_controller	port map(clk => clk, reset_n => lcd_clear, lcd_enable => lcd_enable, lcd_bus => lcd_bus, busy => lcd_busy, rw => rw, rs => rs, e => en, lcd_data => lcd_data);
	
	-- Printing Process
	process(clk)
		variable char		: integer range 0 to 10 := 0;
		variable printing	: std_logic := '0';
	begin
		if(clk'event and clk = '1') then
			if(print='1') then
				printing := '0';
			end if;
			if(lcd_busy = '0' and lcd_enable = '0' and printing = '0') then
				lcd_enable <= '1';		
				char := char + 1;
				if (word="00") then
					case char is
						when 1 		=> lcd_enable <= '0';lcd_clear <= '0';
						when 2 		=> lcd_enable <= '0';lcd_clear <= '1';
						when 3 		=> 
						when 4 		=> lcd_bus <= W;
						when 5 		=> lcd_bus <= E;
						when 6 		=> lcd_bus <= L;
						when 7 		=> lcd_bus <= C;
						when 8 		=> lcd_bus <= O;
						when 9 		=> lcd_bus <= M;
						when 10		=> lcd_bus <= E;
						when others	=> lcd_enable <= '0';char := 0; printing := '1';
					end case;
				end if;
				if (word = "01") then
					case char is
						when 1 		=> lcd_enable <= '0';lcd_clear <= '0';
						when 2 		=> lcd_enable <= '0';lcd_clear <= '1';
						when 3 		=> 
						when 4 		=> lcd_bus <= G;
						when 5 		=> lcd_bus <= R;
						when 6 		=> lcd_bus <= E;
						when 7 		=> lcd_bus <= E;
						when 8 		=> lcd_bus <= N;
						when others => lcd_enable <= '0';char := 0; printing := '1';
					end case;
				elsif (word = "10") then
					case char is
						when 1		=> lcd_enable <= '0';lcd_clear <= '0';
						when 2		=> lcd_enable <= '0';lcd_clear <= '1';
						when 3		=> 
						when 4		=> lcd_bus <= B;
						when 5		=> lcd_bus <= L;
						when 6		=> lcd_bus <= U;
						when 7		=> lcd_bus <= E;
						when others => lcd_enable <= '0';char := 0;printing := '1';
					end case;				
				end if;
			else
				lcd_enable <= '0';
			end if;
		end if;
	end process;
end behavior;
