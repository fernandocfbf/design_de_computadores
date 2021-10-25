LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Logica_de_desvio IS
  GENERIC (
    DATA_WIDTH : NATURAL := 8;
    ADDR_WIDTH : NATURAL := 8
  );

  PORT (
    -- Input ports
    flag : IN STD_LOGIC;
    jeq : IN STD_LOGIC;
    SelMuxJump : IN STD_LOGIC;
    ret : IN STD_LOGIC;
    jsr : IN STD_LOGIC;

    -- Output ports
    dataOUT : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END ENTITY;
ARCHITECTURE arch_name OF Logica_de_desvio IS

BEGIN
  dataOUT <=
    "01" WHEN (SelMuxJump OR (jeq AND flag) OR jsr) ELSE
    "10" WHEN (ret) ELSE
    "00";

END ARCHITECTURE;