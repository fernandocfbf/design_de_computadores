LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY decoder IS
  PORT (
    opcode : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    funct : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    saida : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE comportamento OF decoder IS
  --tipo i
  CONSTANT lw : STD_LOGIC_VECTOR(5 DOWNTO 0) := "100011";
  CONSTANT sw : STD_LOGIC_VECTOR(5 DOWNTO 0) := "101011";
  CONSTANT beqs : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000100";
  CONSTANT lui : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001111";
  CONSTANT ori : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001101";
  CONSTANT addi : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001000";
  CONSTANT andi : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001100";
  CONSTANT bnes : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000101";
  CONSTANT slti : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001010";

  --tipo j
  CONSTANT r : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000";
  CONSTANT jal : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000011";

  --tipo r
  CONSTANT jmp : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000010";
  CONSTANT jr : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001000";

  ALIAS hab_escrita_mem : STD_LOGIC IS saida(0);
  ALIAS hab_leitura_mem : STD_LOGIC IS saida(1);
  ALIAS bne : STD_LOGIC IS saida(2);
  ALIAS beq : STD_LOGIC IS saida(3);
  ALIAS mux_ula_mem : STD_LOGIC_VECTOR IS saida(5 DOWNTO 4);
  ALIAS tipo_r : STD_LOGIC IS saida(6);
  ALIAS mux_imediato : STD_LOGIC IS saida(7);
  ALIAS hab_escrita_reg : STD_LOGIC IS saida(8);
  ALIAS hab_ori_andi : STD_LOGIC IS saida(9);
  ALIAS mux_rt_rd : STD_LOGIC_VECTOR IS saida(11 DOWNTO 10);
  ALIAS mux_jmp : STD_LOGIC IS saida(12);
  ALIAS mux_jr : STD_LOGIC IS saida(13);

BEGIN
  hab_escrita_mem <= '1' WHEN (opcode = sw) ELSE
    '0';

  hab_leitura_mem <= '1' WHEN (opcode = lw) ELSE
    '0';

  beq <= '1' WHEN (opcode = beqs) ELSE
    '0';

  bne <= '1' WHEN (opcode = bnes) ELSE
    '0';

  mux_ula_mem <= "00" WHEN (opcode = r OR opcode = ori OR opcode = addi OR opcode = andi OR opcode = slti) ELSE
    "10" WHEN (opcode = jal) ELSE
    "11" WHEN (opcode = lui) ELSE
    "01";

  tipo_r <= '1' WHEN (opcode = r) ELSE
    '0';

  mux_imediato <= '1' WHEN (opcode = slti OR opcode = lw OR opcode = sw OR opcode = ori OR opcode = addi OR opcode = andi) ELSE
    '0';

  hab_escrita_reg <= '1' WHEN (
    opcode = lui OR
    opcode = andi OR
    opcode = ori OR
    (opcode = r AND funct /= jr) OR
    opcode = lw OR
    opcode = addi OR
    opcode = jal OR
    opcode = slti)
    ELSE
    '0';

  hab_ori_andi <= '1' WHEN (opcode = ori OR opcode = andi) ELSE
    '0';

  mux_rt_rd <= "01" WHEN (opcode = r) ELSE
    "10" WHEN (opcode = jal) ELSE
    "00";

  mux_jmp <= '1' WHEN (opcode = jmp OR opcode = jal) ELSE
    '0';

  mux_jr <= '1' WHEN (opcode = r AND funct = jr) ELSE
    '0';

END ARCHITECTURE;