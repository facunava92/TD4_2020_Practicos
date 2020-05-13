
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_top IS
END tb_top;
 
ARCHITECTURE behavior OF tb_top IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_counter
    PORT(
         CLK 		: IN  std_logic;
         RESET 	: IN  std_logic;
         A 			: IN  std_logic;
         B 			: IN  std_logic;
			DIR		: OUT	std_logic;
         AN       : OUT 	std_logic_vector(3 downto 0);
         SSEG     : OUT 	std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    


   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
	signal DIR		: 	std_logic;	
	signal AN		: 	std_logic_vector(3 downto 0);
   signal SSEG  	:  std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant T : time := 64 us;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_counter PORT MAP (
          clk => clk,
          reset => reset,
          A => A,
          B => B,
			DIR => DIR,
			AN => AN,
			SSEG => SSEG
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
	
		

	stim_proc: process
	begin		
	 --hold reset state for 100 ns.

		horario : for i in 0 to 500 loop
			A<='0';		
			B<='0';	
			wait for T*10;
			A<='1';		
			B<='0';
			wait for T*10;
			A<='1';		
			B<='1';
			wait for T*10;
			A<='0';		
			B<='1';		
			wait for T*10;
		end loop horario;
		
		anti_horario : for i in 0 to 501 loop
			A<='0';		
			B<='0';	
			wait for T*10;
			B<='1';		
			A<='0';
			wait for T*10;
			A<='1';		
			B<='1';
			wait for T*10;
			B<='0';		
			A<='1';		
			wait for T*10;
		end loop anti_horario;
		
			horario2 : for i in 0 to 10 loop
			A<='0';		
			B<='0';	
			wait for T*10;
			A<='1';		
			B<='0';
			wait for T*10;
			A<='1';		
			B<='1';
			wait for T*10;
			A<='0';		
			B<='1';		
			wait for T*10;
		end loop horario2;
		
			anti_horario2: for i in 0 to 20 loop
			A<='0';		
			B<='0';	
			wait for T*10;
			B<='1';		
			A<='0';
			wait for T*10;
			A<='1';		
			B<='1';
			wait for T*10;
			B<='0';		
			A<='1';		
			wait for T*10;
		end loop anti_horario2;
		
		wait;
		
	end process;

END;
