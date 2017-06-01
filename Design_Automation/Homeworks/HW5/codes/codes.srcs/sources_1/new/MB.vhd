----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/10/2017 09:02:48 PM
-- Design Name: 
-- Module Name: MB - Behavioral
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

entity MB is Port (
index : in integer range 0 to 31; 
sqrt : out integer
);
end MB;

architecture Behavioral of MB is

begin

with index select sqrt <=
    0 when 0 ,
    1 when 1 ,
    1 when 2 ,
    1 when 3 ,
    2 when 4 ,
    2 when 5 ,
    2 when 6 ,
    2 when 7 ,
    2 when 8 ,
    3 when 9 ,
    3 when 10 ,
    3 when 11 ,
    3 when 12 ,
    3 when 13 ,
    3 when 14 ,
    3 when 15 ,
    4 when 16 ,
    4 when 17 ,
    4 when 18 ,
    4 when 19 ,
    4 when 20 ,
    4 when 21 ,
    4 when 22 ,
    4 when 23 ,
    4 when 24 ,
    5 when 25 ,
    5 when 26 ,
    5 when 27 ,
    5 when 28 ,
    5 when 29 ,
    5 when 30 ,
    5 when 31 ;
end Behavioral;
