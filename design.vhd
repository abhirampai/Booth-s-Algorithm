library IEEE;
use IEEE.std_logic_1164.all;
library ieee;
    use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;
    use ieee.std_logic_unsigned.all;
   
    entity Boot is
        port(x, y: in std_logic_vector(4 downto 0);
             O: out std_logic_vector(9 downto 0));
    end Boot;
   
    architecture boot of Boot is
        begin
           
            process(x, y)
             variable a: std_logic_vector(10 downto 0);
             variable s,p : std_logic_vector(4 downto 0);
             variable i:integer;


                begin
                    a := "00000000000";
                    s := y;
                    a(5 downto 1) := x;
                   
                    for i in 0 to 4 loop
                       if(a(1) = '1' and a(0) = '0') then
                          p := a(10 downto 6);
                          a(10 downto 6) := (p - s);
                         
                       elsif(a(1) = '0' and a(0) = '1') then
                          p := a(10 downto 6);
                          a(10 downto 6) := (p + s);
                         
                       end if;
                       a(9 downto 0):=a(10 downto 1);
      					               
                    end loop;
                    
                    O(9 downto 0) <= a(10 downto 1);
      
                   
                end process;
               
            end boot;
