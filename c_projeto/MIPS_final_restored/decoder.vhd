LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY decoder IS
  PORT (
    entrada : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
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

  -- verificar se andi e slti precisam escrever no reg

BEGIN
  hab_escrita_mem <= '1' WHEN (entrada = sw) ELSE
    '0';
  hab_leitura_mem <= '1' WHEN (entrada = lw) ELSE
    '0';
  beq <= '1' WHEN (entrada = beqs) ELSE
    '0';
  bne <= '1' WHEN (entrada = bnes) ELSE
    '0';
  mux_ula_mem <= "00" WHEN (entrada = r OR entrada = ori OR entrada = addi OR entrada = andi OR entrada = slti) ELSE
    "10" WHEN (entrada = jal) ELSE
    "11" WHEN (entrada = lui) ELSE
    "01";
  tipo_r <= '1' WHEN (entrada = r) ELSE
    '0';
  mux_imediato <= '1' WHEN (entrada = lw OR entrada = sw OR entrada = ori OR entrada = addi OR entrada = andi OR entrada = slti) ELSE
    '0';
  hab_escrita_reg <= '0' WHEN (entrada = sw OR entrada = beqs OR entrada = ori OR entrada = lui OR entrada = bnes OR entrada = slti) ELSE
    '1';
  hab_ori_andi <= '1' WHEN (entrada = ori OR entrada = andi) ELSE
    '0';
  mux_rt_rd <= "01" WHEN (entrada = r) ELSE
    "10" WHEN (entrada = jal) ELSE
    "00";
  mux_jmp <= '1' WHEN (entrada = jmp OR entrada = jal) ELSE
    '0';

END ARCHITECTURE;