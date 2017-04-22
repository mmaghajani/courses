----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2017 06:04:53 PM
-- Design Name: 
-- Module Name: decryptor - Behavioral
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

USE ieee.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decryptor is Port ( 
input : in std_logic_vector( 1 to 20 );
output : out std_logic_vector( 1 to 15)
);
end decryptor;

architecture Behavioral of decryptor is
signal numsig : integer ;
begin

process( input )
variable p1,p2,p4,p8,p16,tempsig : std_logic ;
variable num : integer range  1 to 20 ;
variable temp : std_logic_vector( 1 to 5 );
variable temp_input : std_logic_vector( 1 to 20 );
begin
p1 := input(1) xor input(3) xor input(5) xor input(7) xor input(9) xor
         input(11) xor input(13) xor input(15) xor input(17) xor input(19);
p2 := input(2) xor input(3) xor input(7) xor input(6) xor input(10) xor
                  input(11) xor input(14) xor input(15) xor input(18) xor input(19);
p4 := input(4) xor input(5) xor input(6) xor input(7) xor input(12) xor
                           input(13) xor input(14) xor input(15) xor input(20);
p8 := input(8) xor input(9) xor input(10) xor input(11) xor input(12) xor
                                    input(13) xor input(14) xor input(15);
p16 := input(16) xor input(17) xor input(18) xor input(19) xor input(20);

if( p1 = '0' and p2 = '0' and p4 = '0' and p8 = '0' and p16 = '0' )then
output <= input(3)& input( 5 to 7 ) & input(9 to 15) & input(17 to 20);
else
temp := p16&p8&p4&p2&p1;
num :=  to_integer(unsigned(temp));
numsig <= num;
if( num > 0 and num < 16 ) then
temp_input := input;
tempsig := not temp_input(num);
temp_input(num) := tempsig;
output <= temp_input(3) & temp_input(5 to 7) & temp_input(9 to 15) & temp_input(17 to 20);
end if;
end if;
end process;
end Behavioral;
