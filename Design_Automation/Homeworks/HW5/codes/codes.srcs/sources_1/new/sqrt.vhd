library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

entity sqrt is Port 
( x : in  STD_LOGIC_VECTOR (4 downto 0);
          y : out  STD_LOGIC_VECTOR (2 downto 0));
end sqrt;

architecture Memory of sqrt is
component MB is Port (
index : in integer; 
sqrt : out integer
);
end component;

signal output : integer;
begin

MB1: MB port map ( to_integer(unsigned(x)), output );
y <= std_logic_vector(to_unsigned(output,3));

end  Memory;

--architecture RTL of sqrt is

--    component SubMul is port ( 
--x,y,bin,control  : in  std_logic;
--sub ,bout : out std_logic
--);
--end component;

--  signal zer : std_logic := '0';
--  signal one : std_logic := '1';
--  signal x00, x01, x02, x03, x04, x05, u_0 : std_logic;  
--  signal b00, b01, b02, b03, b04, b05 : std_logic;  
--  signal x12, x13, x14, x15, x16, u_1 : std_logic;  
--  signal b12, b13, b14, b15, b16 : std_logic;  
--  signal x24, x25, x26, x27, u_2 : std_logic;  
--  signal b24, b25, b26, b27 : std_logic;  
--  signal x36, x37, u_3 : std_logic;  
--  signal b36, b37 : std_logic;  
--begin

--  --                   
--  s36: SubMul port map('0', one, zer, u_3, x36, b36);
--  s37: SubMul port map('0', zer, b36, u_3, x37, b37);
  
--  s24: SubMul port map(x(4), one, zer, u_2, x24, b24);
--  s25: SubMul port map('0', zer, b24, u_2, x25, b25);
--  s26: SubMul port map(x36 , u_3, b25, u_2, x26, b26);
--  s27: SubMul port map(x37 , zer, b26, zer, x27, b27);

--  s12: SubMul port map(x(2), one, zer, u_1, x12, b12);
--  s13: SubMul port map(x(3), zer, b12, u_1, x13, b13);
--  s14: SubMul port map(x24 , u_2, b13, u_1, x14, b14);
--  s15: SubMul port map(x25 , u_3, b14, u_1, x15, b15);
--  s16: SubMul port map(x26 , zer, b15, zer, x16, b16);
       
--  s00: SubMul port map(x(0), one, zer, zer, x00, b00);
--  s01: SubMul port map(x(1), zer, b00, zer, x01, b01);
--  s02: SubMul port map(x12 , u_1, b01, zer, x02, b02);
--  s03: SubMul port map(x13 , u_2, b02, zer, x03, b03);
--  s04: SubMul port map(x14 , u_3, b03, zer, x04, b04);
--  s05: SubMul port map(x15 , zer, b04, zer, x05, b05);
--  process( b05 , b16 , b27 , b37 , u_0 , u_1 , u_2)
--  begin
--    u_0  <= not b05;
--  u_1  <= not b16;
--  u_2  <= not b27;
--  u_3  <= not b37;
--  y(0) <= u_0;
--  y(1) <= u_1;
--  y(2) <= u_2;
--  end process;
--end RTL;