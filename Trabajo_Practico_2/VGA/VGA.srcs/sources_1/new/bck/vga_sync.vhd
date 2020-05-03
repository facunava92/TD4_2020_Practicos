library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity vga_sync is
    Port( 
            clk                 :   in std_logic;          
            hsync, vsync        :   out std_logic;
            video_on            :   out std_logic;            
            pixel_x, pixel_y    :   out std_logic_vector (10 downto 0)
        );
end vga_sync;

architecture arch of vga_sync is
       
    --***1280x1024@60Hz***--
    constant FRAME_WIDTH    : integer := 1280;
    constant FRAME_HEIGHT   : integer := 1024;
    
    constant H_FP   : integer := 48; --H front porch width (pixels)
    constant H_PW   : integer := 112; --H sync pulse width (pixels)
    constant H_MAX  : integer := 1688; --H total period (pixels)
    
    constant V_FP   : integer := 1; --V front porch width (lines)
    constant V_PW   : integer := 3; --V sync pulse width (lines)
    constant V_MAX  : integer := 1066; --V total period (lines)
    
    constant H_POL  : std_logic := '1';
    constant V_POL  : std_logic := '1';

    -------------------------------------------------------------------------
    -- VGA Controller specific signals: Counters, Sync, R, G, B
    -------------------------------------------------------------------------
    --  -- Pixel clock, in this case 108 MHz
    --  signal pxl_clk : std_logic;
    -- The active signal is used to signal the active region of the screen (when not blank)
    signal active  : std_logic;
    
    -- Horizontal and Vertical counters
    signal h_count_next : unsigned(10 downto 0) := (others =>'0');
    signal v_count_next : unsigned(10 downto 0) := (others =>'0');
    
    -- Pipe Horizontal and Vertical Counters
    signal h_count_reg   : unsigned(10 downto 0) := (others => '0');
    signal v_count_reg   : unsigned(10 downto 0) := (others => '0');
    
    -- Horizontal and Vertical Sync
    signal h_sync_next : std_logic := not(H_POL);
    signal v_sync_next : std_logic := not(V_POL);
    -- Pipe Horizontal and Vertical Sync
    signal h_sync_reg : std_logic := not(H_POL);
    signal v_sync_reg : std_logic :=  not(V_POL);

begin
    ---------------------------------------------------------------       
    -- Generate Horizontal, Vertical counters and the Sync signals
    ---------------------------------------------------------------
    -- Horizontal counter
    process (clk)
    begin
        if (rising_edge(clk)) then
            if (h_count_reg = (H_MAX - 1)) then
                h_count_next <= (others =>'0');
            else
                h_count_next <= h_count_next + 1;
            end if;
        end if;
    end process;
    
    -- Vertical counter
    process (clk)
    begin
        if (rising_edge(clk)) then
            if ((h_count_reg = (H_MAX - 1)) and (v_count_reg = (V_MAX - 1))) then
                v_count_next <= (others =>'0');
            elsif (h_count_reg = (H_MAX - 1)) then
                v_count_next <= v_count_next + 1;
            end if;
        end if;
    end process;
    
    -- Horizontal sync
    process (clk)
    begin
        if (rising_edge(clk)) then
            if (h_count_reg >= (H_FP + FRAME_WIDTH - 1)) and (h_count_reg < (H_FP + FRAME_WIDTH + H_PW - 1)) then
                h_sync_next <= H_POL;
            else
                h_sync_next <= not(H_POL);
            end if;
        end if;
    end process;
    
    -- Vertical sync
    process (clk)
    begin
        if (rising_edge(clk)) then
            if (v_count_reg >= (V_FP + FRAME_HEIGHT - 1)) and (v_count_reg < (V_FP + FRAME_HEIGHT + V_PW - 1)) then
                v_sync_next <= V_POL;
            else
                v_sync_next <= not(V_POL);
            end if;
        end if;
    end process;
    
    --------------------       
    -- Video On/Off 
    --------------------  
    -- active signal
    video_on <= '1' when    h_count_reg < FRAME_WIDTH   and  
                            v_count_reg < FRAME_HEIGHT  else 
                '0';
    
    -- Register Outputs
    process (clk)
    begin
        if (rising_edge(clk)) then 
            v_sync_reg <= v_sync_next;
            h_sync_reg <= h_sync_next;      
            h_count_reg <= h_count_next;
            v_count_reg <= v_count_next;        
        end if;
    end process;

    -- Assign outputs
    hsync       <= h_sync_reg;
    vsync       <= v_sync_reg;
    pixel_x     <= std_logic_vector(h_count_reg);
    pixel_y     <= std_logic_vector(v_count_reg);

end arch; 