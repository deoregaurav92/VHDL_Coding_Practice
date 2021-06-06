library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity full_adder_tb is
end entity full_adder_tb;

architecture tb of full_adder_tb is
  component  full_adder is
     port( A, B, Cin : in std_logic;
          Sum : out std_logic;
          Cout : out std_logic);
        end component;

signal a_in, b_in, cin_in, sum_out, cout_out : std_logic;

begin

  DUT: full_adder port map(a_in, b_in, cin_in, sum_out, cout_out);
  process
  begin

    a_in <= '0';
    b_in <= '0';
    cin_in <= '0';
    wait for 1 ns;
    assert(sum_out = '0' and cout_out = '0') report "Fail test 0/0/0" severity error;

    a_in <= '1';
    b_in <= '0';
    cin_in <= '0';
    wait for 1 ns;
    assert(sum_out = '1' and cout_out = '0') report "Fail test 1/0/0" severity error;

    a_in <= '1';
    b_in <= '1';
    cin_in <= '0';
    wait for 1 ns;
    assert(sum_out = '0' and cout_out = '1') report "Fail test 1/1/0" severity error;

    a_in <= '1';
    b_in <= '1';
    cin_in <= '1';
    wait for 1 ns;
    assert(sum_out = '1' and cout_out = '1') report "Fail test 1/1/1" severity error;

    -- Clear out the inputs
    a_in <= '0';
    b_in <= '0';
    cin_in <= '0';
    assert false report "Test Done !" severity note;
    wait;

  end process;
end architecture tb;
