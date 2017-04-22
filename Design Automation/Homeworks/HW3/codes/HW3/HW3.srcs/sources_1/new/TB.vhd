----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2017 04:43:05 PM
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



architecture average of TB is
component average is Port (
input : in natural range 15 to 40;
avg : inout integer := 0 ;
clk : in std_logic
);
end component;

signal input : natural range 15 to 40;
signal avg : integer := 0 ;
signal clk : std_logic := '0';
begin

module: average port map(input , avg , clk );

input <= 20 ,
     30 after 100ns,
     32 after 200ns,
     25 after 300ns,
     19 after 400ns,
     24 after 500ns,
     28 after 600ns,
     36 after 700ns,
     31 after 800ns,
     15 after 900ns,
     16 after 1000ns,
     17 after 1100ns,
     18 after 1200ns,
     19 after 1300ns,
     19 after 1400ns,
     19 after 1500ns,
     0 after 1600ns;
         
clk <= not clk after 50ns;
          
end average;

architecture Behavioral of TB is
component Genom is Port (
input : in std_logic_vector( 1 downto 0 );
reset : in std_logic ;
clk : in std_logic ;
output : out std_logic_vector( 1 downto 0 )
);
end component;

signal input : std_logic_vector( 1 downto 0 );
signal reset : std_logic ;
signal output : std_logic_vector( 1 downto 0 );
signal clk : std_logic := '0';
begin

BCD: Genom port map(input , reset , clk , output  );

input <= "11" ,
     "00" after 100ns,
     "01" after 200ns,
     "11" after 300ns,
     "01" after 400ns,
     "11" after 500ns,
     "00" after 600ns,
     "10" after 700ns,
     "00" after 800ns,
     "10" after 900ns,
     "00" after 1000ns,
     "10" after 1100ns,
     "11" after 1200ns,
     "01" after 1300ns;
         
clk <= not clk after 50ns;
          
end Behavioral;