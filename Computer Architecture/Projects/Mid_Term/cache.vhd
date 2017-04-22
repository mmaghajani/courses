library IEEE;
use IEEE.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity cache is port (
clk:in std_logic ;
cpu_address : in std_logic_vector(9 downto 0 ) ;
wren : in std_logic ;
wrdata: in std_logic_vector(31 downto 0 ) ;
reset:in std_logic ;
read_cache: in std_logic ;
invalidate:in std_logic ;
hit:out std_logic ;
rddata:out std_logic_vector(31 downto 0 ) ; 
data_ready: out std_logic
);
end cache ;

architecture data_flow of cache is
  component data_array is port(
    clk: in std_logic;
    address: in std_logic_vector(5 downto 0);
    wren: in std_logic;
    wrdata:in std_logic_vector(31 downto 0);
    data: out std_logic_vector(31 downto 0);
    data_array_ready: out std_logic
  );
  end component ;
  
  component tag_valid_array is port(
    clk: in std_logic;
    address: in std_logic_vector(5 downto 0);
    wren: in std_logic;
    reset_n: in std_logic;
    invalidate: in std_logic;
    wrdata:in std_logic_vector(3 downto 0);
    output: out std_logic_vector( 4 downto 0 );
    tag_valid_ready: out std_logic
    );
  end component ;
  
  component miss_hit_logic is port(
    tag: in std_logic_vector( 3 downto 0);
    w0: in std_logic_vector(4 downto 0);
    w1: in std_logic_vector(4 downto 0);
    hit: out std_logic;
    w0_valid: out std_logic;
    w1_valid: out std_logic 
    );
  end component ;
  
  component lru_array is port (
    clk: in std_logic ;
    address: in std_logic_vector(5 downto 0) ;
    read_w0:in std_logic ;
    read_w1:in std_logic ;
    read: in std_logic ;
    write: in std_logic ;
    invalidate: in std_logic ;
    w1_select: out std_logic
  );
  end component ;
  
  signal w0_valid_miss_hit_logic : std_logic ;
  signal w1_valid_miss_hit_logic : std_logic ;
  signal w0_wren : std_logic := '0';
  signal w1_wren : std_logic := '0';
  signal w0_tag_valid_output : std_logic_vector(4 downto 0 ) ;
  signal w1_tag_valid_output : std_logic_vector(4 downto 0 ) ;
  signal w1_select: std_logic ;
  signal w0_data_array_rddata : std_logic_vector(31 downto 0 ) ;
  signal w1_data_array_rddata : std_logic_vector(31 downto 0 ) ;
  signal w0_data_array_ready : std_logic ;
  signal w1_data_array_ready : std_logic ;
  signal w0_tag_valid_ready : std_logic ;
  signal w1_tag_valid_ready : std_logic ;
  signal read_w0 : std_logic ;
begin
  
  w0_data_array: data_array port map( clk , cpu_address(5 downto 0 ) , w0_wren, wrdata ,
   w0_data_array_rddata , w0_data_array_ready) ;
  w1_data_array: data_array port map( clk , cpu_address(5 downto 0 ) , w1_wren, wrdata ,
   w1_data_array_rddata , w1_data_array_ready) ;
    
  miss_hit : miss_hit_logic port map( cpu_address( 9 downto 6 ) , w0_tag_valid_output ,
  w1_tag_valid_output , hit , w0_valid_miss_hit_logic , w1_valid_miss_hit_logic ) ;
  
  w0_tag_valid : tag_valid_array port map( clk , cpu_address(5 downto 0 ) , w0_wren , reset , invalidate ,
     cpu_address(9 downto 6 ) , w0_tag_valid_output , w0_tag_valid_ready) ;
  w1_tag_valid : tag_valid_array port map( clk , cpu_address(5 downto 0 ) , w1_wren , reset , invalidate ,
     cpu_address(9 downto 6 ) , w1_tag_valid_output , w1_tag_valid_ready) ;
     
  lru : lru_array port map (clk , cpu_address(5 downto 0 ) , w0_valid_miss_hit_logic, w1_valid_miss_hit_logic 
    , read_cache , wren , invalidate , w1_select ) ;
  
  with w0_valid_miss_hit_logic select rddata <=
    w0_data_array_rddata when '1' ,
    w1_data_array_rddata when others ;

  process(clk)
    variable current_state : integer := 0 ;
    constant start : integer := 0 ;
    constant begin_write : integer := 1 ;
    begin
      if( clk'event and clk = '1' )then
        case current_state is
        when  start =>
          w0_wren <= '0' ;
          w1_wren <= '0' ;
          if( wren = '1' )then
            current_state := begin_write ;
          end if ;
        when begin_write =>
          w0_wren <= not w1_select ;
          w1_wren <= w1_select ;
          current_state := start ;
        when others =>
          current_state := start ;
        end case ;
      end if ;
  end process ;
  data_ready <= w0_tag_valid_ready and w1_tag_valid_ready and 
    w1_data_array_ready and w0_data_array_ready ;
end data_flow ;
  
    
