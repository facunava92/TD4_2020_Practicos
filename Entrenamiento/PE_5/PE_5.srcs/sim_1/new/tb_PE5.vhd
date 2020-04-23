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

entity tb_PE5 is
end tb_PE5;

architecture tb_arch of tb_PE5 is
    constant T: time := 10ns;
    signal test_in      :   std_logic_vector(7 downto 0);
    signal test_sel     :   std_logic_vector(2 downto 0);
    signal test_en      :   std_logic;
    signal test_out     :   std_logic;

begin
--****************************************
-- instantiation
--****************************************
    uut: entity work.mux_74ls151(arch_mux)
        port map(
            pE => test_en,
            input1 => test_in(0),
            input2 => test_in(1),
            input3 => test_in(2),
            input4 => test_in(3),
            input5 => test_in(4),
            input6 => test_in(5),
            input7 => test_in(6),
            input8 => test_in(7),
            input9  => test_sel(0),
            input10 => test_sel(1),
            input11 => test_sel(2),
            pSalida => test_out
            );
--****************************************
-- instantiation
--****************************************
    test_en <= '0', '1' after T/2;
    
--****************************************
-- signals 
--****************************************     
    test_in <= "11001010";
    process
    begin
        test_sel <= "000";
        wait for 10 ns;
        test_sel <= "001";
        wait for 10 ns;
        test_sel <= "010";
        wait for 10 ns;
        test_sel <= "011";
        wait for 10 ns;
        test_sel <= "100";
        wait for 10 ns;
        test_sel <= "101";
        wait for 10 ns;
        test_sel <= "110";
        wait for 10 ns;
        test_sel <= "111";
        wait for 10 ns;
    end process;                                                                 	
end tb_arch;
