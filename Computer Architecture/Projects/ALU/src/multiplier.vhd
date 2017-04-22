library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all ;

entity multiplier is port (
  clk : in std_logic ;
  a : in std_logic_vector( 7 downto 0 ) ;
  b : in std_logic_vector( 7 downto 0 ) ;
  do : in std_logic ;
  output : out std_logic_vector( 7 downto 0 ) ;
  avf_flag : out std_logic ;
  zero_flag : out std_logic ;
  sign_flag : out std_logic 
);
end entity ;
  
architecture gate_level of multiplier is 

component adder is port (
  a : in std_logic_vector( 7 downto 0 ) ;
  b : in std_logic_vector( 7 downto 0 ) ;
  output : out std_logic_vector( 7 downto 0 ) ;
  avf_flag : out std_logic ;
  zero_flag : out std_logic ;
  sign_flag : out std_logic 
  );
end component ;

signal result_temp : std_logic_vector( 7 downto 0 ) ;
signal avf_temp : std_logic ;
signal zero_temp : std_logic ;
signal sign_temp : std_logic ;
signal f_temp : std_logic_vector( 7 downto 0 ) ;

begin
  sign_flag <= '0' ;
  avf_flag <= '0' ;
  
  make_add : adder port map ( a , f_temp , result_temp , avf_temp , zero_temp , sign_temp ) ;
    
  process( clk )
    variable b_temp : std_logic_vector( 7 downto 0 ) ;
    variable f : std_logic_vector( 7 downto 0 ) := "00000000" ;
    variable sc : integer := -1 ;
    variable e : std_logic := '0' ;
    begin
      output <= f ;
      f_temp <= f ;
      zero_flag <= not( f(0) or f(1) or f(2) or f(3) or f(4) or f(5) or f(6) or f(7) ) ;
      if( clk'event and clk = '1' )then
        if( sc >= 0 and do = '1' )then
          if( b_temp(0) = '1' )then
            f := result_temp ;
            e := avf_temp ;          
          end if ;
        
          b_temp := f(0) & b_temp( 7 downto 1 ) ;
          f := e & f( 7 downto 1 ) ;
          e := '0' ;
          sc := sc - 1 ;
        elsif( do = '0' )then
          b_temp := b ;
          sc := 7 ;
          f := "00000000" ;
          e := '0' ;
        end if ;
      end if ;
    end process ;
end architecture ;