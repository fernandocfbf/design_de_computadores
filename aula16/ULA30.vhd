LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ULA30 IS
	PORT (
		entradaA, entradaB, slt : IN STD_LOGIC;
		operacao : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		inverteB : IN STD_LOGIC;
		cIn : IN STD_LOGIC;
		cOut : OUT STD_LOGIC;
		saida : OUT STD_LOGIC
	);
END ENTITY;
ARCHITECTURE arch_name OF ULA30 IS
	SIGNAL saida_mux_b : STD_LOGIC;
	SIGNAL saida_somador : STD_LOGIC;

BEGIN

	MUX_B : ENTITY work.muxGenerico2x1_1bit GENERIC MAP (larguraDados => 1)
		PORT MAP(
			entradaA_MUX => entradaB,
			entradaB_MUX => not(entradaB),
			seletor_MUX => inverteB,
			saida_MUX => saida_mux_b);

	SOMADOR : ENTITY work.somadorGenerico_ula
		PORT MAP(
			entradaA => entradaA,
			entradaB => saida_mux_b,
			cIn => cIn,
			cOut => cOut,
			saida => saida_somador);

	MUX_SAIDA : ENTITY work.muxGenerico4x1 GENERIC MAP (larguraDados => 1)
		PORT MAP(
			entradaA_MUX => saida_mux_b and entradaA,
			entradaB_MUX => saida_mux_b or entradaA,
			entradaC_MUX => saida_somador,
			entradaD_MUX => slt,
			seletor_MUX => operacao,
			saida_MUX => saida);

END ARCHITECTURE;