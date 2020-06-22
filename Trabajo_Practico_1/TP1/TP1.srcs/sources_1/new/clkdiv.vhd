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
use ieee.std_logic_unsigned.all;


entity clkdiv is
    Port (
        mclk, reset :   in  std_logic;
        clk_b10      :   out std_logic
     );
end clkdiv;

architecture arch of clkdiv is
    signal  q :   std_logic_vector(16 downto 0);
begin

    process(mclk, reset)
    begin
        if (reset = '1') then
            q <= (others => '0');
        elsif (rising_edge(mclk)) then
            q <= q + 1;
        end if;
    end process;

    clk_b10 <=  q(10);
end arch;
