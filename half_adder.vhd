library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity half_adder is
  port( A, B  : in std_logic;
        Sum   : out std_logic;
        Cout  : out std_logic);
      end entity half_adder;

--Architecture of half Adder

architecture adder_arch of half_adder is
  begin
    Sum   <= A xor B;
    Cout  <= A and B;
  end Architecture adder_arch;
  
