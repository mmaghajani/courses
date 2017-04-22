library IEEE;
use IEEE.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity tag_valid_array is port (
  clk: in std_logic;
  address: in std_logic_vector(5 downto 0);
  wren: in std_logic;
  reset_n: in std_logic;
  invalidate: in std_logic;
  wrdata:in std_logic_vector(3 downto 0);
  output: out std_logic_vector( 4 downto 0 );
  tag_valid_ready: out std_logic
  );
end tag_valid_array;

architecture dataflow of tag_valid_array is


type tagArray is array ( 0 to 63 ) of std_logic_vector(3 downto 0) ;
type valid is array ( 0 to 63 ) of std_logic ;

signal valid_array : valid := (others => '0');
signal tag_array:tagArray := (others => "1111" );

begin

  output <= valid_array(to_integer(unsigned(address))) & 
	                 tag_array(to_integer(unsigned(address))) ;
	                 
	process( clk )
	  begin
	   if(clk'event AND clk='1') then
	     tag_valid_ready <= '1' ;
	     if( wren = '1' ) then
	       tag_array(to_integer(unsigned(address))) <= wrdata ;
	       valid_array(to_integer(unsigned(address))) <= '1' ;
	       if( invalidate = '1' )then
	         valid_array(to_integer(unsigned(address))) <= '0' ;
	         end if ;
	       
	       tag_valid_ready <= '1' ;
	     else
	       if( invalidate = '1' )then
	         valid_array(to_integer(unsigned(address))) <= '0' ;
	         tag_valid_ready <= '1' ;
	       else
	         tag_valid_ready <= '1' ;
	       end if ;
	     end if ;
	     
	     if(reset_n = '1') then
	       for i in 0 to 63 loop
	         tag_array(i) <= "0000" ;
	         valid_array(i) <= '0' ;
	       end loop ;
       end if;
	   end if ;  
	  end process ;
	  
end dataflow;

