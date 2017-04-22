library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all ;

entity divider is port (
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

architecture data_flow of divider is
begin
  sign_flag <= '0' ;
  process( clk )
    variable sc : integer := -1 ;
    variable r : std_logic_vector( 3 downto 0 ) ;
    variable q : std_logic_vector( 3 downto 0 ) ;
    variable e : std_logic ;
    variable temp : std_logic_vector( 4 downto 0 ) ;
  begin
    output <= q & r ;
    zero_flag <= not( q(0) or q(1) or q(2) or q(3) or r(3) or r(2) or r(1) or r(0) ) ;
    if( clk'event and clk = '1' ) then
      if( sc > 0 and do = '1' )then
        temp(4) := not( r(3) ) ;
        r := r( 2 downto 0 ) & q(3) ;
        q := q( 2 downto 0 ) & '0' ;
        if( temp(4) = '1')then
          temp := ('0'&r) -( '0'&b( 3 downto 0 ));
          if( temp(4) = '1')then
            q(0) := '0' ;
          else 
            q(0) := '1' ;
            r := temp( 3 downto 0 ) ;
          end if ;
        else
          temp := ('0'&r) -( '0'&b( 3 downto 0 ));
          q(0) := '1' ;
          r := temp(3 downto 0 ) ;
        end if ;
        
        sc := sc - 1 ;
        
      elsif( do = '0' )then
        r := a( 7 downto 4 ) ;
        q := a( 3 downto 0 ) ;
        temp := ('0'&r) -( '0'&b( 3 downto 0 ));
        sc := 4 ;
        
        if( temp(4) = '0' )then
          avf_flag <= '1' ;
          sc := -1 ;
        else
          avf_flag <= '0' ;
        end if ;
        
      end if ;
    end if ;
  end process ;
end architecture ;



