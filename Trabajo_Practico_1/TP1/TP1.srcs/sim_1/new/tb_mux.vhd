library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_mux is
--  Port ( );
end tb_mux;

architecture tb_arch of tb_mux is
   --Inputs
   signal clk   : std_logic := '0';
   signal reset : std_logic := '0';
   signal bin3, bin2, bin1, bin0    :   std_logic_vector(3 downto 0);

 	--Outputs
	signal AN		:   std_logic_vector(3 downto 0);
    signal SSEG  	:   std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 762.9694 us;

begin
	uut: entity work.disp_mux(arch)
   port map(
			clk  => clk,
			reset => reset,		
			bin3 => bin3,
			bin2 => bin2,
			bin1 => bin1,
			bin0 => bin0,
			an   => an,
			sseg => sseg
		   );	  
		   
   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	reset <= '1', '0' after clk_period;	
	
	bin0 <= "0001";
	bin1 <= "0010";
	bin2 <= "0011";
	bin3 <= "0100";
	
end tb_arch;
