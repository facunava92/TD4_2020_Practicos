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
-- Fecha de Entrega: 16/04/2020.
-- Hardware utilizado: Basys3
-- UCF utilizado: basys3.xdc
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity oe_counter is
    Port (
        reset, clk  :   in  std_logic;
        odd_even    :   in  std_logic;
        on_off      :   in  std_logic;
        sseg        :   out std_logic_vector(6 downto 0);
        an          :   out std_logic_vector(3 downto 0)
        );
end oe_counter;

architecture arch of oe_counter is
    constant M      :   integer := 50000000;
    constant N      :   integer := 26;
    signal nreset   :   std_logic;
    signal bin      :   std_logic_vector(3 downto 0);
    signal tick     :   std_logic;
    signal ff0_Q    :   std_logic;
    signal ff0_nQ   :   std_logic;
    signal ff1_Q    :   std_logic;
    signal ff1_nQ   :   std_logic;
    signal ff2_Q    :   std_logic;
    signal ff2_nQ   :   std_logic;    
    signal mux0_out :   std_logic;
    signal mux1_out :   std_logic;
    signal mux2_out :   std_logic;
    signal mux3_out :   std_logic;    
    signal mux4_out :   std_logic;
    signal mux5_out :   std_logic;         
    signal and0_out :   std_logic;

begin
    nreset <= not(reset);                   -- solo para Basys3, puladores logica positiva
    bin    <= '0' & ff2_Q & ff1_Q & ff0_Q;  -- auxiliar signal for bin2sseg  module
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
            clk => clk,
            tick => tick,
            pS => '1',
            pR => nreset,
            pJ => mux0_out,
            pK => mux1_out,
            pSalida  => ff0_Q,
            npSalida => ff0_nQ
        );
                
    ff1: entity work.jk_ff(arch)
        port map(
            clk => clk,
            tick => tick,
            pS => '1',
            pR => nreset,
            pJ => mux3_out,
            pK => mux2_out,
            pSalida  => ff1_Q,
            npSalida => ff1_nQ
        );

    ff2: entity work.jk_ff(arch)
        port map(
            clk => clk,
            tick => tick,            
            pS => '1',
            pR => nreset,
            pJ => mux5_out,
            pK => mux4_out,
            pSalida  => ff2_Q,
            npSalida => ff2_nQ
        );

--***************************************************
-- Mux instantiation
--***************************************************
    mux0: entity work.mux2(arch)
        port map(
            i0 => '1',
            i1 => ff0_Q,
            sel => odd_even,
            output => mux0_out            
        );
        
    mux1: entity work.mux2(arch)
        port map(
            i0 => ff0_nQ,
            i1 => '1',
            sel => odd_even,
            output => mux1_out            
        );             
        
    mux2: entity work.mux2(arch)
        port map(
            i0 => ff0_Q,
            i1 => '1',
            sel => odd_even,
            output => mux2_out            
        );
        
    mux3: entity work.mux2(arch)
        port map(
            i0 => ff0_Q,
            i1 => '1',
            sel => odd_even,
            output => mux3_out            
        );

    mux4: entity work.mux2(arch)
        port map(
            i0 => and0_out,
            i1 => ff1_Q,
            sel => odd_even,
            output => mux4_out            
        );
        
    mux5: entity work.mux2(arch)
        port map(
            i0 => and0_out,
            i1 => ff1_Q,
            sel => odd_even,
            output => mux5_out            
        );

--***************************************************
-- AND instantiation
--***************************************************        
    and_0: entity work.and2(arch)
        port map(
            i0 => ff1_Q,
            i1 => ff0_Q,
            output => and0_out
        );     

--***************************************************
-- sseg Display instantiation
--***************************************************            
    display: entity work.bin2sseg(arch)
        port map(
            on_off => on_off,
            bin => bin,
            an => an,
            sseg => sseg
        );
end arch;