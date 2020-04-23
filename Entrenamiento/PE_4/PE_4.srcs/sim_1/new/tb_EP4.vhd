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

entity tb_EP4 is
end tb_EP4;

architecture tb_arch of tb_EP4 is
    constant T: time := 10ns;
    signal test_rst     :   std_logic;
    signal test_clk     :   std_logic;
    signal test_CE     :   std_logic;
    signal test_in      :   std_logic_vector(3 downto 0);
    signal test_out     :   std_logic_vector(1 downto 0);

begin
--****************************************
-- instantiation
--****************************************
    uut: entity work.deco4to2(arch_deco4to2)
        port map(
            clk => test_clk,
            CE => test_CE,
            pReset => test_rst,
            pInput => test_in,
            pOutput => test_out
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
   
--****************************************
-- reset
--**************************************** 
    test_CE <= '0', '1' after T;
    
--****************************************
-- reset
--**************************************** 
    test_rst <= '1', '0' after T/2;
    
--****************************************
-- signals 
--****************************************     
   stim_proc: process
    begin
        wait for T;
    		                    
        test_in <="0000";
        wait for 10 ns;	
        test_in <="0001";
        wait for 10 ns;	
        test_in <="0010";
        wait for 10 ns;	
        test_in <="0011";
        wait for 10 ns;	
        test_in <="0100";
        wait for 10 ns;	
        test_in <="0101";
        wait for 10 ns;	
        test_in <="0110";
        wait for 10 ns;	
        test_in <="0111";
        wait for 10 ns;
        test_in <="1000";
        wait for 10 ns;	
        test_in <="1001";
        wait for 10 ns;	
        test_in <="1010";
        wait for 10 ns;	
        test_in <="1011";
        wait for 10 ns;	
        test_in <="1100";
        wait for 10 ns;		
        test_in <="1101";
        wait for 10 ns;
        test_in <="1110";
        wait for 10 ns;
        test_in <="1111";
   end process;

end tb_arch;