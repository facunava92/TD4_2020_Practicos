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

entity debouncer is
	port (
			clk,reset 	: in std_logic;
			data_in	    : in std_logic;
			f_data   	: out std_logic
	);
end debouncer;

architecture arch of debouncer is
    signal filter_reg, filter_next : std_logic_vector(3 downto 0);
    signal f_data_reg, f_data_next : std_logic;   
 
begin
	process(clk, reset)
	begin
	   if(reset = '1') then
	       filter_reg <= "0000";
	       f_data_reg <= '0';
	   elsif (rising_edge(clk)) then
	       filter_reg <= filter_next;
	       f_data_reg <= f_data_next;
	   end if;
	end process;
	
	filter_next <= data_in & filter_reg(3 downto 1);
	f_data_next <= '1' when filter_reg = "1111" else
	               '0' when filter_reg = "0000" else
	               f_data_reg;
	               
    f_data <= f_data_reg;
	 
end arch;

