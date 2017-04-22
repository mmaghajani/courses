library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all ;

entity full_adder is port (
  a, b, cin : in std_logic;
  sum, cout : out std_logic
  );
end entity;

architecture gate_level of full_adder is
begin
  sum <= a xor b xor cin;
  cout <= (a and b) or (a and cin) or (b and cin);
end architecture;
