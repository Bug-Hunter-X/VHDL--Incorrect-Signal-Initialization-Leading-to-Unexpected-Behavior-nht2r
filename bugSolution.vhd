```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity correct_code is
  port (
    clk : in std_logic;
    rst : in std_logic;
    data_in : in std_logic_vector(7 downto 0);
    data_out : out std_logic_vector(7 downto 0)
  );
end entity;

architecture behavioral of correct_code is
  signal internal_data : std_logic_vector(7 downto 0) := (others => '0'); --Corrected initialization
begin
  process (clk, rst) begin
    if rst = '1' then
      internal_data <= (others => '0');
    elsif rising_edge(clk) then
      internal_data <= data_in;
      data_out <= internal_data;
    end if;
  end process;
end architecture;
```