----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/27/2017 06:52:07 PM
-- Design Name: 
-- Module Name: average - Behavioral
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

entity average is Port (
input : in natural range 15 to 40;
avg : inout integer := 0 ;
clk : in std_logic
);
end average;


architecture Behavioral of average is

function findAVG (a,b : in natural) return integer is
begin
    if( a = 0 ) then
        return b/16;
    else
        return a+b;
    end if;
end findAVG;

begin

process(clk)
begin
if( clk'event and clk = '1')then
        avg <= findAVG(input , avg);
end if;
end process;
end Behavioral;
                                                                                 

                                                                                 