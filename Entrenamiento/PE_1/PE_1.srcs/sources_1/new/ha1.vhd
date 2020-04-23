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
        a, b        :   in  std_logic;
        enable      :   in  std_logic;
        resultado   :   out std_logic_vector(1 downto 0)
    );
end ha1;

architecture arch_ha1 of ha1 is

begin
    resultado <= "11" when (enable = '0') else
                 "00" when (a='0' and b='0') else
                 "01" when (a='0' and b='1') or (a='1' and b='0')  else               
                 "10" ;
-- resultado(0) = suma
-- resultado(1) = carry            
end arch_ha1;
