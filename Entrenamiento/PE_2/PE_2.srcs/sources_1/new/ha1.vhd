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

entity ha1 is
    Port (
        A           :   in  std_logic_vector(1 downto 0);
        enable      :   in  std_logic;
        D           :   out std_logic_vector(1 downto 0)
    );
end ha1;

architecture arch_ha1 of ha1 is

begin
    process(A, enable)
    begin
        if (enable = '0') then
            D <= "11";
        else
            case A is
                when "00" =>
                    D <= "00";
                when "01" | "10" =>
                    D <= "01";
                when others =>
                    D <= "10";
            end case;
        end if;
    end process;
                     
end arch_ha1;