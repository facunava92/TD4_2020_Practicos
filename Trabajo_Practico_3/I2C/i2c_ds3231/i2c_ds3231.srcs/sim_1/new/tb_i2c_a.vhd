library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_i2c_a is
--  Port ( );
end tb_i2c_a;

architecture tb_arch of tb_i2c_a is
    constant T      :   time := 10ns;       
    -- inputs
    signal clk          :   std_logic;
    signal reset        :   std_logic;
    signal start_btn    :   std_logic;
    signal hh_mm        :   std_logic;

    -- outputs
    signal i2c_idle      :   std_logic;
    signal i2c_fail      :   std_logic;
    signal i2c_done_tick :   std_logic;
    signal an            :   std_logic_vector(3 downto 0);
    signal sseg          :   std_logic_vector(7 downto 0);


    -- input/output
    signal i2c_sclk     :   std_logic;
    signal i2c_sdat     :   std_logic;
    

begin
--****************************************
-- instantiation
--****************************************
    uut: entity work.i2c(arch)
    port map (
                     clk => clk, 
                   reset => reset,
               start_btn => start_btn,
                   hh_mm => hh_mm,
                i2c_sclk => i2c_sclk,
                i2c_sdat => i2c_sdat,
                i2c_idle => i2c_idle,
                i2c_fail => i2c_fail,
           i2c_done_tick => i2c_done_tick,
                      an => an,
                    sseg => sseg
        );
     


--****************************************
-- clock
--****************************************        
    process
    begin
        clk <= '0';
        wait for T/2;
        clk <= '1';
        wait for T/2;
    end process;     

    reset <= '1', '0' after T/2;
    
       stim_proc: process
    begin
        wait for 1us;
        start_btn <= '1';
        wait;   	
   end process;
end tb_arch;
