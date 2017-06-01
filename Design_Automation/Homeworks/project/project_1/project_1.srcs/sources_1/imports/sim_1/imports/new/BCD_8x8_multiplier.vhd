----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/29/2017 05:54:00 PM
-- Design Name: 
-- Module Name: BCD_8x8_multiplier - structural
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
use IEEE.std_logic_unsigned.ALL;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCD_8x8_multiplier is Port (
clk : in std_logic;
rst : in std_logic;
a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 : in std_logic_vector( 3 downto 0 );
b0 , b1 , b2 , b3 , b4 , b5 , b6 , b7 : in std_logic_vector( 3 downto 0 );
p0 , p1 , p2 , p3 , p4 , p5 , p6 , p7 : out std_logic_vector( 3 downto 0 );
p8 , p9 , p10 , p11 , p12 , p13 , p14 , p15 , p16 : out std_logic_vector( 3 downto 0 )
);
end BCD_8x8_multiplier;



--architecture behavioral of BCD_8x8_multiplier is
--component BCD_1x8_multiplier is Port (
--b : in std_logic_vector( 3 downto 0);
--a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 : in std_logic_vector( 3 downto 0 );
--out0 , out1 , out2 , out3 , out4 , out5 , out6 , out7 , out8 : out std_logic_vector( 3 downto 0 )
--);
--end component;

--component N_digit_BCD_adder is
--generic (N : integer := 4);
--Port (
--input1 : in std_logic_vector( 4*N-1 downto 0 );
--input2 : in std_logic_vector( 4*N-1 downto 0 );
--carry_in : in std_logic ;
--sum : out std_logic_vector( 4*N-1 downto 0 );
--carry_out : out std_logic 
--);
--end component;

--signal reg : std_logic_vector( 67 downto 0 ) := "00000000000000000000000000000000000000000000000000000000000000000000";
--signal index : integer := 0 ;

--signal b : std_logic_vector(31 downto 0);
--signal a : std_logic_vector( 31 downto 0 );
--signal product : std_logic_vector( 67 downto 0);

--signal input_mul : std_logic_vector( 3 downto 0 );
--signal garbage : std_logic ;
--signal sum : std_logic_vector( 67 downto 0 );
--signal st : std_logic_vector( 67 downto 0 );
--signal out0 , out1 , out2 , out3 , out4 , out5 , out6 , out7 , out8 : std_logic_vector( 3 downto 0);
--begin

--b <= b7&b6&b5&b4&b3&b2&b1&b0;
--a <= a7&a6&a5&a4&a3&a2&a1&a0;

--st <= "00000000000000000000000000000000"&out8&out7&out6&out5&out4&out3&out2&out1&out0;
--BCD_mul: BCD_1x8_multiplier port map ( input_mul ,
--                a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 ,
--                out0 , out1 , out2 , out3 , out4 , out5 , out6 , out7 , out8 );
--BCD_add: N_digit_BCD_adder generic map(17) port map( reg , st ,
--                '0' , sum , garbage);

