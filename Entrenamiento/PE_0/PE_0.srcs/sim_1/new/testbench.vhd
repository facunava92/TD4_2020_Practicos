library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
end testbench;

architecture tb_arch of testbench is
    signal test_in0, test_in1   :   std_logic_vector(1 downto 0);
    signal test_out             :   std_logic;
begin
    uut : entity work.eq2(struc_arch)
        port map(
            a => test_in0,
            b => test_in1,
            aeqb => test_out
        );
    process
    begin        
        test_in0 <= "00";
        test_in1 <= "00";
        wait for 20 ns;
      
        test_in0 <= "01";
        test_in1 <= "00";
        wait for 20 ns;
        
        test_in0 <= "01";
        test_in1 <= "11";
        wait for 20 ns;
        
        test_in0 <= "10";
        test_in1 <= "11";
        wait for 20 ns;

        test_in0 <= "11";
        test_in1 <= "11";
        wait for 20 ns;
            
    end process;
    
end tb_arch;
