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

entity top_counter is
	port(
			clk, reset	:	in 	std_logic;
			A, B			:	in		std_logic;
			dir			:	out	std_logic;
         an          :  out 	std_logic_vector(3 downto 0);
         sseg        :  out 	std_logic_vector(6 downto 0)
		);
end top_counter;

architecture arch of top_counter is
	constant	N 				: 	integer := 11;
	signal A_s, B_s		:	std_logic;
	signal up_s, down_s	:	std_logic;
	
begin	
	
	debounce_A : entity work.debouncer(arch)
		port map(
			clk => clk,
			data_in => A,
			data_out => A_s
			);

	debounce_B : entity work.debouncer(arch)
		port map(
			clk => clk,
			data_in => B,
			data_out => B_s
--			);
	 
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
			dir => dir,
			up => up_s,
			down => down_s,
			an	=> an,
			sseg => sseg
				);
				
end arch;

