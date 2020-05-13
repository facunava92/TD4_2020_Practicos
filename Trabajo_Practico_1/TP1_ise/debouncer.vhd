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

entity debouncer is
	port (
			clk 		: in std_logic;
			data_in	: in std_logic;
			data_out	: out std_logic
	);
end debouncer;

architecture arch of debouncer is
	Signal D1, D2, D3, D4: std_logic;
 
begin
	process(clk)
	begin	 
		if (rising_edge(clk)) then	 
			D1 <= data_in;	 
			D2 <= D1;	 
			D3 <= D2;
			D4 <= D3;	
		end if;		 
	end process;
	 
	data_out <= D1 and D2 and D3 and D4;

end arch;

