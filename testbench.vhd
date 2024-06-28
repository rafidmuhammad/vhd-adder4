-- Testbench for adder4 gate
library IEEE;
  use IEEE.std_logic_1164.all;

entity testbench is
  -- empty
end entity;

architecture tb of testbench is

  -- DUT component
  component adder4 is
    port (
      cin  : in  std_logic;
      x, y : in  std_logic_vector(3 downto 0);
      S    : out std_logic_vector(3 downto 0);
      Cout : out std_logic);
  end component;

  signal c_in, c_out       : std_logic;
  signal x_in, y_in, s_out : std_logic_vector(3 downto 0);

begin

  -- Connect DUT
  DUT: adder4 port map (c_in, x_in, y_in, s_out, c_out);

  process
  begin
    c_in <= '0';
    x_in <= "0000";
    y_in <= "0001";
    wait for 1 ns;
    assert (s_out = "0001") report "Fail 0/0" severity error;

    c_in <= '0';
    x_in <= "0001";
    y_in <= "0001";
    wait for 1 ns;
    assert (s_out = "0010") report "Fail 0/0" severity error;

    c_in <= '0';
    x_in <= "0011";
    y_in <= "0011";
    wait for 1 ns;
    assert (s_out = "0110") report "Fail 0/0" severity error;

    -- Clear Input
    c_in <= '0';
    x_in <= "0000";
    y_in <= "0000";
    assert false report "Test done." severity note;
    wait;
  end process;
end architecture;
