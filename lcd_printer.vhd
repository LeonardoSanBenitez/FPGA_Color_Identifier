--------------------------------------------------------------------------------
--
--   filename:         lcd_example.vhd
--   dependencies:     none
--   design software:  quartus ii 32-bit version 11.1 build 173 sj full version
--
--   hdl code is provided "as is."  digi-key expressly disclaims any
--   warranty of any kind, whether express or implied, including but not
--   limited to, the implied warranties of merchantability, fitness for a
--   particular purpose, or non-infringement. in no event shall digi-key
--   be liable for any incidental, special, indirect or consequential
--   damages, lost profits or lost data, harm to your equipment, cost of
--   procurement of substitute goods, technology or services, any claims
--   by third parties (including but not limited to any defense thereof),
--   any claims for indemnity or contribution, or other similar costs.
--
--   version history
--   version 1.0 6/13/2012 scott larson
--     initial public release
--
--   prints "123456789" on a hd44780 compatible 8-bit interface character lcd 
--   module using the lcd_controller.vhd component.
--
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

--------------------------------------------------------------------------------

entity lcd_printer is
	port(
		clk       	: in  	std_logic;  					-- System clock
		print		: in 	std_logic;						-- Comand from de Main Controller to print a word
		word  		: in	std_logic;						-- What the printer should print
		rw, rs, en	: out 	std_logic;  					-- Read/write, setup/data, and enable for lcd
		lcd_data  	: out 	std_logic_vector(7 downto 0)	-- Data signals for lcd
	);
end lcd_printer;

--------------------------------------------------------------------------------

architecture behavior of lcd_printer is
	signal   	lcd_enable : std_logic;
	signal   	lcd_bus    : std_logic_vector(9 downto 0);
	signal   	lcd_busy   : std_logic;
	constant	A: std_logic_vector (9 downto 0) := "1001000001";
	constant	B: std_logic_vector (9 downto 0) := "1001000010";
	constant	C: std_logic_vector (9 downto 0) := "1001000011";
	constant	D: std_logic_vector (9 downto 0) := "1001000100";
	constant	E: std_logic_vector (9 downto 0) := "1001000101";
	constant	F: std_logic_vector (9 downto 0) := "1001000110";
	constant	G: std_logic_vector (9 downto 0) := "1001000111";
	constant	H: std_logic_vector (9 downto 0) := "1001001000";
	constant	I: std_logic_vector (9 downto 0) := "1001001001";
	constant	J: std_logic_vector (9 downto 0) := "1001001010";
	constant	K: std_logic_vector (9 downto 0) := "1001001011";
	constant	L: std_logic_vector (9 downto 0) := "1001001100";
	constant	M: std_logic_vector (9 downto 0) := "1001001101";
	constant	N: std_logic_vector (9 downto 0) := "1001001110";
	constant	O: std_logic_vector (9 downto 0) := "1001001111";
	constant	P: std_logic_vector (9 downto 0) := "1001010000";
	constant	Q: std_logic_vector (9 downto 0) := "1001010001";
	constant	R: std_logic_vector (9 downto 0) := "1001010010";
	constant	S: std_logic_vector (9 downto 0) := "1001010011";
	constant	T: std_logic_vector (9 downto 0) := "1001010100";
	constant	U: std_logic_vector (9 downto 0) := "1001010101";
	constant	v: std_logic_vector (9 downto 0) := "1001010110";
	constant	W: std_logic_vector (9 downto 0) := "1001010111";
	constant	X: std_logic_vector (9 downto 0) := "1001011000";
	constant	Y: std_logic_vector (9 downto 0) := "1001011001";
	constant	Z: std_logic_vector (9 downto 0) := "1001011010";
	
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
	--instantiate the lcd controller
	dut: lcd_controller	port map(clk => clk, reset_n => '1', lcd_enable => lcd_enable, lcd_bus => lcd_bus, busy => lcd_busy, rw => rw, rs => rs, e => en, lcd_data => lcd_data);
	process(clk, word)
		variable char  :  integer range 0 to 10 := 0;
	begin
		if(clk'event and clk = '1') then
			if(lcd_busy = '0' and lcd_enable = '0' and print = '1') then
				lcd_enable <= '1';
				if(char < 10) then
					char := char + 1;
				end if;
				if (word = '0') then
					case char is
						when 1 => lcd_bus <= G;
						when 2 => lcd_bus <= R;
						when 3 => lcd_bus <= E;
						when 4 => lcd_bus <= E;
						when 5 => lcd_bus <= N;
						when others => lcd_enable <= '0'; char := 0;
					end case;
				else
					case char is
						when 1 => lcd_bus <= B;
						when 2 => lcd_bus <= L;
						when 3 => lcd_bus <= U;
						when 4 => lcd_bus <= E;
						when others => lcd_enable <= '0'; char := 0;
					end case;				
				end if;
			else
				lcd_enable <= '0';
			end if;
		end if;
	end process;
end behavior;
