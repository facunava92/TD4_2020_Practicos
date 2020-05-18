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
use IEEE.numeric_std.all;

entity up_down_counter is
	generic (
			N      :  integer := 11;		-- numero de bits log2(5760)
	        M      :  integer := 2000;		--	maximo horaria
	        M_n    :  integer := -2000		--	maximo antihoraria			
		);
		
	port(
			clk, reset      :   in    std_logic;		
			up, down		:	in 	  std_logic;
			an   			: 	out   std_logic_vector(3 downto 0);
			sseg 			: 	out	  std_logic_vector(6 downto 0);
			count_out       :   out   std_logic_vector(N downto 0)
		);
end up_down_counter;

architecture arch of up_down_counter is
    signal 	r_reg    	:  signed(N downto 0);
    signal 	r_next		:  signed(N downto 0);
    signal 	output_reg	:  signed(N downto 0);
    signal  d3_next, d2_next, d1_next, d0_next	:   unsigned(3 downto 0);	
    signal  d3_reg, d2_reg, d1_reg, d0_reg		:   unsigned(3 downto 0);
    signal	d3, d2, d1, d0          			:   std_logic_vector(3 downto 0);

begin
	
    process(clk, reset)
    begin
        if(reset='1') then             
            r_reg <=  (others => '0');
			d3_reg <= (others => '0');
			d2_reg <= (others => '0');
			d1_reg <= (others => '0');
            d0_reg <= (others => '0');				
        elsif(rising_edge(clk)) then
            r_reg <= r_next;
			d3_reg <= d3_next;
            d2_reg <= d2_next;
			d1_reg <= d1_next;
            d0_reg <= d0_next;				
        end if;
    end process;
	 
    r_next <= (others => '0') when (up='1' and r_reg = (M-1)) or (down='1' and r_reg = M_n+1) else
              r_reg + 1			when up='1'			 else
		      r_reg - 1			when down='1'		 else
		      r_reg;
		      
    count_out <= std_logic_vector(r_reg);		      
				  
--	process(r_reg, output_reg)
--	begin
--		if(r_reg(N) = '1') then
--			output_reg <= not(r_reg) +1 ;
--		else 
--			output_reg <= r_reg;
--		end if;
--	end process;
	
    
	process(up, down, d0_reg, d1_reg, d2_reg, d3_reg)
	begin
		-- defult
		d3_next <= d3_reg;
		d2_next <= d2_reg;		
		d1_next <= d1_reg;
		d0_next <= d0_reg;
		if (up='1') then
		  if (d3_reg=5) and (d2_reg=7) and (d1_reg = 5) and (d0_reg = 9) then
		      d3_next <= "0000";
		      d2_next <= "0000";		
		      d1_next <= "0000";
		      d0_next <= "0000";
		  else
				if (d0_reg/=9) then
					d0_next <= d0_reg + 1;
				else
					d0_next <= "0000";
					if (d1_reg/=9) then
						d1_next <= d1_reg + 1;
					else
						d1_next <= "0000";
						if (d2_reg/=9) then
							d2_next <= d2_reg + 1;
						else
							d2_next <= "0000";
							if (d3_reg/=9) then
								d3_next <= d3_reg + 1;
							else
								d3_next <= "0000";
							end if;
						end if;
					end if;
				end if;
		  end if;
		elsif (down='1') then
		  if (d3_reg=0) and (d2_reg=0) and (d1_reg = 0) and (d0_reg = 0) then
		      d3_next <= "0101";
		      d2_next <= "0111";		
		      d1_next <= "0101";
		      d0_next <= "1001";
		  else
				if (d0_reg/=0) then
					d0_next <= d0_reg - 1;
				else
					d0_next <= "1001";
					if (d1_reg/=0) then
						d1_next <= d1_reg - 1;
					else
						d1_next <= "1001";
						if (d2_reg/=0) then
							d2_next <= d2_reg - 1;
						else
							d2_next <= "1001";
							if (d3_reg/=0) then
								d3_next <= d3_reg - 1;
							else
								d3_next <= "1001";
							end if;
						end if;
					end if;
				end if;					
		  end if;
		end if;
	end process;

   
   -- output logic
   d0 <= std_logic_vector(d0_reg);
   d1 <= std_logic_vector(d1_reg);
   d2 <= std_logic_vector(d2_reg);
   d3 <= std_logic_vector(d3_reg);	

	mux_disp: entity work.disp_mux(arch)
   port map(
			clk  => clk,
			reset => reset,		
			bin3 => d3,
			bin2 => d2,
			bin1 => d1,
			bin0 => d0,
			an   => an,
			sseg => sseg
				);	

end arch;