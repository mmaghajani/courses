----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/04/2017 03:48:55 AM
-- Design Name: 
-- Module Name: BCDtoBin - Behavioral
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCDtoBin is 
Port (
bcd : in std_logic_vector( 31 downto 0);
binary : out std_logic_vector( 27 downto 0 )
);
end BCDtoBin;

ARCHITECTURE Behavioral of BCDtoBin is
function bcd_2_bin (bcd_in_0: STD_LOGIC_VECTOR (3 downto 0);bcd_in_10:STD_LOGIC_VECTOR (3 downto 0);
    bcd_in_100: STD_LOGIC_VECTOR (3 downto 0);bcd_in_1000 : STD_LOGIC_VECTOR (3 downto 0);
    bcd_in_10000 : STD_LOGIC_VECTOR (3 downto 0);bcd_in_100000 : STD_LOGIC_VECTOR (3 downto 0);
    bcd_in_1000000 : STD_LOGIC_VECTOR (3 downto 0);bcd_in_10000000 : STD_LOGIC_VECTOR (3 downto 0))
  return STD_LOGIC_VECTOR  is 
  variable output : STD_LOGIC_VECTOR (27 downto 0) := (others => '0');

begin

output := (bcd_in_0 * "01")  --multiply by 1
                + (bcd_in_10 * "1010") --multiply by 10
                + (bcd_in_100 * "1100100") --multiply by 100
                + (bcd_in_1000 * "1111101000") --multiply by 1000
                + (bcd_in_10000 * "0010011100010000")
                + (bcd_in_100000 * "11000011010100000")
                + (bcd_in_1000000 * "11110100001001000000")
                + (bcd_in_10000000 * "100110001001011010000000");
return output;
end  bcd_2_bin ;
begin
binary <= bcd_2_bin( bcd ( 3 downto 0 ) , bcd( 7 downto 4 ) , bcd( 11 downto 8 ) ,
                     bcd( 15 downto 12 ) , bcd( 19 downto 16) , bcd( 23 downto 20) ,
                     bcd( 27 downto 24 ) , bcd( 31 downto 28) );
end BEhavioral;