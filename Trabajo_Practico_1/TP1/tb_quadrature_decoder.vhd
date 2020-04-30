----------------------------------------------------------------------------------
-- UNIVERSIDAD TECNOLÓGICA NACIONAL - FACULTAD REGIONAL CORDOBA
-- Carrera: INGENIERIA ELECTRÓNICA.
-- Asignatura: TÉCNICAS DIGITALES IV (ELECTIVA).
-- Año: 2020.
-- Grupo: 5
-- Integrantes:
--      NAVARRO, Facundo		Leg. Nº:63809
--      Della Santina, Lucas	Leg. Nº:66876
--
-- Fecha de Entrega: 28/04/2020.
-- Hardware utilizado: Kit-CPLD
-- UCF utilizado: cpld.xdc
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_quadrature_decoder IS
END tb_quadrature_decoder;
 
ARCHITECTURE behavior OF tb_quadrature_decoder IS 
 
   --Inputs
	signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal up_comb : std_logic;
   signal down_comb : std_logic;
   signal up_mealy : std_logic;
   signal down_mealy : std_logic;
	signal up_mealy_v2 : std_logic;
   signal down_mealy_v2 : std_logic;

   -- Clock period definitions
   constant T : time := 64 us;
 
BEGIN

        
 
	--****************************************
	-- instantiation
	--****************************************
	 uut: entity work.quad_decoder(arch_combinational)
	PORT MAP (
	       reset => reset,
          clk => clk,
          A => A,
          B => B,
          up => up_comb,
          down => down_comb
        );
	
   uut2: entity work.quad_decoder(arch_mealy_stm)
	PORT MAP (
	       reset => reset,
          clk => clk,
          A => A,
          B => B,
          up => up_mealy,
          down => down_mealy
        );
   uut3: entity work.quad_decoder(arch_mealy_stm_v2)
	PORT MAP (
	       reset => reset,
          clk => clk,
          A => A,
          B => B,
          up => up_mealy_v2,
          down =>down_mealy_v2
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for T/2;
		clk <= '1';
		wait for T/2;
   end process;
 
	reset <= '1', '0' after T/2;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		wait for 100 ns;
		wait for T /2;
		A<='0';
		B<='0';
		wait for T*10;
		
		A<='1';
		wait for T*20;
		B<='1';
		wait for T*20;
		
		A<='0';
		wait for T*20;
		B<='0';
		wait for T*20;
		
		B<='1';
		wait for T*20;
		A<='1';
		wait for T*20;
		
		B<='0';
		wait for T*20;
		A<='0';
		wait for T*20;
		
   end process;


END;
