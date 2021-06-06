library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity half_adder_tb is
end entity half_adder_tb;

architecture tb of half_adder_tb is
  component  half_adder is
    port ( A, B  : in std_logic;
          Sum   : out std_logic;
          Cout  : out std_logic);
        end component;

        signal a_in, b_in, sum_out, cout_out : std_logic;

        begin
          DUT : half_adder port map(a_in, b_in, sum_out, cout_out);

          process
          begin
            a_in <= '0';
            b_in <= '0';
            wait for 1 ns;
            assert(sum_out = '0') report "Fail 0/0" severity error;

            a_in <= '0';
            b_in <= '1';
            wait for 1 ns;
            assert(sum_out = '1') report "Fail 0/1" severity error;

            a_in <= '1';
            b_in <= '0';
            wait for 1 ns;
            assert(sum_out = '1') report "Fail 1/0" severity error;

            a_in <= '1';
            b_in <= '1';
            wait for 1 ns;
            assert(sum_out = '0') report "Fail 1/1" severity error;

            --Clear the inputs
            a_in <= '0';
            b_in <= '0';
            assert false report "Test Done!" severity note;
            wait;
          end process;
        end architecture tb;
