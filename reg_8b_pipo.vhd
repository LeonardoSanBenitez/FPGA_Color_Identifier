library ieee;
use ieee.std_logic_1164.all;

entity reg_8b_pipo is
	port (
		D		: in	std_logic_vector(7 downto 0);
		CLK		: in	std_logic;
		EN		: in	std_logic;
		Q		: out	std_logic_vector(7 downto 0)
	);
end reg_8b_pipo;

architecture functional of reg_8b_pipo is
begin
	process(CLK)
	begin
		if (CLK'event and CLK='1' and EN='1') then
			Q <= D;
		end if;
	end process;
end functional;