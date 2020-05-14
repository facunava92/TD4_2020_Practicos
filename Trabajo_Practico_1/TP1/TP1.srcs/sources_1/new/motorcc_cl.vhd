----------------------------------------------------------------------------------
-- UNIVERSIDAD TECNOLÓGICA NACIONAL - FACULTAD REGIONAL CORDOBA
-- Carrera: INGENIERIA ELECTRÓNICA.
-- Asignatura: TÉCNICAS DIGITALES IV (ELECTIVA).
-- Año: 2020.
-- Grupo: 5
-- Integrantes:
--      NAVARRO, Facundo		Leg. Nº:63809
-- Fecha de Entrega: 28/04/2020.
-- Hardware utilizado: Kit-CPLD
-- UCF utilizado: cpld.xdc
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity motorcc_cl is
    port(
        clk, reset	:   in 	  std_logic;
        A, B		:   in	  std_logic;
        sw          :   in    std_logic_vector(12 downto 0);
        led         :   out   std_logic_vector(12 downto 0);     
        an          :   out   std_logic_vector(3 downto 0);
        sseg        :   out   std_logic_vector(6 downto 0)
    );
end motorcc_cl;

architecture arch of motorcc_cl is
	constant	N 		 : 	integer := 13;
    constant	M 		 : 	integer := 5760;
	constant	M_n		 : 	integer := -5760;

	signal A_s, B_s		 :	std_logic;
	signal up_s, down_s	 :	std_logic;

begin	
	led <= sw;
	
	debounce_A : entity work.debouncer(arch)
		port map(
			clk => clk,
			reset => reset,
			data_in => A,
			f_data => A_s
			);

	debounce_B : entity work.debouncer(arch)
		port map(
			clk => clk,
			reset => reset,
			data_in => B,
			f_data => B_s
			);
	 
	quadrature_decoder : entity work.quad_decoder(arch_mealy_stm_v2)
		port map(
			clk => clk,
			reset => reset,
			A => A_s,
			B => B_s,
			up => up_s,
			down => down_s
			);
			
	up_down_ctr: entity work.up_down_counter(arch)
		generic map(  
		  N => N,
		  M => M,
		  M_n => M_n
		  )
		port map(
			clk => clk,
			reset => reset,
			up => up_s,
			down => down_s,
            an => an,
            sseg => sseg
            );
            		
end arch;

