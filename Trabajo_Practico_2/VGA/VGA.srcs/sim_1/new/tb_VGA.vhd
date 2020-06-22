----------------------------------------------------------------------------------
-- UNIVERSIDAD TECNOLÓGICA NACIONAL - FACULTAD REGIONAL CORDOBA
-- Carrera: INGENIERIA ELECTRÓNICA.
-- Asignatura: TÉCNICAS DIGITALES IV (ELECTIVA).
-- Año: 2020.
-- Grupo: 5
-- Integrantes:
--      NAVARRO, Facundo		Leg. Nº:63809
-- Fecha de Entrega: 06/06/2020.
-- Hardware utilizado: Basys3
-- UCF utilizado: Basys3.xdc
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_VGA is
--  Port ( );
end tb_VGA;

architecture tb_arch of tb_VGA is
    --input
    signal clk       :   std_logic;        
    signal reset     :   std_logic;    
    signal hv        :   std_logic;
    signal gra_still :   std_logic;
        
    --output
    signal hsync   :   std_logic;
    signal vsync   :   std_logic;
    signal rgb     :   std_logic_vector(2 downto 0);

   -- Clock period definitions
    constant clk_period : time := 10 ns;
    constant T : time := 500 us;             

begin

	-- Instantiate the Unit Under Test (UUT)
    uut: entity work.VGA(arch)
    port map(
            clk => clk,
          reset => reset,
             hv => hv,
      gra_still => gra_still,
          hsync => hsync,
          vsync => vsync,
            rgb => rgb
    );

    clk_process :process
    begin
	   clk <= '0';
	   wait for clk_period/2;
	   clk <= '1';
	   wait for clk_period/2;
    end process;
   
    reset <= '1', '0' after clk_period*10;
    gra_still <= '0';
    hv <= '0';
    
end tb_arch;
