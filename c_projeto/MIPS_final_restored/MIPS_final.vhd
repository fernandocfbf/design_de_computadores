LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY MIPS_final IS
	GENERIC (
		larguraDados : NATURAL := 8;
		ADDR_WIDTH : NATURAL := 8
	);

	PORT (
		CLOCK_50 : IN STD_LOGIC;
		HEX0 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
		HEX1 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
		HEX2 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
		HEX3 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
		HEX4 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
		HEX5 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
		SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		LEDR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		
		PC_out_s : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		ULA_out_s : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);

END ENTITY;
ARCHITECTURE arch_name OF MIPS_final IS
	SIGNAL PC_OUT : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL SOMADOR_PC : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL instrucao : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL REG1_ULA_B : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL REG2_ULA_C : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL Saida_ULA : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL Saida_estende : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL Saida_estende_lui : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL Saida_unidade_de_controle : STD_LOGIC_VECTOR (11 DOWNTO 0); -- troquei de 11 pra 9
	SIGNAL Dado_lido : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL Flag_Ula : STD_LOGIC;
	SIGNAL CLK : STD_LOGIC;
	SIGNAL RESET : STD_LOGIC;
	SIGNAL somador_mux : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL saida_mux_beq : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL saida_shift_left : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL saida_mux_teste : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL saida_mux_rt_imediato : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL saida_mux_rt_rd : STD_LOGIC_VECTOR (4 DOWNTO 0);
	SIGNAL saida_mux_ula_mem : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL saida_prox_pc : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL saida_shift_left_mux : STD_LOGIC_VECTOR (27 DOWNTO 0);
	SIGNAL ctrl_ULA : STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL saida_mux_displays : STD_LOGIC_VECTOR (31 DOWNTO 0);

	ALIAS hab_escrita_mem : STD_LOGIC IS Saida_unidade_de_controle(0);
	ALIAS hab_leitura_mem : STD_LOGIC IS Saida_unidade_de_controle(1);
	ALIAS beq : STD_LOGIC IS Saida_unidade_de_controle(2);
	ALIAS mux_ula_mem : STD_LOGIC_VECTOR IS Saida_unidade_de_controle(4 DOWNTO 3);
	ALIAS tipo_r : STD_LOGIC IS Saida_unidade_de_controle(5);
	ALIAS mux_imediato : STD_LOGIC IS Saida_unidade_de_controle(6);
	ALIAS hab_escrita_reg : STD_LOGIC IS Saida_unidade_de_controle(7);
	ALIAS hab_ori_andi : STD_LOGIC IS Saida_unidade_de_controle(8);
	ALIAS mux_rt_rd : STD_LOGIC IS Saida_unidade_de_controle(9);
	ALIAS mux_jmp : STD_LOGIC IS Saida_unidade_de_controle(10);

BEGIN
	CLK <= CLOCK_50;
	--CLK <= KEY(0); --vai de clique em clique

