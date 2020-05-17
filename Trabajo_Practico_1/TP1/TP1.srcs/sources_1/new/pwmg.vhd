
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity pwmg is
    generic (
        N       : integer := 7;
        period  : integer := 122
        );
    Port (
        clk, reset    :   in  std_logic;
	    cw, acw       :   in  std_logic;        
        ref           :   in  std_logic_vector(12 downto 0);
        position_in   :   in  std_logic_vector(13 downto 0);
        pwm, pwm_n    :   out std_logic
        );
end pwmg;

architecture arch of pwmg is
    signal count : unsigned(N-1 downto 0);
    signal duty  : unsigned(N-1 downto 0);
    signal ref_reg, ref_next    :  unsigned(13 downto 0);


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
    
    process(count, duty, reset)
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
