library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity i2c is
    port (
        clk, reset      :   in    std_logic;
        start_btn       :   in    std_logic;
        hh_mm           :   in    std_logic;
        i2c_sclk        :   out   std_logic;
        i2c_sdat        :   inout std_logic;
        i2c_idle        :   out   std_logic;
        i2c_fail        :   out   std_logic;
        i2c_done_tick   :   out   std_logic;
        an              :   out std_logic_vector(3 downto 0);
        sseg            :   out std_logic_vector(7 downto 0)
        );
end i2c;
architecture arch of i2c is
    -- Constants
    constant HALF           : integer := 500;  -- 10us/10ns/2 = 500
    constant QUTR           : integer := 250;  -- 10us/10ns/4 = 250
    constant C_WIDTH        : integer := 9;
    constant BYTES_2_WRITE  : integer := 2;
    constant BYTES_2_READ   : integer := 3;
    
    
    signal DEV_ADDR_WRITE   : std_logic_vector(7 downto 0) := x"D0"; -- 110_1000_0 (address + direction)   
    signal DEV_ADDR_READ    : std_logic_vector(7 downto 0) := x"D1"; -- 110_1000_1 (address + direction)
    signal REG_2_READ       : std_logic_vector(7 downto 0) := x"00";

    type statetype is(
        idle, 
        start_wr, scl_begin_wr, data1_wr, data2_wr, data3_wr, data4_wr, ack1_wr, ack2_wr, ack3_wr, ack4_wr, sby,
        start_rd, scl_begin_rd, addr1_rd, addr2_rd, addr3_rd, addr4_rd, ack1_ad, ack2_ad, ack3_ad, ack4_ad, 
                                data1_rd, data2_rd, data3_rd, data4_rd, ack1_rd, ack2_rd, ack3_rd, ack4_rd,
                                nack1, nack2, nack3, nack4,
        scl_end, stop, turn);
        
    signal state_reg, state_next : statetype;
    signal c_reg, c_next         : unsigned(C_WIDTH-1 downto 0);
    signal bit_reg, bit_next     : unsigned(2 downto 0);
    signal byte_reg, byte_next   : unsigned(1 downto 0);
    signal sdat_out, sclk_out    : std_logic;
    signal sdat_reg, sclk_reg    : std_logic;
    signal ack_reg, ack_next     : std_logic;

    signal start_wr_tick         : std_logic;
    signal data_reg, data_next   : std_logic_vector(15 downto 0);
    
    signal rx_next, rx_reg       : std_logic_vector(23 downto 0);
      
    signal dp_reg, dp_next    : std_logic;
    signal an_reg             : std_logic_vector(3 downto 0);
    signal d3_reg,  d2_reg    : std_logic_vector(3 downto 0);
    signal d1_reg,  d0_reg    : std_logic_vector(3 downto 0);
    signal d3_next, d2_next   : std_logic_vector(3 downto 0);
    signal d1_next, d0_next   : std_logic_vector(3 downto 0);
    signal d3, d2, d1, d0, dp : std_logic_vector(3 downto 0);
     

     
