----------------------------------------------------------------------------------
-- UNIVERSIDAD TECNOLÓGICA NACIONAL - FACULTAD REGIONAL CORDOBA
-- Carrera: INGENIERIA ELECTRÓNICA.
-- Asignatura: TÉCNICAS DIGITALES IV (ELECTIVA).
-- Año: 2020.
-- Grupo: 5
-- Integrantes:
--      NAVARRO, Facundo		Leg. Nº:63809
-- Fecha de Entrega: 17/05/2020.
-- Hardware utilizado: Basys3
-- UCF utilizado: basys3.xdc
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity pwmg is
    generic (
        N       : integer := 13;
        T       : integer := 7;
        period  : integer := 122
        );
    Port (
        clk, reset    :   in  std_logic;
        ref           :   in  std_logic_vector(N downto 0);
        pos           :   in  std_logic_vector(N downto 0);
        pwm, pwm_n    :   out std_logic
        );
end pwmg;

architecture arch of pwmg is
    constant lim_inf : integer := 6;
    constant lim_sup : integer := 116;
    
    signal count : unsigned(T-1 downto 0);
    signal duty  : unsigned(T-1 downto 0);
    
    signal ref_reg, pos_reg, step_reg       :  signed(N downto 0);
    signal ref_next, pos_next, step_next    :  signed(N downto 0);
    
    signal cw, acw  :   std_logic;
    signal pwm_reg  :   std_logic;
    signal pwm_next :   std_logic;

begin

    process(clk, reset)
    begin
        if (reset = '1') then
            ref_reg  <= (others => '0');
            pos_reg  <= (others => '0');
            step_reg <= (others => '0');
        elsif (rising_edge(clk)) then
            ref_reg  <= ref_next;
            pos_reg  <= pos_next;
            step_reg <= step_next;
            pwm_reg <= pwm_next;
        end if;
    end process;         
    
    ref_next <=  signed(ref);
    pos_next <=  signed(pos);
    
    step_next <=  pos_reg - ref_reg when pos_reg > ref_reg else
                  ref_reg - pos_reg when ref_reg > pos_reg else
                  (others => '0');

    cw <= '1' when pos_reg > ref_reg else
          '0';

    acw <= '1' when ref_reg > pos_reg else
          '0';
          
    duty <= "1111010" when cw =  '1' and step_reg > 100 else    -- 100%
            "1011011" when cw =  '1' and step_reg > 50  else    --  75%
            "1000011" when cw =  '1'                    else    --  55%
            "0000000" when acw = '1' and step_reg > 100 else    --   0%
            "0011111" when acw = '1' and step_reg > 50  else    --  25%
            "0110111" when acw = '1'                    else    --  45%
            "0111101";                                          --  50%
       
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
    
    process(clk, count, duty)
    begin
        if(rising_edge(clk)) then
            if(count < lim_inf) then
                pwm_next <= '1';
            elsif (count >= lim_sup) then
                pwm_next <= '0';
            else
                if (count < duty) then
                    pwm_next <= '1';
                else
                    pwm_next <= '0';
                end if;
            end if;                
        end if;            
    end process;
    
    pwm   <= pwm_reg      when reset = '0' else '0';
    pwm_n <= not(pwm_reg) when reset = '0' else '0';
    

end arch;