--	DETECTOR_DE_BORDA_KEY0 : work.edgeDetector(bordaSubida)
--	PORT MAP(
--		clk => CLOCK_50,
--		entrada => (NOT KEY(0)),
--		saida => CLK);

	MUX_DISPLAYS : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => 32)
		PORT MAP(
			entradaA_MUX => Saida_ULA,
			entradaB_MUX => PC_OUT,
			seletor_MUX => SW(0),
			saida_MUX => saida_mux_displays);

	DISPLAY_HEX0 : ENTITY work.conversorHex7Seg
		PORT MAP(
			dadoHex => saida_mux_displays(3 DOWNTO 0),
			apaga => '0',
			negativo => '0',
			overFlow => '0',
			saida7seg => HEX0);

	DISPLAY_HEX1 : ENTITY work.conversorHex7Seg
		PORT MAP(
			dadoHex => saida_mux_displays(7 DOWNTO 4),
			apaga => '0',
			negativo => '0',
			overFlow => '0',
			saida7seg => HEX1);

	DISPLAY_HEX2 : ENTITY work.conversorHex7Seg
		PORT MAP(
			dadoHex => saida_mux_displays(11 DOWNTO 8),
			apaga => '0',
			negativo => '0',
			overFlow => '0',
			saida7seg => HEX2);

	DISPLAY_HEX3 : ENTITY work.conversorHex7Seg
		PORT MAP(
			dadoHex => saida_mux_displays(15 DOWNTO 12),
			apaga => '0',
			negativo => '0',
			overFlow => '0',
			saida7seg => HEX3);
	DISPLAY_HEX4 : ENTITY work.conversorHex7Seg
		PORT MAP(
			dadoHex => saida_mux_displays(19 DOWNTO 16),
			apaga => '0',
			negativo => '0',
			overFlow => '0',
			saida7seg => HEX4);

	DISPLAY_HEX5 : ENTITY work.conversorHex7Seg
		PORT MAP(
			dadoHex => saida_mux_displays(23 DOWNTO 20),
			apaga => '0',
			negativo => '0',
			overFlow => '0',
			saida7seg => HEX5);

	PC : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 32)
		PORT MAP(
			DIN => saida_prox_pc,
			DOUT => PC_OUT,
			ENABLE => '1',
			CLK => CLK,
			RST => RESET);

	UNIDADE_CONTROLE_ULA : ENTITY work.UNIDADE_CONTROLE_ULA
		PORT MAP(
		   opcode=> instrucao(31 DOWNTO 26),
			funct => instrucao(5 DOWNTO 0),
			tipo_r => tipo_r,
			ULActrl => ctrl_ULA
		);

	SOMACONSTANTE : ENTITY work.somaConstante GENERIC MAP (larguraDados => 32, constante => 4)
		PORT MAP(
			entrada => PC_OUT,
			saida => SOMADOR_PC
		);

	ESTENDE_SINAL : ENTITY work.estendeSinalGenerico GENERIC MAP (larguraDadoEntrada => 16, larguraDadoSaida => 32)
		PORT MAP(
			ori => hab_ori_andi,
			estendeSinal_IN => instrucao(15 DOWNTO 0),
			estendeSinal_OUT => Saida_estende
		);

	ESTENDE_SINAL_LUI : ENTITY work.estendeSinalLui GENERIC MAP (larguraDadoEntrada => 16, larguraDadoSaida => 32)
		PORT MAP(
			estendeSinal_IN => instrucao(15 DOWNTO 0),
			estendeSinal_OUT => Saida_estende_lui
		);

	DESLOCADOR : ENTITY work.deslocadorGenerico GENERIC MAP (larguraDadoEntrada => 32, larguraDadoSaida => 32)
		PORT MAP(
			sinalIN => Saida_estende,
			sinalOUT => saida_shift_left
		);

	DESLOCADOR_ROM : ENTITY work.deslocadorGenericoROM GENERIC MAP (larguraDadoEntrada => 26, larguraDadoSaida => 28)
		PORT MAP(
			sinalIN => instrucao(25 DOWNTO 0), --imediato
			sinalOUT => saida_shift_left_mux
		);

	SOMACONSTANTE_BEQ : ENTITY work.somadorGenerico GENERIC MAP (larguraDados => 32)
		PORT MAP(
			entradaA => SOMADOR_PC,
			entradaB => saida_shift_left,
			saida => somador_mux);

	MUX_IMEDIATO_COMPONENTE : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => 32)
		PORT MAP(
			entradaA_MUX => REG2_ULA_C,
			entradaB_MUX => Saida_estende,
			seletor_MUX => mux_imediato,
			saida_MUX => saida_mux_rt_imediato);

	MUX_BEQ_COMPONENTE : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => 32)
		PORT MAP(
			entradaA_MUX => SOMADOR_PC,
			entradaB_MUX => somador_mux,
			seletor_MUX => Flag_Ula AND beq,
			saida_MUX => saida_mux_beq);

	MUX_ULA_MEM_COMPONENTE : ENTITY work.muxGenerico3x1 GENERIC MAP (larguraDados => 32)
		PORT MAP(
			entradaA_MUX => Saida_ULA,
			entradaB_MUX => Dado_lido,
			entradaC_MUX => Saida_estende_lui,
			seletor_MUX => mux_ula_mem,
			saida_MUX => saida_mux_ula_mem);

	MUX_RT_RD_COMPONENTE : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => 5)
		PORT MAP(
			entradaA_MUX => instrucao(20 DOWNTO 16),
			entradaB_MUX => instrucao(15 DOWNTO 11),
			seletor_MUX => mux_rt_rd,
			saida_MUX => saida_mux_rt_rd);

	MUX_JMP_COMPONENTE : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => 32)
		PORT MAP(
			entradaA_MUX => saida_mux_beq,
			entradaB_MUX => SOMADOR_PC(31 DOWNTO 28) & saida_shift_left_mux, -- instrucao(25 DOWNTO 0) & '0' & '0'
			seletor_MUX => mux_jmp,
			saida_MUX => saida_prox_pc);

	ROMMIPS : ENTITY work.ROMMIPS GENERIC MAP (dataWidth => 32, addrWidth => 32)
		PORT MAP(
			Endereco => PC_OUT,
			Dado => instrucao,
			clk => CLK);

	RAMMIPS : ENTITY work.RAMMIPS GENERIC MAP (dataWidth => 32, addrWidth => 32, memoryAddrWidth => 6)
		PORT MAP(
			clk => CLK,
			Endereco => Saida_ULA,
			Dado_in => REG2_ULA_C,
			Dado_out => Dado_lido,
			we => hab_escrita_mem,
			re => hab_leitura_mem);

	BANCO_REG : ENTITY work.bancoReg GENERIC MAP (larguraDados => 32, larguraEndBancoRegs => 5)
		PORT MAP(
			clk => CLK,
			enderecoA => instrucao(25 DOWNTO 21),
			enderecoB => instrucao(20 DOWNTO 16),
			enderecoC => saida_mux_rt_rd,
			dadoEscritaC => saida_mux_ula_mem,
			escreveC => hab_escrita_reg,
			saidaA => REG1_ULA_B,
			saidaB => REG2_ULA_C
		);

	ULAMIPS : ENTITY work.ULA_completa GENERIC MAP(larguraDados => 32)
		PORT MAP(
			entradaA => REG1_ULA_B,
			entradaB => saida_mux_rt_imediato,
			inverteB => ctrl_ULA(2), -- bit 2 
			operacao => ctrl_ULA(1 DOWNTO 0),
			flag_zero => Flag_Ula,
			saida => Saida_ULA);

	DECODER : ENTITY work.decoder
		PORT MAP(
			entrada => instrucao(31 DOWNTO 26),
			saida => Saida_unidade_de_controle);
	--			
	--	Saida_unidade_de_controle(0) <= habEscritaMEM;
	--	Saida_unidade_de_controle(1) <= habLeituraMEM;
	--	Saida_unidade_de_controle(2) <= BEQ;
	--	Saida_unidade_de_controle(3) <= sel_mux_ula_mem;
	--	Saida_unidade_de_controle(5 DOWNTO 4) <= ULAop_in;
	--	Saida_unidade_de_controle(6) <= mux_rt_imediato;
	--	Saida_unidade_de_controle(7) <= habEscritaReg;
	--	Saida_unidade_de_controle(8) <= sel_mux_rt_rd;
	--	Saida_unidade_de_controle(9) <= sel_mux_jump;

--	LEDR(3 DOWNTO 0) <= saida_mux_displays(27 DOWNTO 24);
--	LEDR(7 DOWNTO 4) <= saida_mux_displays(31 DOWNTO 28);
	PC_out_s <= PC_OUT;
	ULA_out_s <= Saida_ULA;

END ARCHITECTURE;