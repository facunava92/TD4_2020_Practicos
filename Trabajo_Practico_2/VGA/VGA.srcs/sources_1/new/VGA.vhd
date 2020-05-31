library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VGA is
    Port (           
        clk,reset       :   in  std_logic;
        hv              :   in  std_logic;
        gra_still       :   in  std_logic;
        hsync, vsync    :   out std_logic;
        rgb             :   out std_logic_vector (2 downto 0)                
     );
end VGA;

architecture arch of VGA is
    signal pixel_tick       :   std_logic;
    signal video_on         :   std_logic;
    signal pixel_x, pixel_y :   std_logic_vector (10 downto 0);
    
begin

    clok_108Mhz:entity work.clk_wiz_0(xilinx)
    port map(
        clk_in1 => clk,
        clk_out1  => pixel_tick
        );    

    vga_sync_unit: entity work.vga_sync(arch)
    port map(
            clk => pixel_tick,
            reset => reset,
            hsync => hsync,
            vsync => vsync,
            video_on => video_on,
            pixel_x => pixel_x,
            pixel_y => pixel_y
        );
        
    graphic_circuit: entity work.graphic_unit(arch)
    port map(
            clk => pixel_tick,
            reset => reset,
            hv => hv,  
            gra_still => gra_still,
            video_on => video_on,
            pixel_x => pixel_x,
            pixel_y => pixel_y,
            rgb => rgb
            );
 
end arch;

