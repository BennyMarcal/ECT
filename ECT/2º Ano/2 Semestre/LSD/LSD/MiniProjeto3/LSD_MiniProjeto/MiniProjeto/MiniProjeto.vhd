library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity MiniProjeto is
    port(CLOCK_50 : in  std_logic;
	      KEY      : in  std_logic_vector(2 downto 0);
	      HEX0     : out std_logic_vector(6 downto 0));
end MiniProjeto;

architecture Structural of MiniProjeto is
    -- Sinais para sincronizacao dos botoes
	 signal s_key0 : std_logic := '1';
	 signal s_key1 : std_logic := '1';
	 signal s_key2	: std_logic := '1';
	 
    -- Pulse Generator
	 signal s_key1_clean : std_logic := '1';
    signal s_enableCounterPulse : std_logic;
	 signal s_displayPulse : std_logic;
	 
	 -- Reset global
	 signal s_key0_clean : std_logic := '0';
	 signal s_reset : std_logic := '0';
	 
	 -- Contador binario
	 signal s_counter : std_logic_vector(3 downto 0);
	 
	 -- Botao start/stop (1 = start, 0 = stop)
	 signal s_key2_clean : std_logic := '0';
	 signal s_startStop : std_logic := '1';
	 
	 -- Enable para o display de 7 segmentos
	 signal s_enableDisplay : std_logic;
	 
begin

    buttonsSync : process(CLOCK_50)
	 begin
	     if (rising_edge(CLOCK_50)) then
		      s_key0 <= KEY(0);
				s_key1 <= KEY(1);
				s_key2 <= KEY(2);
		  end if;
    end process;
	 
	 debounceKEY0 : entity work.DebounceUnit(Behavioral)
	                generic map(kHzClkFreq     => 50_000,
						             mSecMinInWidth => 100,
										 inPolarity     => '0',
										 outPolarity    => '1')
						 port map(refClk    => CLOCK_50,
						          dirtyIn   => s_key0,
									 pulsedOut => s_key0_clean);
	 
	 debounceKEY1 : entity work.DebounceUnit(Behavioral)
	                generic map(kHzClkFreq     => 50_000,
						             mSecMinInWidth => 100,
										 inPolarity     => '0',
										 outPolarity    => '1')
						 port map(refClk    => CLOCK_50,
						          dirtyIn   => s_key2,
									 pulsedOut => s_key2_clean);
									 
	 resetProcess : process(s_key0_clean)
	 begin
	     s_reset <= s_key0_clean;
	 end process;
									 
	 startStopProcess : process(s_reset, s_key2_clean)
	 begin
	     if (s_reset = '1') then
		      s_startStop <= '0';
	     elsif (rising_edge(s_key2_clean)) then
		      s_startStop <= not s_startStop;
		  end if;
	 end process;
    
	 displayPulseGenerator : entity work.BlinkPulseGenerator(Behavioral)
	                         generic map(NUMBER_STEPS => 50_000_000)
									 port map(clk   => CLOCK_50,
									          reset => s_reset,
												 blink => s_displayPulse);
												 
    enableDisplayProcess : process(s_startStop, s_displayPulse)
	 begin
	     if (s_startStop = '1') then
		      s_enableDisplay <= '1';
		  else 
		      s_enableDisplay <= s_displayPulse;
		  end if;
    end process;
	 
	 counterPulseGenerator : entity work.EnablePulseGenerator(Behavioral)
	                         generic map(MAX => 12_500_000)
	                         port map(clk   => CLOCK_50,
									          reset => s_reset,
					                      pulse => s_enableCounterPulse);
												 
    counter : entity work.CounterDown4(Behavioral)
	           port map(clk         => CLOCK_50,
				           enablePulse => s_enableCounterPulse,
							  enableStart => s_startStop,
							  reset       => s_reset,
							  count       => s_counter);
							  
   sevenSegmentDisplay : entity work.Bin7SegDecoder(Behavioral)
	                      port map(enable   => s_enableDisplay,
								          binInput => s_counter,
											 decOut_n => HEX0);
	 
end Structural;