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
-- Fecha de Entrega: 15/04/2020.
-- Hardware utilizado: Basys3
-- UCF utilizado: basys3.xdc
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


entity mod_m_counter is
    Generic(
        M:  integer := 2;  -- mod-M
        N:  integer := 1    -- number of bits Log2(M)
            );
    Port (
        clk, reset  :   in  std_logic;
        max_tick    :   out std_logic
         );
end mod_m_counter;

architecture arch of mod_m_counter is
    signal r_reg    :  unsigned(N-1 downto 0);
    signal r_next   :  unsigned(N-1 downto 0);

begin
    process(clk, reset)
    begin
        if(reset='1') then             
            r_reg <= (others => '0');
        elsif(rising_edge(clk)) then
            r_reg <= r_next;
        end if;
    end process;
    
    r_next <= (others => '0') when r_reg = (M-1) else
              r_reg + 1;
    
    max_tick <= '1' when r_reg = (M-1) else '0';

--    process(clk, reset)
--    begin
--        if(rising_edge(clk)) then
--            r_reg <= r_next;
--            if(reset='1') then             
--                r_reg <= (others => '0');
--            end if;
--        end if;
--    end process;
    
--    r_next <= (others => '0') when r_reg = (M-1) else
--              r_reg + 1;
    
--    max_tick <= '1' when r_reg = (M-1) else '0';

end arch;
