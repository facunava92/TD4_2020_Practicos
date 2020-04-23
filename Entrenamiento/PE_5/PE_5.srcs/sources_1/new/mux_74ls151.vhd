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

entity mux_74ls151 is
    Port (
        pE                                                                  :   in  std_logic;
        input1, input2, input3, input4, input5, input6, input7 , input8     :   in  std_logic;
        input9, input10, input11                                            :   in  std_logic;
        pSalida                                                             :   out std_logic
         );
         
end mux_74ls151;

architecture arch_mux of mux_74ls151 is
    signal sSelector    :   std_logic_vector(2 downto 0);
    signal sEntrada     :   std_logic_vector(7 downto 0);
begin

    sEntrada <=  input8 & input7 & input6 & input5 & input4 & input3 & input2 & input1;
    sSelector <= input11 & input10 & input9;
    
    process(pE, sSelector, sEntrada)
    begin
        if(pE = '0') then
            pSalida <= 'Z';
        else
            case sSelector is
                when "000" =>
                    pSalida <= sEntrada(0);
                 when "001" =>
                    pSalida <= sEntrada(1);
                when "010" =>
                    pSalida <= sEntrada(2);
                when "011" =>
                    pSalida <= sEntrada(3);
                when "100" =>
                    pSalida <= sEntrada(4);
                when "101" =>
                    pSalida <= sEntrada(5);
                when "110" =>
                    pSalida <= sEntrada(6);  
                when others =>
                    pSalida <= sEntrada(7);                                                                                                                                           
            end case;
        end if;
    end process;
         
    end arch_mux;
