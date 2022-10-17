library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity PulseGenerator is
	generic (MAX : positive := 25_000_000);
	port (
		clk   : in std_logic;
		reset : in std_logic;
		pulse : out std_logic);
end PulseGenerator;

architecture Behavioral of PulseGenerator is
	signal s_count : natural range 0 to MAX - 1;
begin
	process (clk)
	begin
		if (rising_edge(clk)) then
			pulse <= '0';
			if (reset = '1') then
				s_count <= 0;
			else
				s_count <= s_count + 1;
				if (s_count = MAX - 1) then
					s_count <= 0;
					pulse <= '1';
				end if;
			end if;
		end if;
	end process;
end Behavioral;