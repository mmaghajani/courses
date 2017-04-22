library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all ;

entity decoder is port (
  a : in std_logic ;
  b : in std_logic ;
  c : in std_logic ;
  outs : out std_logic_vector( 7 downto 0 ) 
);
end entity ;

architecture gate_level of decoder is
signal anot , bnot , cnot : std_logic ;
begin
  anot <= not a ;
  bnot <= not b ;
  cnot <= not c ;
  
  outs(0) <= anot and bnot and cnot ;
  outs(1) <= anot and bnot and c ;
  outs(2) <= anot and b and cnot ;
  outs(3) <= anot and b and c ;
  outs(4) <= a and bnot and cnot ;
  outs(5) <= a and bnot and c ;
  outs(6) <= a and b and cnot ;
  outs(7) <= a and b and c ;
end architecture ;

