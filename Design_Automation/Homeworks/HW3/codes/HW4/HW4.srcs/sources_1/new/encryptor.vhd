----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2017 05:25:26 PM
-- Design Name: 
-- Module Name: encryptor - Behavioral
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

entity encryptor is Port (
input : in std_logic_vector( 1 to 15 );
output : out std_logic_vector( 1 to 20 )
);
end encryptor;

architecture Behavioral of encryptor is
signal p1 , p2 , p4 , p8 , p16 : std_logic;
begin
p1 <= input(1) xor input(2) xor input(4) xor input(5) xor input(7) xor
         input(9) xor input(11) xor input(12) xor input(14);
p2 <= input(1) xor input(3) xor input(4) xor input(6) xor input(7) xor
                  input(10) xor input(11) xor input(13) xor input(14);
p4 <= input(2) xor input(3) xor input(4) xor input(8) xor input(9) xor
                           input(10) xor input(11) xor input(15);
p8 <= input(5) xor input(6) xor input(7) xor input(8) xor input(9) xor
                                    input(10) xor input(11);
p16 <= input(12) xor input(13) xor input(14) xor input(15);

output <= p1 & p2 & input(1) & p4 & input( 2 to 4) & p8 & input( 5 to 11 ) & p16 & input( 12 to 15 );
end Behavioral;
