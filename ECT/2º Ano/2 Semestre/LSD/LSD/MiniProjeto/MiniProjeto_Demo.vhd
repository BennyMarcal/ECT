library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MiniProjeto_Demo is
	port (
		CLOCK_50 : in std_logic;
		KEY      : in std_logic_vector(2 downto 0);
		SW       : in std_logic_vector(1 downto 0);
		HEX0     : out std_logic_vector(6 downto 0);
		LEDR     : out std_logic_vector(3 downto 0)
	);
end MiniProjeto_Demo;

architecture Structural of MiniProjeto_Demo is
	signal s_pulse : std_logic;
	signal s_count : std_logic_vector(3 downto 0);

begin
	pulse_generator : entity work.PulseGenerator(Behavioral)
		port map(
			clk   => CLOCK_50,
			reset => KEY(2),
			pulse => s_pulse
		);

	counter_down_4 : entity work.CounterDown4(Behavioral)
		port map(
			clk    => KEY(1),
			enable => SW(0),
			reset  => KEY(1),
			count  => LEDR
		);

	bin_7_seg_decoder : entity work.Bin7SegDecoder(Behavioral)
		port map(
			bininput  => s_count,
			binoutput => HEX0
		);

end Structural;