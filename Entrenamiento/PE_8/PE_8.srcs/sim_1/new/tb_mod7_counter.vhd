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
-- Fecha de Entrega: 17/04/2020.
-- Hardware utilizado: Basys3

-- UCF utilizado: basys3.xdc
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_mod7_counter is
end tb_mod7_counter;

architecture tb_arch of tb_mod7_counter is
    constant T                          :   time := 10ns;
    signal  test_reset, test_clk        :   std_logic;
    signal  test_on_off                 :   std_logic;
--    signal  test_sseg                   :   std_logic_vector(6 downto 0);
    signal  test_bin                    :   std_logic_vector(3 downto 0);
    signal  test_an                     :   std_logic_vector(3 downto 0);    
    
begin
--****************************************
-- instantiation
--****************************************
    uut: entity work.mod7_acounter(arch)
    port map (
        reset => test_reset,
        clk => test_clk,
        on_off => test_on_off,
        bin => test_bin,
        an => test_an
    );
    
--****************************************
-- clock
--****************************************        
    process
    begin
        test_clk <= '0';
        wait for T/2;
        test_clk <= '1';
        wait for T/2;
   end process;         
    
    test_reset <= '1' , '0' after T/2;


end tb_arch;
