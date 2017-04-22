library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all ;

entity counter is port(
  clk : in std_logic ;
  reset : in std_logic ;
  upward : in std_logic ;
  output: out std_logic_vector(3 downto 0 )
  ) ;
end counter ;

architecture data_flow of  counter is 
 signal data : std_logic_vector(3 downto 0 ) ;
 signal low_clk : std_logic ;
 
 begin
   process(clk)
     variable counter : integer := 0 ;
     begin
       if( clk'event and clk = '1' )then
        counter := counter + 1 ;
        if( counter = 24000000 )then
          low_clk <= '1' ;
          counter := 0 ;
        else
            low_clk <= '0' ;
        end if ;
       end if ;
     end process ;
     
   process(low_clk)
   begin
    if ( low_clk'event and low_clk = '1' )then
      if( reset = '1')then
        data <= "0000" ;
      else
        if( upward = '1')then
          data <= data + '1' ;
        else
          data <= data - '1' ;
        end if ; 
      end if ;
    end if ;
   end process ;
   
   output <= data ;
end data_flow ;