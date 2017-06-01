----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2017 03:21:26 PM
-- Design Name: 
-- Module Name: controller - Behavioral
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

entity controller is Port (
input : in std_logic_vector( 1 downto 0 );
clk,rst : in std_logic;
output : out std_logic );
end controller;




architecture Medvedov of controller is
signal state : std_logic_vector( 2 downto 0 );

begin
process(clk)
begin
if( rst = '1' )then
    state <= "000";
end if;

case state is
when "000" =>
output <= state(0);
if( input = "00" or input = "11")then
    state <= "000";
elsif( input = "10") then
    state <= "100";
elsif( input = "01" ) then
    state <= "010";
else
    state <= "000";
end if;
when "001" =>
output <= state(0);
if( input = "00" or input = "11" )then
    state <= "001";
elsif( input = "01")then
    state <= "011";
elsif( input = "10")then
    state <= "101";
else
    state <= "001";
end if;
when "010" =>
output <= state(0);
if( input = "00" or input = "11")then
    state <= "000";
elsif( input = "10" )then
    state <= "100";
elsif( input = "01" )then
    state <= "010";
else
    state <= "010";
end if;
when "011" =>
output <= state(0);
if( input = "01" ) then
    state <= "011";
elsif( input = "00" ) then
    state <= "001" ;
elsif( input = "11" ) then
    state <= "000";
elsif( input = "10" ) then
    state <= "101";
else
    state <= "011";
end if;
when "100" =>
output <= state(0);
if( input = "01" ) then
    state <= "011";
elsif( input = "10" ) then
    state <= "100";
elsif( input = "11" ) then
    state <= "001";
elsif( input ="00" ) then
    state <= "000";
else
    state <= "100";
end if;
when "101" =>
output <= state(0);
if( input = "00" or input = "11" ) then
    state <= "001";
elsif( input = "10" ) then
    state <= "101";
elsif( input = "01" ) then
    state <= "010";
else
    state <= "101";
end if;
when others =>
    state <= "000";
end case ;
end process;

end Medvedov;

architecture Behavioral of controller is
type State_type is ( s0 , s1 , s2 , s3 , s4 , s5 );
signal state : State_type;
attribute fsm_encoding : string;
attribute fsm_encoding of STATE : signal is "sequential";

begin
process(clk)
begin
if( rst = '1' )then
    state <= s0;
end if;

case state is
when s0 =>
output <= '0';
if( input = "00" or input = "11")then
    state <= s0;
elsif( input = "10") then
    state <= s4;
elsif( input = "01" ) then
    state <= s2;
else
    state <= s0;
end if;
when s1 =>
output <= '1';
if( input = "00" or input = "11" )then
    state <= s1;
elsif( input = "01")then
    state <= s3;
elsif( input = "10")then
    state <= s5;
else
    state <= s1;
end if;
when s2 =>
output <= '0';
if( input = "00" or input = "11")then
    state <= s0;
elsif( input = "10" )then
    state <= s4;
elsif( input = "01" )then
    state <= s2;
else
    state <= s2;
end if;
when s3 =>
output <= '1';
if( input = "01" ) then
    state <= s3;
elsif( input = "00" ) then
    state <= s1 ;
elsif( input = "11" ) then
    state <= s0;
elsif( input = "10" ) then
    state <= s5;
else
    state <= s3;
end if;
when s4 =>
output <= '0';
if( input = "01" ) then
    state <= s3;
elsif( input = "10" ) then
    state <= s4;
elsif( input = "11" ) then
    state <= s1;
elsif( input ="00" ) then
    state <= s0;
else
    state <= s4;
end if;
when s5 =>
output <= '1';
if( input = "00" or input = "11" ) then
    state <= s1;
elsif( input = "10" ) then
    state <= s5;
elsif( input = "01" ) then
    state <= s2;
else
    state <= s5;
end if;
end case ;
end process;

end Behavioral;