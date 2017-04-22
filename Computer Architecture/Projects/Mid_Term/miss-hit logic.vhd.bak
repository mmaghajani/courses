library IEEE;
use IEEE.std_logic_1164.all;

entity miss_hit_logic is port (
  tag: in std_logic_vector( 3 downto 0);
  w0: in std_logic_vector(4 downto 0);
  w1: in std_logic_vector(4 downto 0);
  hit: out std_logic;
  w0_valid: out std_logic;
  w1_valid: out std_logic
  );
end miss_hit_logic;

architecture gate_level of miss_hit_logic is
signal equal_w0: std_logic_vector(3 downto 0);
    signal equal_w1: std_logic_vector(3 downto 0);
    signal is_valid_w0: std_logic;
    signal is_valid_w1: std_logic;
begin
    equal_w0 <= w0(3 downto 0) xnor tag;
    equal_w1 <= w1(3 downto 0) xnor tag;
    is_valid_w0 <= equal_w0(3) and equal_w0(2) and equal_w0(1) and equal_w0(0);
    is_valid_w1 <= equal_w1(3) and equal_w1(2) and equal_w1(1) and equal_w1(0);
    w0_valid <= is_valid_w0 and w0(4);
    w1_valid <= is_valid_w1 and w1(4);
    hit <= (is_valid_w0 and w0(4)) or (is_valid_w1 and w1(4));
end gate_level;


