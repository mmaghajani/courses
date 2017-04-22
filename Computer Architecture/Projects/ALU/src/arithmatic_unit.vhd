library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all ;

entity arithmatic_unit is port(
  clk : in std_logic ;
  a : in std_logic_vector( 7 downto 0 ) ;
  b : in std_logic_vector( 7 downto 0 ) ;
  adder_controller : in std_logic ;
  subtractor_controller : in std_logic ;
  multiplier_controller : in std_logic ;
  divider_controller : in std_logic ;
  output : out std_logic_vector( 7 downto 0 ) ;
  zero_flag : out std_logic;
  avf_flag : out std_logic ;
  sign_flag : out std_logic
  );
end entity ;

architecture gate_level of arithmatic_unit is 
signal temp_in : std_logic_vector( 7 downto 0 ) ;
signal temp_out : std_logic_vector( 7 downto 0 ) ;

component adder is port (
  a : in std_logic_vector( 7 downto 0 ) ;
  b : in std_logic_vector( 7 downto 0 ) ;
  output : out std_logic_vector( 7 downto 0 ) ;
  avf_flag : out std_logic ;
  zero_flag : out std_logic ;
  sign_flag : out std_logic 
  );
end component ;

component subtractor is port (
  a : in std_logic_vector( 7 downto 0 ) ;
  b : in std_logic_vector( 7 downto 0 ) ;
  output : out std_logic_vector( 7 downto 0 ) ;
  avf_flag : out std_logic ;
  zero_flag : out std_logic ;
  sign_flag : out std_logic 
  );
end component ;

component multiplier is port (
  clk : in std_logic ;
  a : in std_logic_vector( 7 downto 0 ) ;
  b : in std_logic_vector( 7 downto 0 ) ;
  do : in std_logic ;
  output : out std_logic_vector( 7 downto 0 ) ;
  avf_flag : out std_logic ;
  zero_flag : out std_logic ;
  sign_flag : out std_logic 
);
end component ;

component divider is port (
  clk : in std_logic ;
  a : in std_logic_vector( 7 downto 0 ) ;
  b : in std_logic_vector( 7 downto 0 ) ;
  do : in std_logic ;
  output : out std_logic_vector( 7 downto 0 ) ;
  avf_flag : out std_logic ;
  zero_flag : out std_logic ;
  sign_flag : out std_logic
);
end component ;

signal adder_output : std_logic_vector( 7 downto 0 ) ;
signal subtractor_output : std_logic_vector( 7 downto 0 ) ;
signal multiplier_output : std_logic_vector( 7 downto 0 ) ;
signal divider_output : std_logic_vector( 7 downto 0 ) ;

signal zero_flag_adder : std_logic ;
signal zero_flag_subtractor : std_logic ;
signal zero_flag_multiplier : std_logic ;
signal zero_flag_divider : std_logic ;

signal avf_flag_adder : std_logic ;
signal avf_flag_subtractor : std_logic ;
signal avf_flag_multiplier : std_logic ;
signal avf_flag_divider : std_logic ;

signal sign_flag_adder : std_logic ;
signal sign_flag_subtractor : std_logic ;
signal sign_flag_multiplier : std_logic ;
signal sign_flag_divider : std_logic ;

signal do : std_logic ;
signal controller : std_logic_vector( 3 downto 0 ) ;
begin
  make_add : adder port map ( a , b , adder_output , avf_flag_adder , zero_flag_adder , sign_flag_adder ) ;
  make_subtract: subtractor port map ( a , b , subtractor_output , avf_flag_subtractor , zero_flag_subtractor , sign_flag_subtractor ) ;
  make_product : multiplier port map ( clk , a , b , multiplier_controller , multiplier_output ,
      avf_flag_multiplier , zero_flag_multiplier , sign_flag_multiplier ) ;
  make_division : divider port map ( clk , a , b , divider_controller , divider_output , 
      avf_flag_divider , zero_flag_divider , sign_flag_divider ) ;
  
  controller <= adder_controller & subtractor_controller & multiplier_controller & divider_controller ;
  
  with controller select output <=
    adder_output when "1000" ,
    subtractor_output when "0100" ,
    multiplier_output when "0010" ,
    divider_output when "0001" ,
    "XXXXXXXX" when others ;
    
  with controller select zero_flag <=
    zero_flag_adder when "1000" ,
    zero_flag_subtractor when "0100" ,
    zero_flag_multiplier when "0010" ,
    zero_flag_divider when "0001" ,
    'X' when others ;
    
  with controller select avf_flag <=
    avf_flag_adder when "1000" ,
    avf_flag_subtractor when "0100" ,
    avf_flag_multiplier when "0010" ,
    avf_flag_divider when "0001" ,
    'X' when others ;
  
  with controller select sign_flag <=
    sign_flag_adder when "1000" ,
    sign_flag_subtractor when "0100" ,
    sign_flag_multiplier when "0010" ,
    sign_flag_divider when "0001" ,
    'X' when others ;
    
end architecture ;

