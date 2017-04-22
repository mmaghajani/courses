library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all ;

entity full_subtractor is port (
  a, b, bin : in std_logic;
  subtract, bout : out std_logic
  );
end entity;

architecture gate_level of full_subtractor is
begin
  subtract <= a xor b xor bin;
  bout <= ((not a) and (b or bin) ) or ( b and bin );
end architecture;


