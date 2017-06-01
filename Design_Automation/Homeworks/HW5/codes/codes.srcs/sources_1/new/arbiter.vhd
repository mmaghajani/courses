library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity arbiter is Port (
ack0,ack1,ack2,ack3 : inout std_logic;
req0,req1,req2,req3: inout std_logic;
data0 : inout std_logic_vector(7 downto 0):="00000000";
data1 : inout std_logic_vector(7 downto 0):="00000001";
data2 : inout std_logic_vector(7 downto 0):="00000010";
data3 : inout std_logic_vector(7 downto 0):="00000011";
output : out std_logic_vector(7 downto 0));
end arbiter;

architecture Behavioral of arbiter is



begin
process(req0,req1,req2,req3) 
begin
    if(req3='1') then
        ack0 <= '0';
        ack1 <= '0';
        ack2 <= '0';
        ack3 <= '1';
    elsif(req2='1') then
     ack0 <= '0';
           ack1 <= '0';
           ack2 <= '1';
           ack3 <= '0';
    elsif(req1='1') then
     ack0 <= '0';
           ack1 <= '1';
           ack2 <= '0';
           ack3 <= '0';
    elsif(req0='1') then
    ack0 <= '1';
               ack1 <= '0';
               ack2 <= '0';
               ack3 <= '0';
    else
        ack0 <= '0';
               ack1 <= '0';
               ack2 <= '0';
               ack3 <= '0';   
    end if;
end process;

process(ack0,ack1,ack2,ack3) 
begin
    if(ack3='1') then
        output <= data3;
    elsif(ack2='1') then
        output <= data2;
    elsif(ack1='1') then
        output <= data1;
    elsif(ack0='1') then
        output <= data0;
    else
        output <= "XXXXXXXX";    
    end if;
end process;
end Behavioral;
