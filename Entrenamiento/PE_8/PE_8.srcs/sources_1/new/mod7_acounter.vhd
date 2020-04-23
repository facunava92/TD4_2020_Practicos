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
-- Fecha de Entrega: 18/04/2020.
-- Hardware utilizado: Basys3
-- UCF utilizado: basys3.xdc
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mod7_acounter is
    Port (
        reset, clk  :   in  std_logic;
        on_off      :   in  std_logic;
        bin         :   out std_logic_vector(3 downto 0);
        an          :   out std_logic_vector(3 downto 0)             
        );
end mod7_acounter;

architecture arch of mod7_acounter is
    constant M      :   integer := 2;
    constant N      :   integer := 1;
    signal tick     :   std_logic;
    signal nreset   :   std_logic;    
    signal ff0_Q    :   std_logic;
    signal ff0_nQ   :   std_logic;
    signal ff1_Q    :   std_logic;
    signal ff1_nQ   :   std_logic;
    signal ff2_Q    :   std_logic;
    signal ff2_nQ   :   std_logic; 
    signal bin_buff :   std_logic_vector(3 downto 0);
            
begin
    nreset <= not(reset);        -- solo para Basys3, puladores logica positiva
--***************************************************
-- counter clock instantiation
--***************************************************
    one_seg_counter: entity work.mod_m_counter(arch)
        generic map (
            M => M,
            N => N
        )
        port map(
            reset => reset,
            clk => clk,
            max_tick => tick
        );
--***************************************************
-- Flip-Flop instantiation
--***************************************************
    ff0: entity work.jk_ff(arch)
        port map(
            clk => tick,
            pS => '1',
            pR => nreset,
            pJ => '1',
            pK => '1',
            pSalida  => ff0_Q,
            npSalida => ff0_nQ
        );
                
    ff1: entity work.jk_ff(arch)
        port map(
            clk => ff0_Q,            
            pS => '1',
            pR => nreset,
            pJ => '1',
            pK => '1',
            pSalida  => ff1_Q,
            npSalida => ff1_nQ
        );

    ff2: entity work.jk_ff(arch)
        port map(
            clk => ff1_Q,  
            pS => '1',
            pR => nreset,
            pJ => '1',
            pK => '1',
            pSalida  => ff2_Q,
            npSalida => ff2_nQ
        );
        
--***************************************************
-- sseg Display instantiation
--***************************************************            
--    display: entity work.bin2sseg(arch)
--        port map(
--            on_off => on_off,
--            bin(0) => ff0_Q,
--            bin(1) => ff1_Q,
--            bin(2) => ff2_Q,
--            bin(3) => '0',
--            an => an,
--            sseg => sseg
--        );

    bin <= '0' & ff2_nQ & ff1_nQ & ff0_nQ;               
end arch;
