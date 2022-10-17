library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CounterDown4_Tb is
end CounterDown4_Tb;

architecture Stimulus of CounterDown4_Tb is
    signal s_clk, s_enablePulse, s_enableStart, s_reset  : std_logic;
	 signal s_count : std_logic_vector(3 downto 0);
begin
    uut : entity work.CounterDown4(Behavioral)
	       port map(clk         => s_clk,
			          enablePulse => s_enablePulse,
						 enableStart => s_enableStart,
						 reset       => s_reset,
						 count       => s_count);
						 
    clk_proc  : process
	             begin
					     s_clk <= '0';
						  wait for 20 ns;
						  s_clk <= '1';
						  wait for 20 ns;
					 end process;
					 
    enablePulse_proc : process
	                    begin
							      s_enablePulse <= '0';
									wait for 2000 ms;
									s_enablePulse <= '1';
									wait for 2000 ms;
							  end process;
						 
    stim_proc : process
	             begin
					     s_enableStart <= '0';
						  s_reset <= '1';
						  wait for 5000 ms;
						  s_enableStart <= '1';
						  s_reset <= '0';
						  wait for 20000 ms;
						  s_enableStart <= '0';
						  wait for 2500 ns;
				    end process;
end Stimulus;