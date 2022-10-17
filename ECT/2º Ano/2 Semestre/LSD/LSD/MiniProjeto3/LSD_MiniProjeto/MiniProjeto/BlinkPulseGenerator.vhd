library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity BlinkPulseGenerator is
    generic(NUMBER_STEPS : positive := 25_000_000);
	 port(clk   : in  std_logic;
	      reset : in  std_logic;
			blink : out std_logic);
end BlinkPulseGenerator;

architecture Behavioral of BlinkPulseGenerator is
    signal s_counter : natural range 0 to NUMBER_STEPS-1;
begin

    count_proc : process(clk)
	 begin
	     if (rising_edge(clk)) then
		      if (reset = '1') or (s_counter >= NUMBER_STEPS-1) then
				    s_counter <= 0;
			   else
				    s_counter <= s_counter + 1;
				end if;
				
				if (s_counter >= (NUMBER_STEPS/2)) then
				    blink <= '1';
			   else
				    blink <= '0';
			   end if;
		   end if;
    end process;
	 
end Behavioral;