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
-- Fecha de Entrega: 20/04/2020.
-- Hardware utilizado: Basys3
-- UCF utilizado: basys3.xdc
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity stopwatch is
    Port (
            clk         :   in  std_logic;
            go, clr     :   in  std_logic;
            an          :   out std_logic_vector(3 downto 0);
            sseg        :   out std_logic_vector(6 downto 0)            

        );
end stopwatch;

architecture arch of stopwatch is
   constant DVSR: integer:=10000000;
   constant N   : integer:= 26;  -- Log2(DVSR)
   signal   ms_reg, ms_next :   unsigned(N-1 downto 0);
   signal   d1_reg, d0_reg  :   unsigned(3 downto 0);
   signal   d1_next, d0_next:   unsigned(3 downto 0);
   signal   ms_tick         :   std_logic;   
   signal   d1, d0          :   std_logic_vector(3 downto 0);
   signal   sseg_reg        :   std_logic_vector(6 downto 0);
begin
       
   -- register
    process(clk)
    begin
        if (rising_edge(clk)) then
            ms_reg <= ms_next;
            d1_reg <= d1_next;
            d0_reg <= d0_next;
        end if;
   end process; 
   -- next-state logic
   -- 0.1 sec tick generator: mod-10000000
    ms_next <=
        (others=>'0') when (clr='1' or (ms_reg=DVSR and go='1')) else
        ms_reg + 1    when go='1'                                else
        ms_reg;
    
    -- 0.1 sec counter
    ms_tick <= '1' when ms_reg=DVSR else '0';
  
    process(d0_reg,d1_reg,ms_tick,clr)
    begin
      -- defult
        d0_next <= d0_reg;
        d1_next <= d1_reg;
        if clr='1' then
            d0_next <= "0000";
            d1_next <= "0000";
        elsif ms_tick='1' then
            if (d0_reg/=9) then
                d0_next <= d0_reg + 1;
            else       -- reach XX9
                d0_next <= "0000";
                if (d1_reg/=5) then
                    d1_next <= d1_reg + 1;
                else    -- reach X99
                    d1_next <= "0000";
                end if;
            end if;
        end if;
   end process;

   
   -- output logic
   d0 <= std_logic_vector(d0_reg);
   d1 <= std_logic_vector(d1_reg);
   
--***************************************************
-- Mux instantiation
--***************************************************
    disp_driver: entity work.disp_mux(arch)
        port map(
            clk => clk,
            reset => clr,
            bin3 => "1111",
            bin2 => "1111",
            bin1 => d1,
            bin0 => d0,
            an => an,
            sseg => sseg                        
        );    
         
end arch;

