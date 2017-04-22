library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all ;

entity control_unit is port (
  clk : in std_logic ;
  a : in std_logic_vector( 7 downto 0 ) ;
  b : in std_logic_vector( 7 downto 0 ) ;
  selector : in std_logic_vector( 2 downto 0 ) ;
  output : out std_logic_vector( 7 downto 0 ) ;
  zero_flag : out std_logic ;
  sign_flag : out std_logic ;
  avf_flag : out std_logic 
  );
end entity ;

architecture gate_level of control_unit is
  
component decoder is port (
  a : in std_logic ;
  b : in std_logic ;
  c : in std_logic ;
  outs : out std_logic_vector( 7 downto 0 ) 
);
end component ;

component arithmatic_unit is port(
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
end component ;

component logic_unit is port(
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
end component  ;

signal controller : std_logic_vector( 7 downto 0  ) ;
signal arithmatic_output : std_logic_vector( 7 downto 0 ) ;
signal arithmatic_zero_flag , arithmatic_avf_flag , arithmatic_sign_flag : std_logic ;
signal logic_output : std_logic_vector( 7 downto 0 ) ;
signal logic_zero_flag , logic_avf_flag , logic_sign_flag : std_logic ;

begin
  decode : decoder port map ( selector(2) , selector(1) , selector(0) , controller ) ;
  arithmatic : arithmatic_unit port map ( clk , a , b , controller(0) , controller(1) , controller(2) , controller(3) ,
    arithmatic_output , arithmatic_zero_flag , arithmatic_avf_flag , arithmatic_sign_flag ) ;
  logic : logic_unit port map ( a , b , controller(4) , controller(5) , controller(6) , controller(7) ,
    logic_output , logic_zero_flag , logic_avf_flag , logic_sign_flag ) ;  
    
  with selector(2) select output <= 
    arithmatic_output when '0' ,
    logic_output when '1' ,
    "XXXXXXXX" when others ;
    
  with selector(2) select zero_flag <=
    arithmatic_zero_flag when '0' ,
    logic_zero_flag when '1' ,
    'X' when others ;
    
  with selector(2) select avf_flag <=
    arithmatic_avf_flag when '0' ,
    logic_avf_flag when '1' ,
    'X' when others ;
    
  with selector(2) select sign_flag <=
    arithmatic_sign_flag when '0' ,
    logic_sign_flag when '1' ,
    'X' when others ;
    
end architecture ;