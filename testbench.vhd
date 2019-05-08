
library IEEE;
use IEEE.std_logic_1164.all;
entity testbench is

end testbench; 

architecture tb of testbench is
 component Boot is
        port(x, y: in std_logic_vector(4 downto 0);
             O: out std_logic_vector(9 downto 0));
    end component;
   signal multiplier,multiplicand : std_logic_vector(4 downto 0);
   signal o : std_logic_vector(9 downto 0);
   signal clk : std_logic :='0';
   begin

 
  BA1: Boot port map(multiplier,multiplicand,o);
 process
  begin
  
  
  multiplicand<="01110";
  multiplier<="11011";
    wait;
  end process;
end tb;
