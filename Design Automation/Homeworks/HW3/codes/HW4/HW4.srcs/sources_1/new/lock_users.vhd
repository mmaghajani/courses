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

entity lock_users is Port (
one , zero , enter , rst , clk :in std_logic;
unlock : out std_logic
 );
end lock_users;

architecture Behavioral of lock_users is
type state_type is ( start , get_user_id , get_pass , get_new_pass , insert_id, insert_pass , suc , fail );
signal state : state_type;


attribute fsm_encoding : string;
attribute fsm_encoding of STATE : signal is "sequential";

begin
process(clk)

variable user_id1 : std_logic_vector( 1 downto 0 ) := "01";
variable user_id2 : std_logic_vector( 1 downto 0 ) := "10";
variable user_id3 : std_logic_vector( 1 downto 0 ) := "11";

variable temp_id : std_logic_vector( 0 to 1 );
variable index_id : integer range 0 to 1 := 0;

variable pass1,pass2,pass3 : std_logic_vector( 7 downto 0 );
variable temp_pass : std_logic_vector( 0 to 7 );
variable temp_new_pass : std_logic_vector( 0 to 7 );
variable index_pass : integer range 0 to 7 := 0;
variable index_new_pass : integer range 0 to 7 := 0;
begin
    if( clk'event and clk ='1')then
        if( rst = '1')then
            state <= start;
        end if;
        case state is
            when start =>
                if( one = '1' or zero = '1' )then
                    state <= insert_id;
                elsif rst = '1' then
                    state <= start ;
                elsif enter = '1' then
                    state <= get_user_id;
                else
                    state <= start;
                end if;
            when get_user_id =>
                if( zero = '1' or one = '1' ) then
                    if( zero = '1')then
                        temp_id(index_id) := '0';
                    else
                        temp_id(index_id) := '1';
                    end if;
                    index_id := (index_id + 1) mod 2;
                    state <= get_user_id;
                elsif enter = '1' then
                    state <= get_pass;
                elsif rst = '1' then
                    state <= start;
                else
                    state <= get_user_id;
                end if;
            when get_pass =>
                if( one = '1' or zero = '1' ) then
                    if( zero = '1')then
                        temp_pass(index_pass) := '0';
                    else
                        temp_pass(index_pass) := '1';
                    end if;
                    index_pass := (index_pass + 1) mod 8;
                    state <= get_pass;
                elsif enter = '1' then
                    state <= get_new_pass;
                elsif rst = '1' then
                    state <= start;
                else
                    state <= get_pass;
                end if;
            when get_new_pass =>
                if( one = '1' or zero = '1' ) then
                    if( zero = '1' )then
                        temp_new_pass(index_new_pass) := '0';
                    else
                        temp_new_pass(index_new_pass) := '1';
                    end if;
                    index_new_pass := (index_new_pass + 1) mod 8;
                    state <= get_new_pass;
                elsif enter = '1' then
                    if( pass1 = temp_pass)then
                        case temp_id is
                            when "01" =>
                                pass1 := temp_new_pass;
                            when "10" =>
                                pass2 := temp_new_pass;
                            when "11" =>
                                pass3 := temp_new_pass;
                            when others =>
                        end case;
                    end if;
                    state <= start;
                elsif rst = '1' then
                    state <= start;
                else
                    state <= get_new_pass;
                end if;
            when insert_id =>
                if( one = '1' or zero = '1' ) then
                    if( zero = '1')then
                        temp_id(index_id) := '0';
                    else
                        temp_id(index_id) := '1';
                    end if;
                    index_id := (index_id + 1) mod 2;
                    state <= insert_id;
                elsif enter = '1' then
                    state <= insert_pass;
                elsif rst = '1' then
                    state <= start;
                else
                    state <= insert_id;
                end if;
            when insert_pass =>
                if( one = '1' or zero = '1') then
                    if( zero = '1')then
                        temp_pass(index_pass) := '0';
                    else
                        temp_pass(index_pass) := '1';
                    end if;
                    index_pass := (index_pass + 1) mod 8;
                    state <= insert_pass;
                elsif rst = '1' then
                    state <= start;
                elsif enter = '1' then
                    case temp_id is
                    when "01" =>
                        if( pass1 = temp_pass)then
                            state <= suc;
                        else
                            state <= fail;
                        end if;
                    when "10" =>
                        if( pass2 = temp_pass)then
                            state <= suc;
                        else
                            state <= fail;
                        end if;
                    when "11" =>
                        if( pass3 = temp_pass)then
                            state <= suc;
                        else
                            state <= fail;
                        end if;
                    when others =>
                    end case;
                else
                    state <= insert_pass;
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
