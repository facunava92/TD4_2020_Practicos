library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
--use IEEE.STD_LOGIC_ARITH.ALL;

entity graphic_unit is
    Port ( 
            clk, reset          :   in      std_logic;
            gra_still           :   in      std_logic;
            video_on            :   in      std_logic;
            pixel_x, pixel_y    :   in      std_logic_vector (10 downto 0);
            rgb                 :   out     std_logic_vector (2 downto 0)
        );
end graphic_unit;

architecture arch of graphic_unit is
      
    -- Pipe the colorbar red, green and blue signals
    signal rgb_next     : std_logic_vector(2 downto 0) := (others => '0');

    -- VGA R, G and B signals coming from the main multiplexers
    signal rgb_reg      : std_logic_vector(2 downto 0);

    -- VGA R, G and B signals coming from the main multiplexers
    signal vga_rgb_cmb  : std_logic_vector(2 downto 0);
    
    -- VGA R, G and B signals coming from the main multiplexers
    signal rgb_s        : std_logic_vector(2 downto 0);
    signal rgb_bg        : std_logic_vector(2 downto 0);
    signal rgb_ball     : std_logic_vector(2 downto 0);
    
        
    --=============================================================================
    -- Senal para el refresco de ball y paddle
    --=============================================================================
    signal refr_tick	:	std_logic;    
    
    --=============================================================================
    -- x,y COORDENADAS DE (0,0) A (1279,1023) (Display region)
    --=============================================================================
    signal pix_x, pix_y :	unsigned(10 downto 0);
    constant MAX_X      : integer := 1280;
    constant MAX_Y      : integer := 1024;

    -----------------------------------------------------------------------------
    -- round ball
    -----------------------------------------------------------------------------
    constant BALL_SIZE	: integer:=32; -- 16
    constant BALL_V_Pos	:	unsigned (10 downto 0) := to_unsigned(5,11);
    constant BALL_V_Neg	:	unsigned (10 downto 0) := unsigned(to_signed(-5,11));
    
    -- ball left, right boundary
    signal ball_x_l, ball_x_r: unsigned(10 downto 0);
    
    -- ball top, bottom boundary
    signal ball_y_t, ball_y_b: unsigned(10 downto 0);
    
    --Registros de posicion de ball , se descompone en x , y
    signal ball_x_reg, ball_x_next	:	unsigned(10 downto 0);
    signal ball_y_reg, ball_y_next	:	unsigned(10 downto 0);
    
    --Registros de velocidad de ball , se descompone en x , y
    signal delta_x_reg, delta_x_next	:	unsigned(10 downto 0) := "00000001111";
    signal delta_y_reg, delta_y_next	:	unsigned(10 downto 0) := "00000001111";
    
    
    ----------------------------------------------
    -- round ball image ROM
    ----------------------------------------------
    type rom_type is array (0 to 15) of std_logic_vector(0 to 15);
    -- ROM definition
    constant BALL_ROM: rom_type :=
    (
        "0000011111100000",
        "0001110101011000",
        "0010000010101100",
        "0110000000010110",
        "0100000001010110",
        "1000000000010011",
        "1000000000101111",
        "1000000000010101",
        "1000000001010011",
        "1010100001010111",
        "1010101010111011",
        "0101010101001010",
        "0111010111110110",
        "0011101101011100",
        "0001111011111000",
        "0000011111100000"
    );
    signal rom_addr, rom_col: 	unsigned(3 downto 0);	--16 elementos ; 2^4 = 16
    signal rom_data			: 	std_logic_vector(15 downto 0);
    signal rom_bit			: 	std_logic;    

    -----------------------------------------------------------------------------
    -- state signals of objects
    -----------------------------------------------------------------------------
    signal rd_ball_on, sq_ball_on   :   std_logic;

--=============================================================================
    ------------------------------------------------------------
    -- 	R		||		G		||		B		||		Color
    ------------------------------------------------------------
    -- 	0		||		0		||		0		||		Negro
    -- 	0		||		0		||		1		||		Azul
    -- 	0		||		1		||		0		||		Verde
    -- 	0		||		1		||		1		||		Cyan (Celeste)
    -- 	1		||		0		||		0		||		Rojo
    -- 	1		||		0		||		1		||		Magenta (Violeta)
    -- 	1		||		1		||		0		||		Amarillo
    -- 	1		||		1		||		1		||		Blanco (Gris)    
--=============================================================================
    
