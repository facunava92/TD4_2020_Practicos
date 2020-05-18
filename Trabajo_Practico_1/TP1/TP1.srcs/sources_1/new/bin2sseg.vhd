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

entity bin2sseg is
    Port (  
            bin         :   in  std_logic_vector(3 downto 0);
            sseg        :   out std_logic_vector(6 downto 0)
          );
end bin2sseg;

architecture arch of bin2sseg is

begin

    with bin select
        sseg(6 downto 0) <=
            "1000000" when "0000", --0
            "1111001" when "0001", --1
            "0100100" when "0010", --2            
            "0110000" when "0011", --3            
            "0011001" when "0100", --4            
            "0010010" when "0101", --5            
            "0000010" when "0110", --6            
            "1111000" when "0111", --7            
            "0000000" when "1000", --8            
            "0011000" when "1001", --9            
            "0100000" when "1010", --a            
            "0000011" when "1011", --b            
            "1000110" when "1100", --c                    
            "0100001" when "1101", --d                                                           
            "0000110" when "1110", --e            
            "0001110" when others; --f
                      
end arch;