----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/27/2017 09:04:36 PM
-- Design Name: 
-- Module Name: BCD_1x8_multiplier - Behavioral
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

entity BCD_1x8_multiplier is Port (
b : in std_logic_vector( 3 downto 0);
a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 : in std_logic_vector( 3 downto 0 );
out0 , out1 , out2 , out3 , out4 , out5 , out6 , out7 , out8 : out std_logic_vector( 3 downto 0 )
);
end BCD_1x8_multiplier;

architecture Behavioral of BCD_1x8_multiplier is
component BCD_multiplier is Port (
a : in std_logic_vector( 3 downto 0 );
b : in std_logic_vector( 3 downto 0 );
v : out std_logic_vector( 7 downto 0 )
);
end component;

component BCD_adder is
    port( input1,input2  : in  std_logic_vector(3 downto 0);
       carry_in : in std_logic;
        sum_out  : out  std_logic_vector(3 downto 0); 
        carry : out std_logic  
    );
end component;


signal temp0 , temp1 , temp2 , temp3 , temp4 , temp5 , temp6 , temp7 : std_logic_vector( 7 downto 0 );
signal tempout : std_logic_vector( 31 downto 0 ) ;
signal cout0 , cout1 , cout2 , cout3 , cout4 , cout5 , cout6 , cout7 : std_logic;
begin

com0: BCD_multiplier port map(a0 , b , temp0);
com1: BCD_multiplier port map(a1 , b , temp1);
com2: BCD_multiplier port map(a2 , b , temp2);
com3: BCD_multiplier port map(a3 , b , temp3);
com4: BCD_multiplier port map(a4 , b , temp4);
com5: BCD_multiplier port map(a5 , b , temp5);
com6: BCD_multiplier port map(a6 , b , temp6);
com7: BCD_multiplier port map(a7 , b , temp7);

adder0: BCD_adder port map( temp0( 7 downto 4 ) , temp1( 3 downto 0 ) , 
        '0' , out1 , cout0);
adder1: BCD_adder port map( temp1( 7 downto 4 ) , temp2( 3 downto 0 ) , 
        cout0 , out2 , cout1);
adder2: BCD_adder port map( temp2( 7 downto 4 ) , temp3( 3 downto 0 ) , 
        cout1 , out3 , cout2);
adder3: BCD_adder port map( temp3( 7 downto 4 ) , temp4( 3 downto 0 ) , 
        cout2 , out4 , cout3);
adder4: BCD_adder port map( temp4( 7 downto 4 ) , temp5( 3 downto 0 ) , 
        cout3 , out5 , cout4);
adder5: BCD_adder port map( temp5( 7 downto 4 ) , temp6( 3 downto 0 ) , 
        cout4 , out6 , cout5);
adder6: BCD_adder port map( temp6( 7 downto 4 ) , temp7( 3 downto 0 ) , 
        cout5 , out7 , cout6);
adder7: BCD_adder port map( temp7( 7 downto 4 ) , "000"&cout6 , 
        '0' , out8 , cout7);    
out0 <= temp0( 3 downto 0 );

end Behavioral;