--with index select input_mul <= 
--                    b7 when 0 ,
--                    b6 when 1 ,
--                    b5 when 2 ,
--                    b4 when 3 ,
--                    b3 when 4 ,
--                    b2 when 5 ,
--                    b1 when 6 ,
--                    b0 when 7 ,
--                    "0000" when others ;
--process(clk , rst)
--variable temp : std_logic_vector( 67 downto 0 ) := "00000000000000000000000000000000000000000000000000000000000000000000";
--variable i : integer := 0;
--begin
--if( rst = '1')then
--temp := "00000000000000000000000000000000000000000000000000000000000000000000";
--i := 0;
--reg <= "00000000000000000000000000000000000000000000000000000000000000000000" ;
--index <= 0 ;
--end if;
--if( clk'event and clk = '1')then
--temp := reg ;
--i := index;
--if( i < 8 )then
--    temp := sum;
--    temp := std_logic_vector(shift_left( unsigned(temp) , natural(4) ));
--    i := i+1;
--    reg <= temp ;
--    index <= i ;
--end if;

--end if;
--end process;

--p16 <= reg( 3 downto 0);
--p0 <= reg( 7 downto 4);
--p1 <= reg( 11 downto 8);
--p2 <= reg( 15 downto 12);
--p3 <= reg( 19 downto 16);
--p4 <= reg( 23 downto 20);
--p5 <= reg( 27 downto 24);
--p6 <= reg( 31 downto 28);
--p7 <= reg( 35 downto 32);
--p8 <= reg( 39 downto 36);
--p9 <= reg( 43 downto 40);
--p10 <= reg( 47 downto 44);
--p11 <= reg( 51 downto 48);
--p12 <= reg( 55 downto 52);
--p13 <= reg( 59 downto 56);
--p14 <= reg( 63 downto 60);
--p15 <= reg( 67 downto 64);

--product <= reg( 3 downto 0)&reg(67 downto 4);
--end behavioral;

architecture structural of BCD_8x8_multiplier is
component BCD_1x8_multiplier is Port (
b : in std_logic_vector( 3 downto 0);
a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 : in std_logic_vector( 3 downto 0 );
out0 , out1 , out2 , out3 , out4 , out5 , out6 , out7 , out8 : out std_logic_vector( 3 downto 0 )
);
end component;

component N_digit_BCD_adder is
generic (N : integer := 4);
Port (
input1 : in std_logic_vector( 4*N-1 downto 0 );
input2 : in std_logic_vector( 4*N-1 downto 0 );
carry_in : in std_logic ;
sum : out std_logic_vector( 4*N-1 downto 0 );
carry_out : out std_logic 
);
end component;

signal t00 , t01 , t02 , t03 , t04 , t05 , t06 , t07 , t08: std_Logic_vector( 3 downto 0);
signal t10 , t11 , t12 , t13 , t14 , t15 , t16 , t17 , t18: std_Logic_vector( 3 downto 0);
signal t20 , t21 , t22 , t23 , t24 , t25 , t26 , t27 , t28: std_Logic_vector( 3 downto 0);
signal t30 , t31 , t32 , t33 , t34 , t35 , t36 , t37 , t38: std_Logic_vector( 3 downto 0);
signal t40 , t41 , t42 , t43 , t44 , t45 , t46 , t47 , t48: std_Logic_vector( 3 downto 0);
signal t50 , t51 , t52 , t53 , t54 , t55 , t56 , t57 , t58: std_Logic_vector( 3 downto 0);
signal t60 , t61 , t62 , t63 , t64 , t65 , t66 , t67 , t68: std_Logic_vector( 3 downto 0);
signal t70 , t71 , t72 , t73 , t74 , t75 , t76 , t77 , t78: std_Logic_vector( 3 downto 0);
signal t0 , t1 , t2 , t3 , t4 , t5 , t6 , t7 , t8: std_Logic_vector( 35 downto 0);
signal sumb0b1,sumb2b3,sumb4b5,sumb6b7 : std_logic_vector( 39 downto 0);
signal carryoutb0b1 ,carryoutb2b3 , carryoutb4b5 , carryoutb6b7 , 
        carryoutb0b1b2b3 , carryoutb4b5b6b7 , carryoutoverall: std_logic;
signal sumb0b1b2b3 , sumb4b5b6b7 : std_logic_vector( 51 downto 0 );
signal sumoverall : std_logic_vector( 71 downto 0 );

signal a,b : std_logic_vector( 31 downto 0);
begin
a <= a7&a6&a5&a4&a3&a2&a1&a0;
b <= b7&b6&b5&b4&b3&b2&b1&b0;

t0 <= t08&t07&t06&t05&t04&t03&t02&t01&t00;
t1 <= t18&t17&t16&t15&t14&t13&t12&t11&t10;
t2 <= t28&t27&t26&t25&t24&t23&t22&t21&t20;
t3 <= t38&t37&t36&t35&t34&t33&t32&t31&t30;
t4 <= t48&t47&t46&t45&t44&t43&t42&t41&t40;
t5 <= t58&t57&t56&t55&t54&t53&t52&t51&t50;
t6 <= t68&t67&t66&t65&t64&t63&t62&t61&t60;
t7 <= t78&t77&t76&t75&t74&t73&t72&t71&t70;

mul0: BCD_1x8_multiplier port map ( b0 , a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 ,
        t00 , t01 , t02 , t03 , t04 , t05 , t06 , t07 , t08 );
mul1: BCD_1x8_multiplier port map ( b1 , a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 ,
        t10 , t11 , t12 , t13 , t14 , t15 , t16 , t17 , t18 );
mul2: BCD_1x8_multiplier port map ( b2 , a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 ,
        t20 , t21 , t22 , t23 , t24 , t25 , t26 , t27 , t28 );
mul3: BCD_1x8_multiplier port map ( b3 , a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 ,
        t30 , t31 , t32 , t33 , t34 , t35 , t36 , t37 , t38 );
mul4: BCD_1x8_multiplier port map ( b4 , a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 ,
        t40 , t41 , t42 , t43 , t44 , t45 , t46 , t47 , t48 );
mul5: BCD_1x8_multiplier port map ( b5 , a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 ,
        t50 , t51 , t52 , t53 , t54 , t55 , t56 , t57 , t58 );
mul6: BCD_1x8_multiplier port map ( b6 , a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 ,
        t60 , t61 , t62 , t63 , t64 , t65 , t66 , t67 , t68 );
mul7: BCD_1x8_multiplier port map ( b7 , a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 ,
        t70 , t71 , t72 , t73 , t74 , t75 , t76 , t77 , t78 );

adderb1b0: N_digit_BCD_adder generic map(10) port map( "0000"&t0 , t1&"0000" , '0' ,
             sumb0b1 , carryoutb0b1);
adderb3b2: N_digit_BCD_adder generic map(10) port map( "0000"&t2 , t3&"0000" , '0' ,
             sumb2b3 , carryoutb2b3);
adderb5b4: N_digit_BCD_adder generic map(10) port map( "0000"&t4 , t5&"0000" , '0' ,
             sumb4b5 , carryoutb4b5);
adderb7b6: N_digit_BCD_adder generic map(10) port map( "0000"&t6 , t7&"0000" , '0' ,
             sumb6b7 , carryoutb6b7);
             
adderb3b2b1b0: N_digit_BCD_adder generic map(13) port map( "00000000000"&carryoutb0b1&sumb0b1 ,
                "000"&carryoutb2b3&sumb2b3&"00000000" , '0' , sumb0b1b2b3 , carryoutb0b1b2b3);
adderb7b6b5b4: N_digit_BCD_adder generic map(13) port map( "00000000000"&carryoutb4b5&sumb4b5 ,
                "000"&carryoutb4b5&sumb6b7&"00000000" , '0' , sumb4b5b6b7 , carryoutb4b5b6b7);

adderoverall: N_digit_BCD_adder generic map(18) port map( "0000000000000000000"&carryoutb0b1b2b3&sumb0b1b2b3 ,
                "000"&carryoutb4b5b6b7&sumb4b5b6b7&"0000000000000000" , '0' , sumoverall , carryoutoverall);
p0 <= sumoverall( 3 downto 0);
p1 <= sumoverall( 7 downto 4);
p2 <= sumoverall( 11 downto 8);
p3 <= sumoverall( 15 downto 12);
p4 <= sumoverall( 19 downto 16);
p5 <= sumoverall( 23 downto 20);
p6 <= sumoverall( 27 downto 24);
p7 <= sumoverall( 31 downto 28);
p8 <= sumoverall( 35 downto 32);
p9 <= sumoverall( 39 downto 36);
p10 <= sumoverall( 43 downto 40);
p11 <= sumoverall( 47 downto 44);
p12 <= sumoverall( 51 downto 48);
p13 <= sumoverall( 55 downto 52);
p14 <= sumoverall( 59 downto 56);
p15 <= sumoverall( 63 downto 60);
p16 <= sumoverall( 67 downto 64);

end structural;
