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
use ieee.numeric_std.all;

entity disp_mux is
    Port(
            clk, reset                  :   in  std_logic;
            bin3, bin2, bin1, bin0      :   in  std_logic_vector(3 downto 0);
            an                          :   out std_logic_vector(3 downto 0);
            sseg                        :   out std_logic_vector(6 downto 0)
            );
end disp_mux;

architecture arch of disp_mux is
    -- refreshing rate around 1 kHz (100Mhz/2^17)
    constant N: integer := 19;
    signal q_reg, q_next: unsigned(N-1 downto 0);
    signal sel      : std_logic_vector(1 downto 0);
    signal bin_reg  : std_logic_vector(3 downto 0);

begin

    bcd_decoder: entity work.bin2sseg(arch)
        port map(
            bin => bin_reg,
            sseg => sseg        
        );

    -- register
    process(clk, reset)
    begin
        if (reset = '1') then
            q_reg <= (others => '0');
        elsif(rising_edge(clk)) then
            q_reg <= q_next;
        end if;
    end process;
    
    -- contador latcheado
    q_next <= q_reg + 1;
    
    -- 2MSBs controlar el multipleado de los 4 display
    sel <= std_logic_vector(q_reg(N-1 downto N-2));
    process(sel, bin0, bin1, bin2, bin3)
    begin
        case sel is 
            when "00" =>
                an <= "1110";
                bin_reg <= bin0;
            when "01" =>
                an <= "1101";
                bin_reg <= bin1;
            when "10" =>
                an <= "1011";
                bin_reg <= bin2;                
            when others =>
                an <= "0111";
                bin_reg <= bin3;
        end case;
    end process;             
end arch;
