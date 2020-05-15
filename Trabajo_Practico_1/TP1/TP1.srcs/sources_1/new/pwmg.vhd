
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;


entity pwmg is
    generic (
        N       : integer := 7;
        period  : integer := 122
        );
    Port (
        clk, reset  :   in  std_logic;
        duty        :   in  std_logic_vector(N-1 downto 0);
        pwm, pwm_n  :   out std_logic
        );
end pwmg;

architecture arch of pwmg is
    signal count : std_logic_vector(N-1 downto 0);

begin
        
    process(clk, reset)
    begin
        if(reset = '1') then
            count <= (others => '0');
        elsif (rising_edge(clk)) then
            if (count = period - 1) then
                count <= (others => '0');
            else
                count <= count + 1;
            end if;
        end if;        
    end process;
    
    process(count, duty)
    begin
        if (reset = '1') then
            pwm <= '0';
            pwm_n <= '0';
        elsif(count < 6) then
            pwm <= '1';
            pwm_n <= '0';
        elsif (count >= 116) then
            pwm <= '0';
            pwm_n <= '1';
        else
            if (count < duty) then
                pwm <= '1';
                pwm_n <= '0';
            else
                pwm <= '0';
                pwm_n <= '1';
            end if;
        end if;
    end process;

end arch;
