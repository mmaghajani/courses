----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2017 07:48:30 AM
-- Design Name: 
-- Module Name: GrayCode - RTL
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

entity GrayCode is  Port (
clk : in std_logic ;
reset : in std_logic ;
counter : out std_logic_vector(3 downto 0)
);
end GrayCode;

architecture RTL of GrayCode is
signal temp : std_logic_vector(3 downto 0);
begin

process(clk)
begin
if( clk'event and clk = '1') then
if( reset = '1' )then
temp <= "0000";
else
case temp is
when "0000" => temp <= "0001";
when "0001" => temp <= "0011";
when "0011" => temp <= "0010";
when "0010" => temp <= "0110";
when "0110" => temp <= "0111";
when "0111" => temp <= "0101";
when "0101" => temp <= "0100";
when "0100" => temp <= "1100";
when "1100" => temp <= "1101";
when "1101" => temp <= "1111";
when "1111" => temp <= "1110";
when "1110" => temp <= "1010";
when "1010" => temp <= "1011";
when "1011" => temp <= "1001";
when "1001" => temp <= "1000";
when "1000" => temp <= "0000";
when others => temp <= "0000";
end case;
end if;
end if;
end process;
counter <= temp;
end RTL;
