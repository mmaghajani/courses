
library IEEE;
use IEEE.std_logic_1164.all;

entity SubMul is port ( 
x,y,bin,control  : in  std_logic;
sub ,bout : out std_logic
);
end SubMul;

architecture Structural of SubMul is
  signal temp3, temp7, temp2, temp1, temp4, temp5 : std_logic;
begin 
  temp1 <= (not x) and (not y) and bin;
  temp2 <= (not x) and y and (not bin);
  temp3 <= (not x) and y and bin;
  temp4 <= x and (not y) and (not bin);
  temp7 <= x and y and bin;
  bout   <= temp3 or temp7 or temp2 or temp1;
  temp5  <= temp4 or temp1 or temp2 or temp7;
  sub    <= temp5 when control='1' else x;  
end Structural;  