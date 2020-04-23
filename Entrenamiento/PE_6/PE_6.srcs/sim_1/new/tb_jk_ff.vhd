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

entity tb_jk_ff is
end tb_jk_ff;

architecture tb_arch of tb_jk_ff is
    constant T          :   time := 10ns;
    signal test_RSJK    :   std_logic_vector(3 downto 0);
    signal test_clk     :   std_logic;
    signal test_in      :   std_logic;
    signal test_out     :   std_logic;
    signal test_nout     :   std_logic;

    
begin
--****************************************
-- instantiation
--****************************************
    uut: entity work.jk_ff(arch)
    port map (
        clk => test_clk,
        pR => test_RSJK(3),
        pS => test_RSJK(2),
        pJ => test_RSJK(1),
        pK => test_RSJK(0),
        pSalida => test_out,
        npSalida => test_nout
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
-- signals 
--****************************************
   stim_proc: process
    begin
        test_RSJK <="0000";
        wait for 10 ns;	    	
        test_RSJK <="0100";
        wait for 10 ns;
        test_RSJK <="1000";
        wait for 10 ns;	    		    		                    
        test_RSJK <="1100";
        wait for 10 ns;	
        test_RSJK <="1101";
        wait for 10 ns;	
        test_RSJK <="1110";
        wait for 10 ns;	
        test_RSJK <="1111";
        wait for 10 ns;
        test_RSJK <="0111";
        wait for 10 ns;
        test_RSJK <="1011";
        wait for 10 ns;		
   end process;

end tb_arch;