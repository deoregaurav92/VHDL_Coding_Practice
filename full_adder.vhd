library IEEE;
use IEEE. std_logic_1164.all;
use IEEE.numeric_std.all;

entity full_adder is
  port( A, B, Cin : in std_logic;
        Sum : out std_logic;
        Cout : out std_logic);
      end entity full_adder;

-- Architecture of full adder

architecture adder_arch of full_adder is
  begin
    Sum <= (A xor B xor Cin);
    Cout <= ((A xor B) and Cin) or (A and B);
  end architecture adder_arch;
