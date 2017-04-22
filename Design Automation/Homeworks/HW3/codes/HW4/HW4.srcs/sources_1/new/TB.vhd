----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2017 06:27:11 PM
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

architecture encryptor of TB is
component encryptor is Port (
input : in std_logic_vector( 1 to 15 );
output : out std_logic_vector( 1 to 20 )
);
end component;

component decryptor is Port ( 
input : in std_logic_vector( 1 to 20 );
output : out std_logic_vector( 1 to 15)
);
end component;

signal decrypted,number : std_logic_vector( 1 to 15);
signal encrypted , disturbed: std_logic_vector( 1 to 20 );
begin
number <= "000000000011111";
disturbed <= encrypted( 1 to 9 ) & not encrypted(10) & encrypted( 11 to 20);

encrypt: encryptor port map ( number , encrypted );
decrypt: decryptor port map ( disturbed , decrypted );

end encryptor;

architecture lock of TB is
component lock is Port (
one , zero , enter , rst , clk :in std_logic;
unlock : out std_logic
 );
end component;

signal one , zero , enter , rst , unlock: std_logic;
signal clk : std_logic := '0' ;
begin

MODULE: lock port map ( one , zero , enter , rst , clk , unlock );

one <= '0' ,
       '1' after 100ns,
       '0' after 200ns,
       '1' after 300ns,
       '0' after 500ns;
zero <= '1',
        '0' after 100ns,
        '1' after 200ns,
        '0' after 300ns ;
enter <= '0',
         '1' after 500ns,
         '0' after 600ns;
rst <= '0',
       '1' after 1000ns,
       '0' after 1100ns;

clk <= not clk after 50ns;

end lock;
