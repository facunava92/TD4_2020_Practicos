library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity vga_test is
    Port (
        
        clk             :   in  std_logic;
        SW              :   in  std_logic_vector(2 downto 0);
        hsync, vsync    :   out std_logic;
        rgb             :   out std_logic_vector (2 downto 0)                
        );        
end vga_test;

architecture arch of vga_test is
    signal pixel_tick   :   std_logic;
    signal video_on     :   std_logic;
    
    -- Pipe the colorbar red, green and blue signals
    signal rgb_next     : std_logic_vector(2 downto 0) := (others => '0');

    -- VGA R, G and B signals coming from the main multiplexers
    signal rgb_reg   : std_logic_vector(2 downto 0);

    -- VGA R, G and B signals coming from the main multiplexers
    signal vga_rgb_cmb   : std_logic_vector(2 downto 0);
    
    -- VGA R, G and B signals coming from the main multiplexers
    signal rgb_s   : std_logic_vector(2 downto 0);
    
begin
    clok_108Mhz:entity work.clk_wiz_0(xilinx)
    port map(
        clk_in1 => clk,
        clk_out1  => pixel_tick
        );    

    vga_sync_unit: entity work.vga_sync(arch)
    port map(
            clk => pixel_tick,
            hsync => hsync,
            vsync => vsync,
            video_on => video_on,
            pixel_x => open,
            pixel_y => open
        );
        
    rgb_s    <= SW;
    ---------------------------------------------------------------------------------------------------
    -- Register Outputs coming from the displaying components and the horizontal and vertical counters
    -------------------------------------------------------------------------------------------------
    process (pixel_tick)
    begin
        if (rising_edge(pixel_tick)) then
            rgb_next      <= rgb_s;
        end if;
    end process;
    
    ------------------------------------------------------------
    -- Turn Off VGA RBG Signals if outside of the active screen
    -- Make a 4-bit AND logic with the R, G and B signals
    ------------------------------------------------------------
    vga_rgb_cmb     <=  (video_on & video_on & video_on) and rgb_next;

    
    process (pixel_tick)
    begin
        if (rising_edge(pixel_tick)) then  
        
            rgb_reg    <= vga_rgb_cmb;
                
        end if;
    end process;
    
    rgb     <= rgb_reg;      

end arch;
