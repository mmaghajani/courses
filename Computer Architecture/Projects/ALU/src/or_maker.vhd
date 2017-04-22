library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all ;

entity or_maker is port(
  a : in std_logic_vector( 7 downto 0 ) ;
  b : in std_logic_vector( 7 downto 0 ) ;
  output : out std_logic_vector( 7 downto 0 ) ;
  zero_flag : out std_logic;
  avf_flag : out std_logic ;
  sign_flag : out std_logic
  );
end entity ;

architecture gate_level of or_maker is 
signal temp : std_logic_vector( 7 downto 0 ) ;
begin
  temp <= a or b ;

  output <= temp ;
  
  avf_flag <= '0' ;
  sign_flag <= '0' ;
  zero_flag <= not( temp(0) or temp(1) or temp(2) or temp(3) or temp(4) or temp(5) or temp(6) or temp(7) ) ;
end architecture ;
