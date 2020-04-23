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

entity mc14028b is
    Port (
        clock   :   in  std_logic;
        reset   :   in  std_logic;
        input   :   in  std_logic_vector(3 downto 0);
        output  :   out std_logic_vector(9 downto 0)
    );
end mc14028b;

architecture arch_mc14028b of mc14028b is

begin
    process(reset,input,clock)
    begin
        if (rising_edge(clock)) then
            if (reset = '1') then
                output <= "0000000000";        
            else
                case input is
                    when "0000" => 
                     output <= "0000000001";
                    when "0001" => 
                     output <= "0000000010";
                    when "0010" =>
                     output <= "0000000100";
                    when "0011" =>
                     output <= "0000001000";
                    when "0100" => 
                     output <= "0000010000";
                    when "0101" => 
                     output <= "0000100000";
                    when "0110" =>
                     output <= "0001000000";
                    when "0111" =>
                     output <= "0010000000";
                    when "1000" =>
                     output <= "0100000000";
                    when "1001" => 
                      output <= "1000000000";
                    when others => 
                      output <= "0000000000";
                 end case;
	       end if;
        end if;	       
    end process;
end arch_mc14028b;


