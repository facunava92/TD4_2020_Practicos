----------------------------------------------------------------------------------
-- UNIVERSIDAD TECNOLÓGICA NACIONAL - FACULTAD REGIONAL CORDOBA
-- Carrera: INGENIERIA ELECTRÓNICA.
-- Asignatura: TÉCNICAS DIGITALES IV (ELECTIVA).
-- Año: 2020.
-- Grupo: 5
-- Integrantes:
--      NAVARRO, Facundo
--      Leg. Nº:63809
--
-- Fecha de Entrega: 14/04/2020.
-- Hardware utilizado: Basys3
-- UCF utilizado: basys3.xdc
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity deco4to2 is
    Port (
        clk, pReset :   in  std_logic;
        CE          :   in  std_logic;
        pInput      :   in  std_logic_vector(3 downto 0);
        pOutput     :   out std_logic_vector(1 downto 0)    
    );
end deco4to2;

architecture arch_deco4to2 of deco4to2 is

BEGIN
    process(clk)
    begin
        if (rising_edge(clk)) then
            if (CE = '0') then
                pOutput <= "ZZ";
            elsif (pReset = '1') then
                pOutput <= "00";
            else
                case pInput is
                    when "0001" =>
                        pOutput <= "00";
                    when "0010" =>
                        pOutput <= "01";
                    when "0100" =>
                        pOutput <= "10";
                    when "1000" =>
                        pOutput <= "11";
                    when others =>
                        pOutput <= "00";
                end case;
            end if;
        end if;               
    end process;
END arch_deco4to2;
