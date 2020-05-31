library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pico_cntr is
    Port (
        clk, reset  :   in    std_logic;
        sw          :   in    std_logic_vector(15 downto 0);
        led         :   out   std_logic_vector(15 downto 0);
        sseg        :   out   std_logic_vector(7 downto 0);
        an          :   out   std_logic_vector(3 downto 0)
         );
end pico_cntr;

architecture arch of pico_cntr is
     signal	sseg3_next, sseg2_next     :   std_logic_vector(7 downto 0);
    signal	sseg1_next, sseg0_next     :   std_logic_vector(7 downto 0);    
    signal	sseg3_reg,  sseg2_reg      :   std_logic_vector(7 downto 0);
    signal	sseg1_reg,  sseg0_reg      :   std_logic_vector(7 downto 0);   
    -- Signals used to connect KCPSM6
    --
    signal              address : std_logic_vector(11 downto 0);
    signal          instruction : std_logic_vector(17 downto 0);
    signal          bram_enable : std_logic;
    signal              in_port : std_logic_vector(7 downto 0);
    signal             out_port : std_logic_vector(7 downto 0);
    signal              port_id : std_logic_vector(7 downto 0);
    signal         write_strobe : std_logic;
    signal       k_write_strobe : std_logic;
    signal          read_strobe : std_logic;
    signal            interrupt : std_logic;
    signal        interrupt_ack : std_logic;
    signal         kcpsm6_sleep : std_logic;
    signal         kcpsm6_reset : std_logic;
    signal                  rdl : std_logic;
    

begin

	mux_disp: entity work.disp_mux(arch)
   port map(
			clk  => clk,
			reset => '0',		
			sseg_3 => sseg3_reg,
			sseg_2 => sseg2_reg,
			sseg_1 => sseg1_reg,
			sseg_0 => sseg0_reg,
			an   => an,
			sseg => sseg
				);	

   -- =====================================================
   --  KCPSM and ROM instantiation
   -- =====================================================
    proc_unit: entity work.kcpsm6(low_level_definition)
    generic map (                 
                   hwbuild => X"00",
          interrupt_vector => X"3FF",   
   scratch_pad_memory_size => 256
                )
    port map(      
                   address => address,
               instruction => instruction,
               bram_enable => bram_enable,
                   port_id => port_id,
              write_strobe => write_strobe,
            k_write_strobe => k_write_strobe,
                  out_port => out_port,
               read_strobe => read_strobe,
                   in_port => in_port,
                 interrupt => interrupt,
             interrupt_ack => interrupt_ack,
                     sleep => kcpsm6_sleep,
                     reset => kcpsm6_reset,
                       clk => clk
   );
    
    rom_unit: entity work.cntr_rom(low_level_definition)
    generic map(   
                  C_FAMILY => "7S", 
         C_RAM_SIZE_KWORDS => 2,
      C_JTAG_LOADER_ENABLE => 0
      )
    port map(      
                   address => address,      
               instruction => instruction,
                    enable => bram_enable,
                       rdl => rdl,
                       clk => clk);
    
    -- Unused inputs on processor
    kcpsm6_reset <= '0';
    kcpsm6_sleep <= '0';
    interrupt    <= reset;
    
    reset_proc : process(clk)
    begin
        if (rising_edge(clk)) then
            sseg3_reg <= sseg3_next;
            sseg2_reg <= sseg2_next;
            sseg1_reg <= sseg1_next;
            sseg0_reg <= sseg0_next;
        end if;              
    end process reset_proc;
    
    input_ports :   process(clk)
    begin
        if (rising_edge(clk)) then
            case port_id(1 downto 0) is
                when "00" =>
                    in_port <= sw(7 downto 0);
                when "01"  =>
                    in_port <= "0" & sw(14 downto 8);
                when others =>
                    in_port <= "0000000" & sw(15);
            end case;
       end if;
    end process input_ports;
    
        
    -- decoding circuit for enable signals
    output_ports : process(port_id,write_strobe)
    begin
        if write_strobe='1' then
            case port_id(2 downto 0) is
                when "000" =>
                    led(7  downto 0) <= out_port;
                when "001" =>
                    led(15 downto 8) <= out_port;
                when "010" =>
                    sseg0_next <= out_port;        
                when "011" =>
                    sseg1_next <= out_port;
                when "100" =>
                    sseg2_next <= out_port;
                when others =>
                    sseg3_next <= out_port;           
            end case;                        
        end if;
    end process output_ports;        

end arch;
