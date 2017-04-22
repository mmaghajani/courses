----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2017 12:26:10 PM
-- Design Name: 
-- Module Name: counter - Behavioral
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

entity counter is Port (
is_top_down : in std_logic ;
reset : in std_logic ;
clk : in std_logic ;
output : out std_logic_vector( 4 downto 0)
);
end counter;

architecture Behavioral of counter is
signal temp : std_logic_vector( 4 downto 0 ) ;
begin
process(clk)
begin
    if( clk'event and clk = '1')then
        if( reset = '1' )then
           temp <= "00000" ;
        else
            if( is_top_down = '1' ) then
               case temp is
                                when "00001" => temp <= "00000";
                                when "00010" => temp <= "00001";
                                when "00011" => temp <= "00010";
                                when "00100" => temp <= "00011";
                                when "00101" => temp <= "00100";
                                when "00110" => temp <= "00101";
                                when "00111" => temp <= "00110";
                                when "01000" => temp <= "00111";
                                when "01001" => temp <= "01000";
                                when "01010" => temp <= "01001";
                                when "01011" => temp <= "01010";
                                when "01100" => temp <= "01011";
                                when "01101" => temp <= "01100";
                                when "01110" => temp <= "01101";
                                when "01111" => temp <= "01110";
                                when "10000" => temp <= "01111";
                                when "10001" => temp <= "10000";
                                when "10010" => temp <= "10001"; 
                                when "00000" => temp <= "10010";
                                when others => temp <= "00000";
                            end case;
            else
                case temp is
                    when "10010" => temp <= "00000";
                    when "00000" => temp <= "00001";
                    when "00001" => temp <= "00010";
                    when "00010" => temp <= "00011";
                    when "00011" => temp <= "00100";
                    when "00100" => temp <= "00101";
                    when "00101" => temp <= "00110";
                    when "00110" => temp <= "00111";
                    when "00111" => temp <= "01000";
                    when "01000" => temp <= "01001";
                    when "01001" => temp <= "01010";
                    when "01010" => temp <= "01011";
                    when "01011" => temp <= "01100";
                    when "01100" => temp <= "01101";
                    when "01101" => temp <= "01110";
                    when "01110" => temp <= "01111";
                    when "01111" => temp <= "10000";
                    when "10000" => temp <= "10001"; 
                    when "10001" => temp <= "10010";
                    when others => temp <= "00000";
                end case;
            end if;                 
        end if;
    end if;
end process;
output <= temp ;
end Behavioral;