begin


        
     -- instantiate debounce circuit
    btn_db_unit: entity work.debounce(fsmd_arch)
    port map(
              clk => clk,
            reset => '0', 
               sw => start_btn,
         db_level => start_wr_tick,
          db_tick => open
      );
    
    -- ========================================================================
    -- output
    -- ========================================================================
    -- buffer for sda and scl lines
    
    process(clk, reset)
    begin
        if (reset = '1') then
            sdat_reg <= '1';
            sclk_reg <= '1';
        elsif(rising_edge(clk)) then
            sdat_reg <= sdat_out;
            sclk_reg <= sclk_out;
        end if;
    end process;
    ---- only master drives scl line (Pong Original)
    --i2c_sclk <= sclk_reg;
    -- i2c_sdat, i2c_sclk are with pull-up resistors
    -- and become high when not driven
    i2c_sclk <= 'Z' when sclk_reg = '1' else '0';
    i2c_sdat <= 'Z' when sdat_reg = '1' else '0';
    -- codec fails to acknowkedge properly
    i2c_fail <= '1' when ack_reg = '1' else '0';
    
    -- ========================================================================
    -- fsmd for transmitting three bytes
    -- ========================================================================
    -- registers
    process(clk, reset)
    begin
        if (reset = '1') then
            state_reg <= idle;
            c_reg     <= (others => '0');
            bit_reg   <= (others => '0');
            byte_reg  <= (others => '0');
            data_reg  <= (others => '0');
            rx_reg    <= (others => '0');
            ack_reg   <=  '1';
        
            d3_reg <= (others => '0');            
            d2_reg <= (others => '0');        
            d1_reg <= (others => '0');            
            d0_reg <= (others => '0');
            dp_reg <= '0';
            
        elsif(rising_edge(clk)) then
            state_reg <= state_next;
            c_reg     <= c_next;
            bit_reg   <= bit_next;
            byte_reg  <= byte_next;
            data_reg  <= data_next;
            rx_reg    <= rx_next;            
            ack_reg   <= ack_next;
            
            d3_reg <= d3_next;
            d2_reg <= d2_next;
            d1_reg <= d1_next;
            d0_reg <= d0_next;
            dp_reg <= dp_next;            
        end if;
    end process;
    
    -- next-state logic
    process(state_reg, bit_reg, byte_reg, c_reg, start_wr_tick, i2c_sdat, ack_reg, data_reg, rx_reg,
            DEV_ADDR_READ, DEV_ADDR_WRITE, REG_2_READ, hh_mm)
    begin
        state_next <= state_reg;
        sclk_out   <= '1';
        sdat_out   <= '1';
        c_next     <= c_reg + 1;    -- timer counts continuously
        bit_next   <= bit_reg;
        byte_next  <= byte_reg;
        data_next  <= data_reg;
        rx_next    <= rx_reg;           
        ack_next   <= ack_reg;
        i2c_done_tick <= '0';
        i2c_idle   <= '0';
        
        case state_reg is
        
            when idle =>
                i2c_idle <= '1';
                if (start_wr_tick = '1') then
                    bit_next  <= (others => '0');
                    byte_next <= (others => '0');
                    c_next    <= (others => '0');
                    state_next <= start_wr;
                end if;
                
            when start_wr =>
                sdat_out <= '0';
                data_next <= DEV_ADDR_WRITE & REG_2_READ;                
                    if (c_reg = HALF) then
                        c_next <= (others => '0');
                        state_next <= scl_begin_wr;
                    end if;
                        
            when scl_begin_wr =>
                sdat_out <= '0';
                sclk_out <= '0';
                if (c_reg = HALF) then
                    c_next <= (others => '0');
                    state_next <= data1_wr;
                end if;
            
            when data1_wr =>
                sdat_out <= data_reg(15);
                sclk_out <= '0';
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= data2_wr;
                end if;                
            when data2_wr =>
                sdat_out <= data_reg(15);
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= data3_wr;
                end if;
            when data3_wr =>
                sdat_out <= data_reg(15);
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= data4_wr;
                end if;                              
            when data4_wr =>
                sdat_out <= data_reg(15);
                sclk_out <= '0';
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    if (bit_reg = 7) then
                        state_next <= ack1_wr;
                    else
                        data_next <= data_reg(14 downto 0) & '0';
                        bit_next <= bit_reg + 1;
                        state_next <= data1_wr; 
                    end if;
                end if;
            
            when ack1_wr =>
                sclk_out <= '0';
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= ack2_wr;
                end if;
            when ack2_wr =>
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= ack3_wr;
                    ack_next <= i2c_sdat;   -- read ack from slave
                end if;
            when ack3_wr =>
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= ack4_wr;
                end if;                
            when ack4_wr =>
                sdat_out <= '0';
                sclk_out <= '0';
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    if (ack_reg = '1') then     -- slave fails to ack
                        state_next <= scl_end;
                    else
                        if(byte_reg = (BYTES_2_WRITE - 1)) then   -- done with 2 bytes
                            c_next <= (others => '0');                
                            bit_next  <= (others => '0');
                            byte_next <= (others => '0');
                            state_next <= sby;
                        else
                            bit_next <= (others => '0');
                            byte_next <= byte_reg + 1;
                            data_next <= data_reg(14 downto 0) & '0';
                            state_next <= data1_wr;
                        end if;
                    end if;
                end if;
            
            when sby =>
                if (c_reg = HALF) then
                    c_next <= (others => '0');
                    state_next <= start_rd;
                end if;
                
            when start_rd =>
                sdat_out <= '0';
                data_next <= DEV_ADDR_READ & b"0000_0000";                                
                    if (c_reg = HALF) then
                        c_next <= (others => '0');
                        state_next <= scl_begin_rd;
                    end if;
                        
            when scl_begin_rd =>
                sdat_out <= '0';
                sclk_out <= '0';
                if (c_reg = HALF) then
                    c_next <= (others => '0');
                    state_next <= addr1_rd;
                end if;
            
            when addr1_rd =>
                sdat_out <= data_reg(15);
                sclk_out <= '0';
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= addr2_rd;
                end if;                
            when addr2_rd =>
                sdat_out <= data_reg(15);
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= addr3_rd;
                end if;
            when addr3_rd =>
                sdat_out <= data_reg(15);
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= addr4_rd;
                end if;                              
            when addr4_rd =>
                sdat_out <= data_reg(15);
                sclk_out <= '0';
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    if (bit_reg = 7) then
                        state_next <= ack1_ad;
                        bit_next  <= (others => '0');
                        byte_next <= (others => '0');                       
                    else
                        data_next <= data_reg(14 downto 0) & '0';
                        bit_next <= bit_reg + 1;
                        state_next <= addr1_rd; 
                    end if;
                end if;
            
            when ack1_ad =>
                sclk_out <= '0';
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= ack2_ad;
                end if;
            when ack2_ad =>
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    ack_next <= i2c_sdat;   -- read ack from slave
                    state_next <= ack3_ad;                    
                end if;
            when ack3_ad =>
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= ack4_ad;
                end if;                
            when ack4_ad =>
                sclk_out <= '0';
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    if (ack_reg = '1') then     -- slave fails to ack
                        state_next <= scl_end;
                    else
                        bit_next   <= (others => '0');
                        byte_next  <= (others => '0');
                        state_next <= data1_rd;
                    end if;
                end if;
                
            when data1_rd =>
                sclk_out <= '0';
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= data2_rd;
                end if;                
            when data2_rd =>
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= data3_rd;
                    rx_next    <= rx_reg(22 downto 0) & i2c_sdat;
                end if;
            when data3_rd =>
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= data4_rd;
                end if;                              
            when data4_rd =>
                sclk_out <= '0';
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    if (bit_reg = 7) then
                        if(byte_reg = (BYTES_2_READ - 1)) then   -- done with 3 bytes
                           state_next <=  nack1;
                        else
                            state_next <= ack1_rd;
                        end if;
                    else
                        bit_next <= bit_reg + 1;
                        state_next <= data1_rd; 
                    end if;
                end if;
                
            when ack1_rd =>
                sclk_out <= '0';
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= ack2_rd;
                end if;
            when ack2_rd =>
                sdat_out <= '0';            
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= ack3_rd;
                end if;
            when ack3_rd =>
                sdat_out <= '0';                        
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= ack4_rd;
                end if;                
            when ack4_rd =>
                sclk_out <= '0';
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    bit_next <= (others => '0');
                    byte_next <= byte_reg + 1;
                    state_next <= data1_rd;
                end if;       
                
            when nack1 =>
                sclk_out <= '0';
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= nack2;
                end if;
            when nack2 =>
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= nack3;
                end if;
            when nack3 =>
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= nack4;
                end if;                
            when nack4 =>
                sclk_out <= '0';
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= scl_end;
                end if;                                                          
            
            when scl_end =>
                sclk_out <= '0';
                sdat_out <= '0';
                if (c_reg = QUTR) then
                    c_next <= (others => '0');
                    state_next <= stop;
                end if; 
                
            when stop =>
                sdat_out <= '0';
                if (c_reg = HALF) then
                    c_next <= (others => '0');
                    state_next <= turn;
                end if;
            
            when turn =>
                if (c_reg = HALF) then  
                i2c_done_tick <= '1';          
                    if (hh_mm = '1') then
                        dp_next <= rx_reg(16);
                        d1_next <= rx_reg(15 downto 12);
                        d0_next <= rx_reg(11 downto 8);

                        d3_next <= rx_reg(7 downto 4);
                        d2_next <= rx_reg(3 downto 0);                   
                    else
                        dp_next <= '0';
                        d1_next <= rx_reg(23 downto 20);
                        d0_next <= rx_reg(19 downto 16);

                        d3_next <= rx_reg(15 downto 12);
                        d2_next <= rx_reg(11 downto 8);
                    end if;
                    state_next <= idle;
                end if;
        end case;
    end process;
    
   d0 <= std_logic_vector(d0_reg);    
   d1 <= std_logic_vector(d1_reg);
   d2 <= std_logic_vector(d2_reg);
   d3 <= std_logic_vector(d3_reg);
    
    --***************************************************
    -- Mux instantiation
    --***************************************************
    disp_driver: entity work.disp_mux(arch)
        port map(
            clk => clk,
            reset => '0',
            bin3 => d3,
            bin2 => d2,
            bin1 => d1,
            bin0 => d0,
            an => an_reg,
            sseg => sseg(6 downto 0)                        
        ); 

    -- outputs
    an <= an_reg;
    sseg(7) <= dp_reg when an_reg(2) = '0' else '1';

    
    
end arch;
