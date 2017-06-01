----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/29/2017 11:14:31 AM
-- Design Name: 
-- Module Name: sorting_networks - Behavioral
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

library ieee;
use ieee.std_logic_1164.all;

package pkg is
  type array_inout is array (natural range <>) of std_logic_vector(7 downto 0);
end package;

package body pkg is
end package body;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.pkg.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sorting_networks is
generic ( N : integer := 10 );
Port ( 
a : in array_inout( 1 to N );
b : out array_inout( 1 to N )
);
end sorting_networks;

architecture Behavioral of sorting_networks is
component comprator is port (
  a : in std_logic_vector( 7 downto 0 ) ;
  b : in std_logic_vector( 7 downto 0 ) ;
  out1 : out std_logic_vector( 7 downto 0 );
  out2 : out std_logic_vector( 7 downto 0 )
  );
end component;

signal temp1 : array_inout ( 1 to N * (N-1) / 2);
signal temp2 : array_inout ( 1 to N * (N-1) / 2);
begin
temp1(1) <= a(1);

Assign: for I in 1 to N-1 generate
begin
    temp2(I) <= a( I+1);
end generate;

F: for I in 1 to N-1 generate
begin
G: for J in 1 to N-I generate
begin
      if_G0: if N-I = 1 generate
        comp: comprator port map(temp1(((2*N-I)*(I-1)/2)+J), temp2(((2*N-I)*(I-1)/2)+J),b(1) , b(2));        
      end generate if_G0;
      if_G1: if J = 1 and N-I /= 1 generate
        comp: comprator port map(temp1(((2*N-I)*(I-1)/2)+J), temp2(((2*N-I)*(I-1)/2)+J), temp1(((2*N-I)*(I-1)/2)+J+N-I), temp1(((2*N-I)*(I-1)/2)+J+1) );
      end generate if_G1;
      if_G2: if J = N-I and J /= 1 generate
       comp: comprator port map(temp1(((2*N-I)*(I-1)/2)+J), temp2(((2*N-I)*(I-1)/2)+J), temp2(((2*N-I)*(I-1)/2)+J+N-I-1), b(N-I+1) ); 
      end generate if_G2;
      if_G3: if J /= N-I and J /= 1 generate
        comp: comprator port map(temp1(((2*N-I)*(I-1)/2)+J), temp2(((2*N-I)*(I-1)/2)+J), temp2(((2*N-I)*(I-1)/2)+J+N-I-1), temp1(((2*N-I)*(I-1)/2)+J+1) );
      end generate if_G3;
   end generate G;
end generate F;

end Behavioral;