begin

    --=======================================================================================================
    -- Asignacion de Registros
    --=======================================================================================================
    process (clk, reset)
    begin
        if (reset='1') then
            ball_x_reg     <= (others=>'0');
            ball_y_reg     <= (others=>'0');
            delta_x_reg 	<= ("00000001111");
            delta_y_reg 	<= ("00000001111");
            elsif (rising_edge(clk)) then
                if (gra_still = '0') then
                    ball_x_reg 	<= ball_x_next;
                    ball_y_reg  <= ball_y_next;
                    delta_x_reg <= delta_x_next;
                    delta_y_reg <= delta_y_next;
                end if;
        end if;
    end process;

    pix_x <= unsigned(pixel_x);            
    pix_y <= unsigned(pixel_y);

    --=============================================================================
    -- SIGNAL DE REFRESCO (1 vez cada inicio de Pantalla /72Hz/)
    --=============================================================================
    refr_tick <= '1' when (pix_y = MAX_y + 1) and (pix_x = 0) else
                 '0';
				 
    ----------------------------------------------------------------------------------------------------------
    -- ROUND BALL Circuit Generation (signals and rgb output) 
    ----------------------------------------------------------------------------------------------------------
    
    -- Ball Color
    ----------------------------------------------------------------------------------------------------------
    rgb_ball <= not(rgb_bg);
    
    --boundaries (fronteras)
    ball_x_l <= ball_x_reg;
    ball_y_t <= ball_y_reg;
    ball_x_r <= ball_x_l + BALL_SIZE - 1;
    ball_y_b <= ball_y_t + BALL_SIZE - 1;
    
    --Pixel dentro del rango de BALL_SIZE
    -------------------------------------------------------------------------------------------------------
    sq_ball_on <=   '1' when (ball_x_l<=pix_x) and (pix_x<=ball_x_r) and	
                             (ball_y_t<=pix_y) and (pix_y<=ball_y_b) else
                    '0';
                    
    --Mapea el correspondiente pixel con la posicion de fila(address) y columna(col) dentro de la ROM
    -------------------------------------------------------------------------------------------------------
    rom_addr    <= pix_y(4 downto 1) - ball_y_t(4 downto 1);
    rom_col     <= pix_x(4 downto 1) - ball_x_l(4 downto 1);
    
    rom_data    <= BALL_ROM(to_integer(rom_addr));
    rom_bit     <= rom_data(to_integer(rom_col));
    
    rd_ball_on <=   '1' when (sq_ball_on = '1') and (rom_bit = '1') else
                    '0';
                        
    
    -- Nueva Posicion
    --------------------------------------------------------------------------------------------------------
    ball_x_next <=  ball_x_reg + delta_x_reg when refr_tick='1' 	else
                    ball_x_reg ;
                    
    ball_y_next <=  ball_y_reg + delta_y_reg when refr_tick='1' 	else
                    ball_y_reg ;				 
                    
-- Nueva Velocidad (Direccion)
--------------------------------------------------------------------------------------------------------
    process(delta_x_reg, delta_y_reg, ball_y_t, ball_y_b, ball_x_l, ball_x_r)
    begin
    
        delta_x_next <= delta_x_reg;		--buffers
        delta_y_next <= delta_y_reg;
        
        if (ball_y_t <= 0) then 			--reach upper wall
            delta_y_next <= BALL_V_Pos;
            
        elsif (ball_x_r >= MAX_X) 	then	--reach right wall
            delta_x_next <= BALL_V_Neg;
            
        elsif (ball_x_l <= 0 )	then	    --reach left wall
           delta_x_next <= BALL_V_Pos;
           
        elsif (ball_y_b >= MAX_Y) then	    --reach bottom limit
           delta_y_next <= BALL_V_Neg;
        end if;
    end process;                    

process(clk)
	begin
		if rising_edge(clk) then
            if (pix_x >= 0) and (pix_x < 160) then
                rgb_bg <= "111";
            elsif (pix_x >= 160) and (pix_x < 320)  then
                rgb_bg <= "110";
            elsif (pix_x >= 320) and (pix_x < 480)  then
                rgb_bg <= "101";
            elsif (pix_x >= 480) and (pix_x < 640)  then
                rgb_bg <= "100"; 
            elsif (pix_x >= 640) and (pix_x < 800)  then
                rgb_bg <= "011"; 
            elsif (pix_x >= 800) and (pix_x < 960)  then
                rgb_bg <= "010";                                                              
            elsif (pix_x >= 960) and (pix_x < 1120)  then
                rgb_bg <= "001";
            else
                rgb_bg <= "000";                
            end if;
        end if;	
	end process;

    -------------------------------------------------------------------------------------------------
    -- RGB Output multiplexer
    -------------------------------------------------------------------------------------------------	
    
    process(video_on, rd_ball_on, rgb_ball, rgb_bg)
    begin
        if (video_on = '1') then
            if (rd_ball_on = '1') then
                rgb_s <= rgb_ball;
            else
                rgb_s <= rgb_bg;
            end if;
        end if;     
    
    end process;    
    
    ---------------------------------------------------------------------------------------------------
    -- Register Outputs coming from the displaying components and the horizontal and vertical counters
    -------------------------------------------------------------------------------------------------
    process (clk)
    begin
        if (rising_edge(clk)) then
            rgb_next      <= rgb_s;
        end if;
    end process;
    
    ------------------------------------------------------------
    -- Turn Off VGA RBG Signals if outside of the active screen
    -- Make a 4-bit AND logic with the R, G and B signals
    ------------------------------------------------------------
    vga_rgb_cmb     <=  (video_on & video_on & video_on) and rgb_next;
   
    process (clk)
    begin
        if (rising_edge(clk)) then          
            rgb_reg    <= vga_rgb_cmb;
        end if;
    end process;
    
    rgb     <= rgb_reg;     

end arch;
