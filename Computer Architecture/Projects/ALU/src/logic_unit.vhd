library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all ;

entity logic_unit is port(
  a : in std_logic_vector( 7 downto 0 ) ;
  b : in std_logic_vector( 7 downto 0 ) ;
  and_controller : in std_logic ;
  or_controller : in std_logic ;
  shift_to_left_controller : in std_logic ;
  shift_to_right_controller : in std_logic ;
  output : out std_logic_vector( 7 downto 0 ) ;
  zero_flag : out std_logic;
  avf_flag : out std_logic ;
  sign_flag : out std_logic
  );
end entity ;

architecture gate_level of logic_unit is 
signal temp_in : std_logic_vector( 7 downto 0 ) ;
signal temp_out : std_logic_vector( 7 downto 0 ) ;

component and_maker is port(
  a : in std_logic_vector( 7 downto 0 ) ;
  b : in std_logic_vector( 7 downto 0 ) ;
  output : out std_logic_vector( 7 downto 0 ) ;
  zero_flag : out std_logic;
  avf_flag : out std_logic ;
  sign_flag : out std_logic
  );
end component ;

component or_maker is port(
  a : in std_logic_vector( 7 downto 0 ) ;
  b : in std_logic_vector( 7 downto 0 ) ;
  output : out std_logic_vector( 7 downto 0 ) ;
  zero_flag : out std_logic;
  avf_flag : out std_logic ;
  sign_flag : out std_logic
  );
end component ;

component shift_to_left is port(
  a : in std_logic_vector( 7 downto 0 ) ;
  output : out std_logic_vector( 7 downto 0 ) ;
  zero_flag : out std_logic;
  avf_flag : out std_logic ;
  sign_flag : out std_logic
  );
end component ;

component shift_to_right is port(
  a : in std_logic_vector( 7 downto 0 ) ;
  output : out std_logic_vector( 7 downto 0 ) ;
  zero_flag : out std_logic;
  avf_flag : out std_logic ;
  sign_flag : out std_logic
  );
end component ;

signal and_output : std_logic_vector( 7 downto 0 ) ;
signal or_output : std_logic_vector( 7 downto 0 ) ;
signal shift_to_left_output : std_logic_vector( 7 downto 0 ) ;
signal shift_to_right_output : std_logic_vector( 7 downto 0 ) ;

signal zero_flag_and : std_logic ;
signal zero_flag_or : std_logic ;
signal zero_flag_shift_right : std_logic ;
signal zero_flag_shift_left : std_logic ;

signal avf_flag_and : std_logic ;
signal avf_flag_or : std_logic ;
signal avf_flag_shift_right : std_logic ;
signal avf_flag_shift_left : std_logic ;

signal sign_flag_and : std_logic ;
signal sign_flag_or : std_logic ;
signal sign_flag_shift_right : std_logic ;
signal sign_flag_shift_left : std_logic ;

signal controller : std_logic_vector( 3 downto 0 ) ;
begin
  and_make : and_maker port map ( a , b , and_output , zero_flag_and , avf_flag_and , sign_flag_and ) ;
  or_make : or_maker port map ( a , b , or_output , zero_flag_or , avf_flag_or , sign_flag_or ) ;
  left_shift : shift_to_left port map ( a , shift_to_left_output , zero_flag_shift_left , avf_flag_shift_left
   , sign_flag_shift_left ) ;
  right_shift : shift_to_right port map ( a , shift_to_right_output , zero_flag_shift_right , avf_flag_shift_right
   , sign_flag_shift_right ) ;
  
  controller <= and_controller & or_controller & shift_to_left_controller & shift_to_right_controller ;
  
  with controller select output <=
    and_output when "1000" ,
    or_output when "0100" ,
    shift_to_left_output when "0010" ,
    shift_to_right_output when "0001" ,
    "XXXXXXXX" when others ;
    
  with controller select zero_flag <=
    zero_flag_and when "1000" ,
    zero_flag_or when "0100" ,
    zero_flag_shift_left when "0010" ,
    zero_flag_shift_right when "0001" ,
    'X' when others ;
    
  with controller select avf_flag <=
    avf_flag_and when "1000" ,
    avf_flag_or when "0100" ,
    avf_flag_shift_left when "0010" ,
    avf_flag_shift_right when "0001" ,
    'X' when others ;
  
  with controller select sign_flag <=
    sign_flag_and when "1000" ,
    sign_flag_or when "0100" ,
    sign_flag_shift_left when "0010" ,
    sign_flag_shift_right when "0001" ,
    'X' when others ;
    
end architecture ;