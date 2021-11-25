LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY estendeSinalLui IS
    GENERIC (
        larguraDadoEntrada : NATURAL := 8;
        larguraDadoSaida : NATURAL := 8
    );
    PORT (
        estendeSinal_IN : IN STD_LOGIC_VECTOR(larguraDadoEntrada - 1 DOWNTO 0);
        estendeSinal_OUT : OUT STD_LOGIC_VECTOR(larguraDadoSaida - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE comportamento OF estendeSinalLui IS
BEGIN
    PROCESS (estendeSinal_IN) IS
    BEGIN
        estendeSinal_OUT <= (larguraDadoSaida - 1 DOWNTO larguraDadoEntrada => '0') & "0000000000000000";
    END PROCESS;
END ARCHITECTURE;