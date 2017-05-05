library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sqrt is Port 
( x : in  STD_LOGIC_VECTOR (31 downto 0);
          y : out  STD_LOGIC_VECTOR (31 downto 0));
end sqrt;

architecture RTL of sqrt is

	function bit2bit_sq(x: STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR is
		variable y : STD_LOGIC_VECTOR(2*x'left+1 downto 0);
	begin
		for i in x'left downto 0 loop
			y(2*i):=x(i);
			y(2*i+1):='0';
		end loop;
		return y;
	end;

begin
	process(x)
		variable x_mantissa : STD_LOGIC_VECTOR (22 downto 0);
		variable x_exponent : STD_LOGIC_VECTOR (7 downto 0);
		variable x_sign : STD_LOGIC;
		variable y_mantissa : STD_LOGIC_VECTOR (22 downto 0);
		variable y_exponent : STD_LOGIC_VECTOR (7 downto 0);
		variable y_sign : STD_LOGIC;
		
		variable ix: STD_LOGIC_VECTOR (25 downto 0);
		variable a : STD_LOGIC_VECTOR (51 downto 0);
		variable biti : STD_LOGIC_VECTOR (25 downto 0);
		variable r : STD_LOGIC_VECTOR (51 downto 0);
		variable rt : STD_LOGIC_VECTOR (52 downto 0);
		
   begin
		x_mantissa := x(22 downto 0);
		x_exponent := x(30 downto 23);
		x_sign := x(31);
		
		y_sign := '0';
		
		if (x_exponent="00000000") then 
			y_exponent := (others=>'0');
			y_mantissa := (others=>'0');
		elsif (x_exponent="11111111") then
			y_exponent := (others=>'1');
			y_mantissa := (others=>'0');
		else
			
			if (x_exponent(0)='1') then 
				y_exponent := '0' & x_exponent(7 downto 1) + 64;
				ix := "01" & x_mantissa & '0'; 
			else
				y_exponent := '0' & x_exponent(7 downto 1) + 63;
				ix := '1' & x_mantissa & "00";
			end if;			
			a := (others=>'0');
	
			biti := "10" & x"000000";
			r(51 downto 26):= ix; 
			r(25 downto 0):=(others=>'0');
			
			for i in 25 downto 0 loop
				rt := ('0' & r) - ('0' & (a or bit2bit_sq(biti))); 
				
				a := '0' & a(51 downto 1); 
				if (rt(52)='0') then 
					r := rt(51 downto 0);
					a := a or bit2bit_sq(biti); 
				end if;
				biti := '0' & biti(25 downto 1);
			end loop;
	
			a(24 downto 2) := a(24 downto 2)+a(1); 
			y_mantissa := a(24 downto 2);
			
		end if;

		y(22 downto 0) <= y_mantissa;
		y(30 downto 23) <= y_exponent;
		y(31) <= y_sign;
   end process;
end  RTL;