library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity deslocadorGenerico is
    generic(
        larguraDadoEntrada : natural  :=    32;
        larguraDadoSaida   : natural  :=    32;
        deslocamento : natural := 2  );
    port(
        -- Input ports
        sinalIN : in  std_logic_vector(larguraDadoEntrada-1 downto 0);
        -- Output ports
        sinalOUT: out std_logic_vector(larguraDadoSaida-1 downto 0)
		  );
end entity;

architecture comportamento of deslocadorGenerico is
    begin
        sinalOUT <= sinalIN(29 downto 0) & "00";
end architecture;