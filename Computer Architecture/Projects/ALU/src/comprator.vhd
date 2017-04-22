library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all ;

entity comprator is port (
  a : in std_logic_vector( 7 downto 0 ) ;
  b : in std_logic_vector( 7 downto 0 ) ;
  equal : out std_logic ;
  greater : out std_logic ;
  less : out std_logic
  );
end entity ;

architecture gate_level of comprator is
  signal c : std_logic_vector( 7 downto 0 ) ;
begin
  c <= a xnor b ;
  
  less <= ( ( not a(7) and b(7) )
        or ( c(7) and not a(6) and b(6) )
        or ( c(7) and c(6) and not a(5) and b(5) )
        or ( c(7) and c(6) and c(5) and not a(4) and b(4) )
        or ( c(7) and c(6) and c(5) and c(4) and not a(3) and b(3) )
        or ( c(7) and c(6) and c(5) and c(4) and c(3) and not a(2) and b(2) )
        or ( c(7) and c(6) and c(5) and c(4) and c(3) and c(2) and not a(1) and b(1) )
        or ( c(7) and c(6) and c(5) and c(4) and c(3) and c(2) and c(1) and not a(0) and b(0) ) ) ;
        
  greater <= ( ( not b(7) and a(7) )
        or ( c(7) and not b(6) and a(6) )
        or ( c(7) and c(6) and not b(5) and a(5) )
        or ( c(7) and c(6) and c(5) and not b(4) and a(4) )
        or ( c(7) and c(6) and c(5) and c(4) and not b(3) and a(3) )
        or ( c(7) and c(6) and c(5) and c(4) and c(3) and not b(2) and a(2) )
        or ( c(7) and c(6) and c(5) and c(4) and c(3) and c(2) and not b(1) and a(1) )
        or ( c(7) and c(6) and c(5) and c(4) and c(3) and c(2) and c(1) and not b(0) and a(0) ) );
        
  equal <= c(0) and c(1) and c(2) and c(3) and c(4) and c(5) and c(6) and c(7) ;
end architecture ;
