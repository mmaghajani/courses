----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2017 02:07:57 PM
-- Design Name: 
-- Module Name: chronometer - Behavioral
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

entity chronometer is Port (
time_in : in integer ;
reset : in std_logic;
pause : in std_logic;
resume : in std_logic;
clk : in std_logic;
timer : inout integer
);
end chronometer;

architecture Behavioral of chronometer is
type State_type IS (start , counting);  
signal state : state_type ;
begin
process(clk)
begin
    if( reset = '1' )then
        state <= start ;
    end if;
    if( clk'event and clk = '1')then
        case state is
            when start =>
                timer <= time_in;
                if( resume = '1' )then
                    state <= counting ;
                end if;
            when counting =>
                if( reset = '1' )then
                    state <= start;
                end if;
                
                if( resume = '1') then
                    if( pause = '1' )then
                                    timer <= timer;
                                    else
                                    timer <= timer-1;
                                end if;
                else
                    if( pause = '1' )then
                                    timer <= timer;
                                    else
                                    timer <= timer-1;
                                end if;
                end if;
            when others =>
                state <= start;
        end case;
    end if;
end process;

end Behavioral;
