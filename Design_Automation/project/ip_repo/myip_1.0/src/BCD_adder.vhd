library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BCD_adder is
    port( input1,input2  : in  std_logic_vector(3 downto 0);
       carry_in : in std_logic;
        sum_out  : out  std_logic_vector(3 downto 0); 
        carry : out std_logic  
    );
end BCD_adder;

architecture arch of BCD_adder is

begin

process(input1,input2,carry_in)
variable sum_temp : unsigned(4 downto 0);
variable a,b : unsigned( 3 downto 0 );
variable sum : unsigned( 3 downto 0 );
begin
    a := unsigned(input1);
    b := unsigned(input2);
    sum_temp := ('0' & a) + ('0' & b) + ("0000" & carry_in); 
    if(sum_temp > 9) then
        carry <= '1';
        sum := resize((sum_temp + "00110"),4);
    else
        carry <= '0';
        sum := sum_temp(3 downto 0);
    end if; 
    sum_out <= std_logic_vector(sum);
end process;   


end architecture;