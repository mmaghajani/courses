library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all ;

entity barrow_look_ahead_subtractor is port (
  a : in std_logic_vector( 3 downto 0 ) ;
  b : in std_logic_vector( 3 downto 0 ) ;
  bin : in std_logic ;
  subtract : out std_logic_vector( 3 downto 0 ) ;
  bout : out std_logic
);
end entity ;

architecture gate_level of barrow_look_ahead_subtractor is
  signal borrow : std_logic_vector(3 downto 0);
  signal garbage:std_logic_vector( 2 downto 0 ) ;
  signal p,g : std_logic_vector(2 downto 0);
  
  component full_subtractor is port (
    a, b, bin : in std_logic;
    subtract, bout : out std_logic
  );
  end component ;
begin
    g(0) <= ( not a(0) ) and b(0) ;
    g(1) <= ( not a(1) ) and b(1) ;
    g(2) <= ( not a(2) ) and b(2) ;
    
    p(0) <= a(0) xnor b(0) ;
    p(1) <= a(1) xnor b(1) ;
    p(2) <= a(2) xnor b(2) ;

    borrow(0) <= bin ;
    borrow(1) <= g(0) or ( p(0) and borrow(0) ) ;
    borrow(2) <= g(1) or ( p(1) and ( g(0) or ( p(0) and borrow(0) ) ) ) ;
    borrow(3) <= g(2) or ( p(2) and ( g(1) or ( p(1) and g(0) ) or ( p(1) and p(0) and borrow(0) ) ) ) ;
    
    FS1 : full_subtractor port map (a(0),b(0),borrow(0),subtract(0) , garbage(0)) ;    
    FS2 : full_subtractor port map (a(1),b(1),borrow(1),subtract(1) , garbage(1)) ;    
    FS3 : full_subtractor port map (a(2),b(2),borrow(2),subtract(2) , garbage(2)) ;    
    FS4 : full_subtractor port map (a(3),b(3),borrow(3),subtract(3) , bout ) ;
    
end architecture ;


