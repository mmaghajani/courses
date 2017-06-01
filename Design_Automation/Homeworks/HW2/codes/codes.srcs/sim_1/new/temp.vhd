----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2017 09:27:29 AM
-- Design Name: 
-- Module Name: temp - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity temp is
Port ( 
x : inout std_logic;
y : inout std_logic;
z : inout std_logic;
w : inout std_logic);
end temp;

architecture Behavioral of temp is

begin

process (x, y)
begin
 z<='1';
 y<='1';
 if (x>w) then
y<=x;
 else
x<='1';
z<=y or x;
 end if;
 x<='1';
 y<='0';
end process;

end Behavioral;
