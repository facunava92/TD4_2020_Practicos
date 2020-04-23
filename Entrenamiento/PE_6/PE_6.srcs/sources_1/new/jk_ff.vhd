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
-- Fecha de Entrega: 15/04/2020.
-- Hardware utilizado: Basys3
-- UCF utilizado: basys3.xdc
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity jk_ff is
    Port (
        clk             :   in  std_logic;
        pR, pS, pJ, pK  :   in  std_logic;
        pEntrada        :   in  std_logic;
        pSalida         :   out std_logic;
        npSalida        :   out std_logic
        );
end jk_ff;

architecture arch of jk_ff is
signal Q        :   std_logic;    
signal RS       :   std_logic_vector(1 downto 0);
signal JK       :   std_logic_vector(1 downto 0);

begin
    RS <= pR & pS;                  -- agrego esto por que no podia imple
    JK <= pJ & pK;                  -- agrego esto por que no podia imple

    process(clk, RS, JK)
    begin
        if (RS = "01") then                     -- reset asincrono (negado)
            Q <= '0';
        elsif (RS = "10" or RS = "00") then     -- set asincrono (negado), condicion 00 sacada del Datasheet
            Q <= '1';
        elsif (RS = "11") then
            if (rising_edge(clk)) then
                case JK is
                    when "00" =>
                        Q <= pEntrada;
                    when "01" =>
                        Q <= '0';
                    when "10" =>
                        Q <= '1';
                    when others => 
                        Q <= not(pEntrada);                                                            
                end case;
            end if;    
        end if;    
    end process;
    
    pSalida <= Q;
    npSalida <= not(Q);

end arch;

