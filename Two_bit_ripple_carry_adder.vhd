library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ripple_adder is
  port( A, B  : in std_logic_vector(1 downto 0);
        sum   : out std_logic_vector(2 downto 0));
      end entity ripple_adder;

--Architecture of 2-bit ripple carry adder

architecture ripple_adder_arch of ripple_adder is
  
