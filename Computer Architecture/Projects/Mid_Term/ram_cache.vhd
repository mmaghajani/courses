library IEEE;
use IEEE.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity ram_cache is port (
clk:in std_logic ;
addr : in std_logic_vector(9 downto 0 ) ;
reset_n: in std_logic ;
read:in std_logic ;
write: in std_logic ;
wrdata:in std_logic_vector(31 downto 0 ) ;
rddata: out std_logic_vector(31 downto 0 ) ;
hit: out std_logic
);
end ram_cache ;

architecture data_flow of ram_cache is
  component cache is port (
    clk:in std_logic ;
    cpu_address : in std_logic_vector(9 downto 0 ) ;
    wren : in std_logic ;
    wrdata: in std_logic_vector(31 downto 0 ) ;
    reset:in std_logic ;
    read_cache: in std_logic ;
    invalidate:in std_logic ;
    hit:out std_logic ;
    rddata:out std_logic_vector(31 downto 0 );
    data_ready: out std_logic
  );
  end component ;
  
  component ram is port (
    clk: in std_logic;
    address: in std_logic_vector(9 downto 0);
    rw: in std_logic;
    data_in: in std_logic_vector( 31 downto 0 );
    data_ready: out std_logic;
    data_out:out std_logic_vector(31 downto 0)
  );
  end component ;
  
  component controller is port(
    write_request : in std_logic ;
    read_request: in std_logic ;
    clk : in std_logic;
    ram_ready: in std_logic ;
    cache_ready: in std_logic ;
    is_hit: in std_logic ;
    invalidate: out std_logic ;
    ram_write: out std_logic ;
    ram_read: out std_logic ;
    read_cache: out std_logic ;
    wren: out std_logic
  );
  end component ;
  
  signal cache_rddata: std_logic_vector( 31 downto 0 ) ;
  signal ram_rddata: std_logic_vector(31 downto 0 ) ;
  signal ram_data_ready:std_logic ;
  signal cache_data_ready: std_logic ;
  signal invalidate:std_logic ;
  signal ram_write:std_logic ;
  signal ram_read:std_logic ;
  signal read_cache:std_logic ;
  signal write_cache:std_logic ;
  signal is_hit:std_logic ;
    
begin
  
  my_cache : cache port map( clk , addr , write_cache , ram_rddata , reset_n , read_cache ,
    invalidate , is_hit , cache_rddata , cache_data_ready) ;
    
  my_ram : ram port map( clk , addr , ram_write , wrdata , ram_data_ready , ram_rddata) ;
    
  my_controller : controller port map( write , read , clk , ram_data_ready , cache_data_ready ,
  is_hit , invalidate , ram_write , ram_read , read_cache , write_cache ) ;
    
  hit <= is_hit ;
  with is_hit select rddata <=
    cache_rddata when '1' ,
    ram_rddata when others ;

end data_flow ;
  
    
