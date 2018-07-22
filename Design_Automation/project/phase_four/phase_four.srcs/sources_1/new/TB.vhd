----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/04/2017 03:52:28 PM
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

architecture Behavioral of TB is
component BCD_divider is Port (
 clk : in std_logic;
 dividend : in std_logic_vector( 31 downto 0 ) ;
 divisor : in std_logic_vector( 15 downto 0 ) ;
 quotient,reminder : out std_logic_vector( 15 downto 0 );
 DVF : out std_logic
 );
end component;

signal test_clk :  std_logic := '0' ;
signal test_dividend :  std_logic_vector( 31 downto 0 ) ;
signal test_divisor :  std_logic_vector( 15 downto 0 ) ;
signal test_quotient,reminder :  std_logic_vector( 15 downto 0 );
signal test_DVF :  std_logic;
begin

BCD_div: BCD_divider port map ( test_clk , test_dividend , test_divisor , 
                                test_quotient , reminder , test_DVF );
test_clk <= not test_clk after 50ns;
test_dividend <= "00010011010000100001000100010001" ,
                 "00110011010001100001001100010001" after 200ns;
test_divisor <= "0010010100100000" , 
                "0101010100100001" after 200ns;


end Behavioral;
