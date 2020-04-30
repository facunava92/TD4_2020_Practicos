----------------------------------------------------------------------------------
-- UNIVERSIDAD TECNOLÓGICA NACIONAL - FACULTAD REGIONAL CORDOBA
-- Carrera: INGENIERIA ELECTRÓNICA.
-- Asignatura: TÉCNICAS DIGITALES IV (ELECTIVA).
-- Año: 2020.
-- Grupo: 5
-- Integrantes:
--      NAVARRO, Facundo		Leg. Nº:63809
-- Fecha de Entrega: 28/04/2020.
-- Hardware utilizado: Kit-CPLD
-- UCF utilizado: cpld.xdc
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity quad_decoder is
	port (
				clk, reset	:	in	std_logic;
				A, B			:	in std_logic;
				up, down		:	out std_logic
		);
end quad_decoder;

architecture arch_combinational of quad_decoder is
	signal q0, q1	:	std_logic;

begin

	process(clk)
	begin
		if(rising_edge(clk)) then
			q0 <= A xor B;
			q1 <= B;
		end if;
	end process;

up <= (not A and not B and q1) or (not A and q1 and not q0) or (A and not q1 and not q0) or (A and B and not q1);
down <= (not A and B and not q1) or (not A and not q1 and q0) or (A and q1 and q0) or (A and not B and q1);
				
end arch_combinational;

architecture arch_mealy_stm of quad_decoder is
	type state_type is (s0, s1, s2, s3);
	signal state_reg, state_next	:	state_type;
	signal AB	:	std_logic_vector(1 downto 0);
	
begin
	AB <= A & B;
	process(clk, reset)
	begin
		if (reset = '1') then
			state_reg <= s0;
		elsif(rising_edge(clk)) then
			state_reg <= state_next;
		end if;
	end process;

	--evolucion de la maquina de estados
	process(state_reg, AB)
	begin
		case state_reg is
			when s0 =>
				if (AB = "00") then
					state_next <= s0;
				elsif (AB = "10") then
					state_next <= s1;
				elsif (AB = "01") then
					state_next <= s3;
				else
					state_next <= s0;
				end if;
				
			when s1 =>
				if (AB = "10") then
					state_next <= s1;
				elsif (AB = "11") then
					state_next <= s2;
				elsif (AB = "00") then
					state_next <= s0;
				else
					state_next <= s0;					
				end if;	

			when s2 =>
				if (AB = "11") then
					state_next <= s2;
				elsif (AB = "01") then
					state_next <= s3;
				elsif (AB = "10") then
					state_next <= s1;
				else
					state_next <= s0;					
				end if;										
					
			when s3 =>
				if (AB = "01") then
					state_next <= s3;
				elsif (AB = "00") then
					state_next <= s0;
				elsif (AB = "11") then
					state_next <= s2;
				else
					state_next <= s0;					
				end if;					
		end case;
	end process;
	
	--salida mealy
	process(clk, state_reg, AB)
	begin
		if (rising_edge(clk)) then
		case state_reg is
			when s0 =>
				if (AB = "00") then
					up <= '0';
					down <= '0';
				elsif (AB = "10") then
					up <= '1';
					down <= '0';			
				elsif (AB = "01") then
					up <= '0';
					down <= '1';					
				end if;
				
			when s1 =>
				if (AB = "10") then
					up <= '0';
					down <= '0';
				elsif (AB = "11") then
					up <= '1';
					down <= '0';			
				elsif (AB = "11") then
					up <= '0';
					down <= '1';					
				end if;
				
			when s2 =>
				if (AB = "11") then
					up <= '0';
					down <= '0';
				elsif (AB = "01") then
					up <= '1';
					down <= '0';			
				elsif (AB = "10") then
					up <= '0';
					down <= '1';					
				end if;
				
			when s3 =>
				if (AB = "01") then
					up <= '0';
					down <= '0';
				elsif (AB = "00") then
					up <= '1';
					down <= '0';			
				elsif (AB = "00") then
					up <= '0';
					down <= '1';					
				end if;	
		end case;
		end if;
	end process;
	
end arch_mealy_stm;

architecture arch_mealy_stm_v2 of quad_decoder is
	type state_type is (s0, s1, s2, s3);
	signal state_reg, state_next	:	state_type;
	signal AB	:	std_logic_vector(1 downto 0);
	
begin
	AB <= A & B;
	process(clk, reset)
	begin
		if (reset = '1') then
			state_reg <= s0;
		elsif(rising_edge(clk)) then
			state_reg <= state_next;
		end if;
	end process;

	--evolucion de la maquina de estados
	process(state_reg, AB)
	begin
		case state_reg is
			when s0 =>
				if (AB = "00") then
					state_next <= s0;
					up <= '0';
					down <= '0';
				elsif (AB = "10") then
					state_next <= s1;
					up <= '1';
					down <= '0';						
				elsif (AB = "01") then
					state_next <= s3;
					up <= '0';
					down <= '1';					
				else
					state_next <= s0;
				end if;
				
			when s1 =>
				if (AB = "10") then
					state_next <= s1;
					up <= '0';
					down <= '0';					
				elsif (AB = "11") then
					state_next <= s2;
					up <= '1';
					down <= '0';						
				elsif (AB = "00") then
					state_next <= s0;
					up <= '0';
					down <= '1';					
				else
					state_next <= s0;					
				end if;	

			when s2 =>
				if (AB = "11") then
					state_next <= s2;
					up <= '0';
					down <= '0';						
				elsif (AB = "01") then
					state_next <= s3;
					up <= '1';
					down <= '0';						
				elsif (AB = "10") then
					state_next <= s1;
					up <= '0';
					down <= '1';					
				else
					state_next <= s0;					
				end if;										
					
			when s3 =>
				if (AB = "01") then
					state_next <= s3;
					up <= '0';
					down <= '0';						
				elsif (AB = "00") then
					state_next <= s0;
					up <= '1';
					down <= '0';						
				elsif (AB = "11") then
					state_next <= s2;
					up <= '0';
					down <= '1';					
				else
					state_next <= s0;					
				end if;					
		end case;
	end process;
	
end arch_mealy_stm_v2;
