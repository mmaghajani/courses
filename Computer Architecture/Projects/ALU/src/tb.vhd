library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all ;

entity tb is
end entity ;

architecture test of tb is
  component control_unit is port (
  clk : in std_logic ;
  a : in std_logic_vector( 7 downto 0 ) ;
  b : in std_logic_vector( 7 downto 0 ) ;
  selector : in std_logic_vector( 2 downto 0 ) ;
  output : out std_logic_vector( 7 downto 0 ) ;
  zero_flag : out std_logic ;
  sign_flag : out std_logic ;
  avf_flag : out std_logic 
  );
end component ;

signal clk : std_logic := '0' ;
signal zero_flag , sign_flag , avf_flag : std_logic ;
signal a,b,output : std_logic_vector( 7 downto 0 ) ;
signal selector : std_logic_vector( 2 downto 0 ) ;

begin
  
  controler : control_unit port map ( clk , a , b , selector , output , zero_flag , sign_flag , avf_flag ) ;
    
  a <= "00001111" ,
       "00011100" after 3400 ns,
       "01111100" after 6500 ns;
  b <= "00001111" ,
       "00000011" after 3400 ns,
       "00001111" after 6500 ns;
  
  selector <= "000" ,
              "001" after 100 ns ,
              "010" after 200 ns ,
              "011" after 2000 ns ,
              "100" after 3000 ns ,
              "101" after 3100 ns ,
              "110" after 3200 ns ,
              "111" after 3300 ns ,
              "000" after 3400 ns ,
              "001" after 3500 ns ,
              "010" after 3600 ns ,
              "011" after 5000 ns ,
              "100" after 6100 ns ,
              "101" after 6200 ns ,
              "110" after 6300 ns ,
              "111" after 6400 ns ,
              "000" after 6500 ns ,
              "001" after 6600 ns ,
              "010" after 6700 ns ,
              "011" after 8000 ns ,
              "100" after 9000 ns ,
              "101" after 9100 ns ,
              "110" after 9200 ns ,
              "111" after 9300 ns ;
  
  CLOCK:
    clk <= '1' after 50 ns when clk = '0' else
           '0' after 50 ns when clk = '1';
end architecture ;