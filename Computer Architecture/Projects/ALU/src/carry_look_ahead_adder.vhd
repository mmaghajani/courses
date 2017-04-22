library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all ;

entity carry_look_ahead_adder is port (
  a : in std_logic_vector( 3 downto 0 ) ;
  b : in std_logic_vector( 3 downto 0 ) ;
  cin : in std_logic ;
  sum : out std_logic_vector( 3 downto 0 ) ;
  cout : out std_logic
);
end entity ;

architecture gate_level of carry_look_ahead_adder is
  signal c : std_logic_vector(3 downto 0);
  signal garbage:std_logic_vector( 2 downto 0 ) ;
  signal p,g : std_logic_vector(2 downto 0);
  
  component full_adder is port (
    a, b, cin : in std_logic;
    sum, cout : out std_logic
  );
  end component ;
begin
    g(0) <= a(0) and b(0) ;
    g(1) <= a(1) and b(1) ;
    g(2) <= a(2) and b(2) ;
    
    p(0) <= a(0) xor b(0) ;
    p(1) <= a(1) xor b(1) ;
    p(2) <= a(2) xor b(2) ;

    c(0) <= cin ;
    c(1) <= g(0) or ( p(0) and c(0) ) ;
    c(2) <= g(1) or ( p(1) and ( g(0) or ( p(0) and c(0) ) ) ) ;
    c(3) <= g(2) or ( p(2) and ( g(1) or ( p(1) and g(0) ) or ( p(1) and p(0) and c(0) ) ) ) ;
    
    FA1 : full_adder port map (a(0),b(0),c(0),sum(0) , garbage(0)) ;    
    FA2 : full_adder port map (a(1),b(1),c(1),sum(1) , garbage(1)) ;    
    FA3 : full_adder port map (a(2),b(2),c(2),sum(2) , garbage(2)) ;    
    FA4 : full_adder port map (a(3),b(3),c(3),sum(3) , cout ) ;
    
end architecture ;
