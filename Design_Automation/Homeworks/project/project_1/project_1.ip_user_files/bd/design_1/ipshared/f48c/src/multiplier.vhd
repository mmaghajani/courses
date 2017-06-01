----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2017 03:21:18 PM
-- Design Name: 
-- Module Name: multiplier - Behavioral
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

entity multiplier is Port (
a : in std_logic_vector( 1 downto 0 );
b : in std_logic_vector( 1 downto 0 );
output : out std_logic_vector( 3 downto 0 )
);
end multiplier;

architecture Behavioral of multiplier is
signal temp1 : std_logic ;
signal temp2 : std_logic;
component full_adder is Port (
a, b, cin : in std_logic ;
sum, cout : out std_logic
);
end component;
begin

FA1: full_adder port map(b(0) and a(1) , b(1) and a(0) , temp2 , output(1) , temp1);
FA2: full_adder port map(b(1) and a(1) , temp1 , '0' , output(2) , output(3));
FA3: full_adder port map( a(0) and b(0) , '0' , '0' , output(0) , temp2 );
--output(0) <= a(0) and b(0);

--output(1) <= (a(0) and not a(1) and b(1)) or
--(a(0) and not b(0) and b(1)) or
--(not a(0) and a(1) and b(0)) or
--(a(1) and b(0) and not b(1));

--output(2) <= ( a( 1 ) and b( 1 ) and not b( 0 )) or
--(a( 1 ) and not a( 0 ) and b( 1 ));

--output(3) <= a( 1 )and a( 0 ) and b( 1 ) and b( 0 );
end Behavioral;
