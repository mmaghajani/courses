----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2017 03:53:33 PM
-- Design Name: 
-- Module Name: BCD_multiplier - Structural
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

entity BCD_multiplier is Port (
a : in std_logic_vector( 3 downto 0 );
b : in std_logic_vector( 3 downto 0 );
v : out std_logic_vector( 7 downto 0 )
);
end BCD_multiplier;

architecture Structural of BCD_multiplier is
signal outputMA1 : std_logic_vector( 3 downto 0 );
signal outputMA2 : std_logic_vector( 3 downto 0 );
signal outputMA3 : std_logic_vector( 3 downto 0 );
signal outputMA4 : std_logic_vector( 3 downto 0 );

signal sumFA1 : std_logic;
signal sumFA2 : std_logic;
signal sumFA5 : std_logic;

signal coutFA1 : std_logic;
signal coutFA2 : std_logic;
signal coutFA3 : std_logic;
signal coutFA4 : std_logic;
signal coutFA5 : std_logic;
signal coutFA6 : std_logic;
signal coutFA7 : std_logic;

signal coutHA1 : std_logic;
signal tempout : std_logic_vector(7 downto 0);
signal garbage1 : std_logic_vector( 3 downto 0 );

component full_adder is Port (
a, b, cin : in std_logic ;
sum, cout : out std_logic
);
end component;

component half_adder is Port(
a ,b : in  std_logic ;
sum , cout : out std_logic);
end component;

component multiplier is Port (
a : in std_logic_vector( 1 downto 0 );
b : in std_logic_vector( 1 downto 0 );
output : out std_logic_vector( 3 downto 0 )
);
end component;

component BinaryToBCD is
   Port ( 
      number   : in  std_logic_vector (7 downto 0);
      hundreds : out std_logic_vector (3 downto 0);
      tens     : out std_logic_vector (3 downto 0);
      ones     : out std_logic_vector (3 downto 0)
   );
end component;
signal garbage : std_logic;
begin

HA1: half_adder port map(coutFA3 , sumFA2 , tempout(3) , coutHA1);
HA2: half_adder port map(coutFA4 , outputMA1(3) , tempout(7) , garbage );

FA1: full_adder port map(outputMA3(2) , outputMA2(2) , coutFA2 , sumFA1 , coutFA1);
FA2: full_adder port map(outputMA3(1) , outputMA2(1) , outputMA4(3) , sumFA2 , coutFA2);
FA3: full_adder port map(outputMA3(0) , outputMA2(0) , outputMA4(2) , tempout(2) , coutFA3);
FA4: full_adder port map(coutFA7 , outputMA1(2) , coutFA5 , tempout(6) , coutFA4);
FA5: full_adder port map(outputMA3(3) , outputMA2(3) , coutFA1 , sumFA5 , coutFA5);
FA6: full_adder port map(sumFA1 , outputMA1(0) , coutHA1 , tempout(4) , coutFA6 );
FA7: full_adder port map(sumFA5 , outputMA1(1) , coutFA6 , tempout(5) , coutFA7);

MA1: multiplier port map(a( 3 downto 2) , b( 3 downto 2) , outputMA1);
MA2: multiplier port map(a( 1 downto 0) , b( 3 downto 2) , outputMA2);
MA3: multiplier port map(a( 3 downto 2) , b( 1 downto 0) , outputMA3);
MA4: multiplier port map(a( 1 downto 0) , b( 1 downto 0) , outputMA4);
tempout(0) <= outputMA4(0);
tempout(1) <= outputMA4(1);

bcd: BinaryToBCD port map( tempout , garbage1 , v( 7 downto 4 ) , v( 3 downto 0) );

end Structural;
