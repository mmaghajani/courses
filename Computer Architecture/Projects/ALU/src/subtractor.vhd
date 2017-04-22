library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all ;

entity subtractor is port (
  a : in std_logic_vector( 7 downto 0 ) ;
  b : in std_logic_vector( 7 downto 0 ) ;
  output : out std_logic_vector( 7 downto 0 ) ;
  avf_flag : out std_logic ;
  zero_flag : out std_logic ;
  sign_flag : out std_logic 
  );
end entity ;

architecture gate_level of subtractor is
signal temp_bout_1 : std_logic ;
signal temp_output_1 : std_logic_vector( 7 downto 0 ) ;
signal temp_avf_flag_1 : std_logic ;
signal zero_flag_1 : std_logic ;

signal temp_bout_2 : std_logic ;
signal temp_output_2 : std_logic_vector( 7 downto 0 ) ;
signal temp_avf_flag_2 : std_logic ;
signal zero_flag_2 : std_logic ;

signal controll : std_logic_vector( 2 downto 0 ) ;

component barrow_look_ahead_subtractor is port (
  a : in std_logic_vector( 3 downto 0 ) ;
  b : in std_logic_vector( 3 downto 0 ) ;
  bin : in std_logic ;
  subtract : out std_logic_vector( 3 downto 0 ) ;
  bout : out std_logic
);
end component ;

component comprator is port (
  a : in std_logic_vector( 7 downto 0 ) ;
  b : in std_logic_vector( 7 downto 0 ) ;
  equal : out std_logic ;
  greater : out std_logic ;
  less : out std_logic
  );
end component ;

begin
  look_ahead1 : barrow_look_ahead_subtractor port map ( a( 3 downto 0 ) , b( 3 downto 0 ) , '0' , temp_output_1( 3 downto 0 )
    , temp_bout_1 ) ;
  look_ahead2 : barrow_look_ahead_subtractor port map ( a( 7 downto 4 ) , b( 7 downto 4 ) , temp_bout_1 , temp_output_1( 7 downto 4 ) ,
    temp_avf_flag_1 ) ;
  
  look_ahead3 : barrow_look_ahead_subtractor port map ( b( 3 downto 0 ) , a( 3 downto 0 ) , '0' , temp_output_2( 3 downto 0 )
    , temp_bout_2 ) ;
  look_ahead4 : barrow_look_ahead_subtractor port map ( b( 7 downto 4 ) , a( 7 downto 4 ) , temp_bout_2 , temp_output_2( 7 downto 4 ) ,
    temp_avf_flag_2 ) ;

  comprate : comprator port map ( a , b , controll(2) , controll(1) , controll(0) ) ;
    
  with controll select output <=
    temp_output_1 when "010" ,
    temp_output_2 when "001" ,
    temp_output_1 when "100" ,
    temp_output_1 when others ;
   
  with controll select sign_flag <=
    '0' when "010" ,
    '1' when "001" ,
    '0' when others ; 
  
  with controll select avf_flag <=
    '0' when "010" ,
    '1' when "001" ,
    '0' when others ;
  
  with controll select zero_flag <=
    zero_flag_1 when "010" ,
    zero_flag_2 when "001" ,
    zero_flag_1 when others ;
    
  zero_flag_1 <= not( temp_output_1(0) or temp_output_1(1) or temp_output_1(2) or temp_output_1(3) or temp_output_1(4) or
   temp_output_1(5) or temp_output_1(6) or temp_output_1(7) ) ;
   
  zero_flag_2 <= not( temp_output_2(0) or temp_output_2(1) or temp_output_2(2) or temp_output_2(3) or temp_output_2(4) or
   temp_output_2(5) or temp_output_2(6) or temp_output_2(7) ) ;
end architecture ;


