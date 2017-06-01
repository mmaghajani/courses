----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2017 03:13:32 PM
-- Design Name: 
-- Module Name: test - Behavioral
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

entity test is Port (
clk : in std_logic
 );
end test;

architecture Behavioral of test is
signal A: std_logic ;
signal C: std_logic ;
signal B: std_logic ;
begin
C <= '1';
B <= '0';
process(clk)
variable D : std_logic;
begin
A <= B;
B <= C xor B;
D := C and A;
C <= not C;
end process;
end Behavioral;
