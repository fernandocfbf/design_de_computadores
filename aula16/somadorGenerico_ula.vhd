LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; -- Biblioteca IEEE para funções aritméticas

ENTITY somadorGenerico_ula IS
    PORT (
        entradaA, entradaB, cIn : IN STD_LOGIC;
        cOut, saida : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE comportamento OF somadorGenerico_ula IS
BEGIN
    saida <= cIn XOR (entradaA XOR entradaB);
    cOut <= (entradaA AND entradaB) OR (cIn AND (entradaA XOR entradaB));
END ARCHITECTURE;