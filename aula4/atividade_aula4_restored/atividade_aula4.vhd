library ieee;
use ieee.std_logic_1164.all;

entity atividade_aula4 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0)
--    SW: in std_logic_vector(9 downto 0);
--    LEDR  : out std_logic_vector(9 downto 0)
  );
end entity;


architecture arquitetura of atividade_aula4 is

-- Faltam alguns sinais:
  signal MUX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal chavesY_MUX_A : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal instrucao : std_logic_vector (12 downto 0);
  signal PC_ROM : std_logic_vector (8 downto 0);
  signal SOMADOR_PC : std_logic_vector (8 downto 0);
  signal Chave_Operacao_ULA : std_logic;
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal Operacao_ULA : std_logic_vector (1 downto 0);
  signal habLeituraMEM : std_logic;
  signal habEscritaMEM : std_logic;
  signal PontosDeControle: std_logic_vector (5 downto 0);
  signal RAM_MUX : std_logic_vector (7 downto 0);
  
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

-- O port map completo do Acumulador.
REG1 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => '0');

-- O botao 3 faz o Reset da MEF:
PC : entity work.registradorGenerico   generic map (larguraDados => 9)
          port map (DIN => SOMADOR_PC, DOUT => PC_ROM, ENABLE => '1', CLK => CLK, RST => '0');
--REG_MEF = PC
	
-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_ULA_B, saida => Saida_ULA, seletor => Operacao_ULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
          port map (Endereco => PC_ROM, Dado => instrucao(12 downto 0));
			 
RAM1 : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => larguraDados)
          port map (addr => instrucao(7 downto 0), we => habEscritaMEM, re => habLeituraMEM, habilita => instrucao(8), dado_in => REG1_ULA_A, dado_out => RAM_MUX, clk => CLK);
			 
-- SOMADOR ATIVIDADE 2
SOMACONSTANTE :  entity work.somaConstante  generic map (larguraDados => 9, constante => 1)
        port map( entrada => PC_ROM, saida => SOMADOR_PC);
		  
DECODER: entity work.decodificador
        port map( opcode => instrucao(12 downto 9), PontosDeControle => PontosDeControle);

habEscritaMEM <= PontosDeControle(5);
habLeituraMEM <= PontosDeControle(4);
selMUX <= PontosDeControle(0);
Habilita_A <= PontosDeControle(1);	
Operacao_ULA <= PontosDeControle(3 downto 2);

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
--LEDR (3 downto 0) <= REG1_ULA_A;

end architecture;