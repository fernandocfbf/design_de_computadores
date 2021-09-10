library ieee;
use ieee.std_logic_1164.all;

entity aula5 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    --SW: in std_logic_vector(9 downto 0);
    LEDR  : out std_logic_vector(7 downto 0)
  );
end entity;


architecture arquitetura of aula5 is

-- Faltam alguns sinais:
  signal MUX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal chavesY_MUX_A : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA_flag : std_logic;
  signal instrucao : std_logic_vector (12 downto 0);
  signal PC_ROM : std_logic_vector (8 downto 0);
  signal SOMADOR_MUX : std_logic_vector (8 downto 0);
  signal MUXJUMP_PC : std_logic_vector (8 downto 0);
  signal Chave_Operacao_ULA : std_logic;
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal SelMUXJUMP : std_logic;
  signal Logica_Mux : std_logic_vector (1 downto 0);
  signal Habilita_A : std_logic;
  signal Operacao_ULA : std_logic_vector (1 downto 0);
  signal habLeituraMEM : std_logic;
  signal habEscritaMEM : std_logic;
  signal habFlagIgual : std_logic;
  signal habEscritaRetorno : std_logic;
  signal Flag_Log : std_logic;
  signal JEQ : std_logic;
  signal RET : std_logic;
  signal JSR : std_logic;
  signal PontosDeControle: std_logic_vector (11 downto 0);
  signal RAM_MUX : std_logic_vector (7 downto 0);
  signal Saida_End_retorno : std_logic_vector (8 downto 0);
  
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => RAM_MUX,
                 entradaB_MUX =>  instrucao(7 downto 0),
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_ULA_B);

MUXJUMP :  entity work.muxGenericoJUMP  generic map (larguraDados => 9)
        port map( entradaA_MUX => SOMADOR_MUX,
                 entradaB_MUX =>  instrucao(8 downto 0),
					  entradaC_MUX => Saida_End_retorno,
                 seletor_MUX => Logica_Mux,
                 saida_MUX => MUXJUMP_PC);

-- O port map completo do Acumulador.
REG1 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => '0');

FLAG : entity work.registradorFlag   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA_flag, DOUT => Flag_Log, ENABLE => HabFlagIgual, CLK => CLK, RST => '0');
			 
END_RETORNO : entity work.end_retorno  generic map (larguraDados => larguraDados)
          port map (DIN => SOMADOR_MUX , DOUT => Saida_End_retorno, ENABLE => HabEscritaRetorno, CLK => CLK, RST => '0');

-- O botao 3 faz o Reset da MEF:
PC : entity work.registradorGenerico   generic map (larguraDados => 9)
          port map (DIN => MUXJUMP_PC, DOUT => PC_ROM, ENABLE => '1', CLK => CLK, RST => '0');
--REG_MEF = PC
	
-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_ULA_B, saida => Saida_ULA,saida_flag => Saida_ULA_flag , seletor => Operacao_ULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
          port map (Endereco => PC_ROM, Dado => instrucao(12 downto 0));
			 
RAM1 : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => larguraDados)
          port map (addr => instrucao(7 downto 0), we => habEscritaMEM, re => habLeituraMEM, habilita => instrucao(8), dado_in => REG1_ULA_A, dado_out => RAM_MUX, clk => CLK);
			 
-- SOMADOR ATIVIDADE 2
SOMACONSTANTE :  entity work.somaConstante  generic map (larguraDados => 9, constante => 1)
        port map( entrada => PC_ROM, saida => SOMADOR_MUX);
		  
DECODER: entity work.decodificador
        port map( opcode => instrucao(12 downto 9), PontosDeControle => PontosDeControle);

logica_de_desvio: entity work.logica_de_desvio
        port map( flag => Flag_Log, jeq => JEQ, ret => RET, jsr  => JSR ,SelMuxJump =>SelMUXJUMP, dataOUT=>Logica_Mux);
		  
		  
habEscritaMEM <= PontosDeControle(0);
habLeituraMEM <= PontosDeControle(1);
selMUX <= PontosDeControle(6);
Habilita_A <= PontosDeControle(5);	
Operacao_ULA <= PontosDeControle(4 downto 3);
SelMUXJUMP <= PontosDeControle(10);
JEQ <= PontosDeControle(7);
habFlagIgual <= PontosDeControle(2);
habEscritaRetorno <= PontosDeControle(11);
RET <= PontosDeControle(9);
JSR <= PontosDeControle(8);

-- I/O
--chavesY_MUX_A <= SW(3 downto 0);
--chavesX_ULA_B <= SW(9 downto 6);

-- A ligacao dos LEDs:
--LEDR (9) <= SelMUX;
--LEDR (8) <= Habilita_A;
--LEDR (7) <= Reset_A;
--LEDR (6) <= Operacao_ULA;
--LEDR (5) <= '0';    -- Apagado.
--LEDR (4) <= '0';    -- Apagado.
LEDR <= REG1_ULA_A;

end architecture;