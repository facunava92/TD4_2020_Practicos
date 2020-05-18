library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_1a is
--  Port ( );
end tb_1a;

architecture tb_arch of tb_1a is
 
   --Inputs
   signal clk       : std_logic := '0';
   signal reset     : std_logic := '0';
   signal a         : std_logic := '0';
   signal b         : std_logic := '0';
   signal sw        : std_logic_vector(13 downto 0);


 	--Outputs
   signal led       : std_logic_vector(13 downto 0);     	
   signal an		: std_logic_vector(3 downto 0);
   signal sseg  	: std_logic_vector(6 downto 0);
   signal pwm       : std_logic;
   signal pwm_n     : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
   constant T : time := 500 us;
 
begin
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.motorcc_cl(arch)
    port map (
          clk => clk,
          reset => reset,
          a => a,
          b => b,
          sw => sw,
          pwm => pwm,
          pwm_n => pwm_n,
          led => led,
          an => an,
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
 
	reset <= '1', '0' after clk_period*10;
	sw <= b"000000_0111_1000";
	stim_proc: process
	begin		
	 --hold reset state for 100 ns.
		anti_horario : for i in 0 to 1450 loop
			A<='0';		
			B<='0';	
			wait for T;
			B<='1';		
			A<='0';
			wait for T;
			A<='1';		
			B<='1';
			wait for T;
			B<='0';		
			A<='1';		
			wait for T;
		end loop anti_horario;		

       
		horario : for i in 0 to 1445 loop
			A<='0';		
			B<='0';	
			wait for T;
			A<='1';		
			B<='0';
			wait for T;
			A<='1';		
			B<='1';
			wait for T;
			A<='0';		
			B<='1';		
			wait for T;
		end loop horario;
		

		
			horario2 : for i in 0 to 10 loop
			A<='0';		
			B<='0';	
			wait for T;
			A<='1';		
			B<='0';
			wait for T;
			A<='1';		
			B<='1';
			wait for T;
			A<='0';		
			B<='1';		
			wait for T;
		end loop horario2;		
		
			anti_horario2: for i in 0 to 20 loop
			A<='0';		
			B<='0';	
			wait for T;
			B<='1';		
			A<='0';
			wait for T;
			A<='1';		
			B<='1';
			wait for T;
			B<='0';		
			A<='1';		
			wait for T;
		end loop anti_horario2;
		
		

		

		wait;
		
	end process;

END;