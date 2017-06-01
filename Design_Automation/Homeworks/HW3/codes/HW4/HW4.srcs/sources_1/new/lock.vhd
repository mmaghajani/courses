----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/21/2017 05:36:54 PM
-- Design Name: 
-- Module Name: lock - Behavioral
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

entity lock is Port (
one , zero , enter , rst , clk :in std_logic;
unlock : out std_logic
 );
end lock;

architecture Behavioral of lock is
type state_type is ( start , d0 , d01 , d010 , d0101, d01011 , suc , fail );
signal state : state_type;

attribute fsm_encoding : string;
attribute fsm_encoding of STATE : signal is "sequential";

begin
process(clk)
begin
    if( clk'event and clk ='1')then
        if( rst = '1')then
            state <= start;
        end if;
        case state is
            when start =>
                if( rst = '1' or enter = '1' )then
                    state <= start;
                elsif one = '1' then
                    state <= fail ;
                elsif zero = '1' then
                    state <= d0;
                else
                    state <= start;
                end if;
            when d0 =>
                if( rst = '1' or enter = '1' ) then
                    state <= start;
                elsif one = '1' then
                    state <= d01;
                elsif zero = '1' then
                    state <= fail;
                else
                    state <= d0;
                end if;
            when d01 =>
                if( rst = '1' or enter = '1' ) then
                    state <= start;
                elsif one = '1' then
                    state <= fail;
                elsif zero = '1' then
                    state <= d010;
                else
                    state <= d01;
                end if;
            when d010 =>
                if( rst = '1' or enter = '1' ) then
                    state <= start;
                elsif one = '1' then
                    state <= d0101;
                elsif zero = '1' then
                    state <= fail;
                else
                    state <= d010;
                end if;
            when d0101 =>
                if( rst = '1' or enter = '1' ) then
                    state <= start;
                elsif one = '1' then
                    state <= d01011;
                elsif zero = '1' then
                    state <= fail;
                else
                    state <= d0101;
                end if;
            when d01011 =>
                if( one = '1' or zero = '1') then
                    state <= fail;
                elsif rst = '1' then
                    state <= start;
                elsif enter = '1' then
                    state <= suc;
                else
                    state <= d01011;
                end if;
            when suc =>
                if( rst = '1' or enter = '1') then
                    state <= start;
                elsif zero = '1' or one = '1' then
                    state <= fail;
                else
                    state <= suc;
                end if;
            when fail =>
                if( rst = '1' or enter = '1' ) then
                    state <= start;
                elsif one = '1' or zero = '1' then
                    state <= fail;
                else
                    state <= fail;
                end if;
        end case;
    end if;
end process;

process( state )
begin
if( state = suc ) then
    unlock <= '1';
else
    unlock <= '0';
end if;
end process;

end Behavioral;
