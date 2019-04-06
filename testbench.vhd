library IEEE;
use IEEE.std_logic_1164.all;
entity testbench is

end testbench; 

architecture tb of testbench is
 component Boot is
        port(x, y: in std_logic_vector(4 downto 0);
             O: out std_logic_vector(9 downto 0));
    end component;
   signal s,p : std_logic_vector(4 downto 0);
   signal o : std_logic_vector(9 downto 0);
   signal clk : std_logic :='0';
   begin

 
  BA1: Boot port map(s,p,o);
 process
  begin
  
  
  s<="10001";
  p<="00001";
    wait;
  end process;
end tb;
