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
        an          :   out   std_logic_vector(3 downto 0);
        sseg        :   out   std_logic_vector(6 downto 0)
    );
end motorcc_cl;

architecture arch of motorcc_cl is
	constant	N 		 : 	integer := 13;
	signal A_s, B_s		 :	std_logic;
	signal up_s, down_s	 :	std_logic;
	signal counter_out_s :  std_logic_vector(N-1 downto 0);
	signal bcd3_s, bcd2_s, bcd1_s, bcd0_s : std_logic_vector(3 downto 0);
begin	
	
	
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
		  N => N   
		  )
		port map(
			clk => clk,
			reset => reset,
			up => up_s,
			down => down_s,
            counter_out => counter_out_s
			);
			
	bin2bcd: entity work.bin2bcd(arch)
			generic map(  
		      N => N   
		    )
		port map(
			clk => clk,
			reset => reset,
			bin => counter_out_s,
            bcd3 => bcd3_s,
            bcd2 => bcd2_s,
            bcd1 => bcd1_s,
            bcd0 => bcd0_s            
            );
            
	ssg_display: entity work.disp_mux(arch)

		port map(
			clk => clk,
			reset => reset,
            bin3 => bcd3_s,
            bin2 => bcd2_s,
            bin1 => bcd1_s,
            bin0 => bcd0_s,
            an => an,
            sseg => sseg                       
            );            
            		
end arch;