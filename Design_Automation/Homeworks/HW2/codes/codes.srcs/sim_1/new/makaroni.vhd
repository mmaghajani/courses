----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2017 01:50:25 PM
-- Design Name: 
-- Module Name: makaroni - Behavioral
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

entity makaroni is Port ( 
pressure : in integer ;
output : out std_logic_vector( 1 downto 0)
);
end makaroni;

architecture Behavioral of makaroni is
begin

output <= "00" when pressure >= 5 and pressure <= 10 else
          "01" when pressure > 10 and pressure <= 15 else
          "10" when pressure > 15 and pressure <= 20 else
          "11" when pressure > 20 and pressure <= 25 else
          "00";
          
with pressure select
    output <= "00" when 5 to 10,
              "01" when 11 to 15,
              "10" when 16 to 20,
              "11" when 21 to 25,
              "00" when others;
end Behavioral;
