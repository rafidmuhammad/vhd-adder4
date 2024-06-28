library ieee;
  use ieee.std_logic_1164.all;

package fulladd_package is
  component fulladd
    port (Cin, x, y : in  STD_LOGIC;
          s, Cout   : out STD_LOGIC);
  end component;
end package;
