----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/11/2017 09:33:06 AM
-- Design Name: 
-- Module Name: TB - Behavioral
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

entity TB is
--  Port ( );
end TB;

architecture Controller of TB is
component controller is Port (
input : in std_logic_vector( 1 downto 0 );
clk,rst : in std_logic;
output : out std_logic );
end component;

signal input : std_logic_vector( 1 downto 0);
signal clk,rst,output : std_logic := '1';
begin
rst <= '0' after 110ns;
clk <= not clk after 50ns;

input <= "00",
         "10" after 150ns,
         "11" after 250ns,
         "01" after 350ns,
         "11" after 450ns,
         "00" after 550ns;
         
MODULE: controller port map( input , clk ,rst , output);
end Controller;
