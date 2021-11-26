LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY estendeSinalGenerico IS
    GENERIC (
        larguraDadoEntrada : NATURAL := 8;
        larguraDadoSaida : NATURAL := 8
    );
    PORT (

        estendeSinal_IN : IN STD_LOGIC_VECTOR(larguraDadoEntrada - 1 DOWNTO 0);
        ori : IN STD_LOGIC;

        estendeSinal_OUT : OUT STD_LOGIC_VECTOR(larguraDadoSaida - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE comportamento OF estendeSinalGenerico IS
BEGIN
    PROCESS (estendeSinal_IN) IS
    BEGIN
        IF (ori = '1') THEN
            estendeSinal_OUT <= "0000000000000000" & estendeSinal_IN;
        ELSIF (estendeSinal_IN(larguraDadoEntrada - 1) = '1') THEN
            estendeSinal_OUT <= (larguraDadoSaida - 1 DOWNTO larguraDadoEntrada => '1') & estendeSinal_IN;
        ELSE
            estendeSinal_OUT <= (larguraDadoSaida - 1 DOWNTO larguraDadoEntrada => '0') & estendeSinal_IN;
        END IF;
    END PROCESS;
END ARCHITECTURE;