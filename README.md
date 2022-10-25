# Poker-AI :trophy:
Este repositório tem por objetivo dar instruções sobre o funcionamento da competição de inteligência artificial (IA) organizada pelo Núcleo Interdisciplinar de Análise de Sinais (NIAS), a competição é de cunho educativo e visa complementar o método de ensino da disciplina de inteligência computacioanl.

### :clubs: Estrutura da Competição

A competição é baseada na contrução de IA's capazes de jogar torneios de poker em uma mesa virtual. Cadastro de participantes e envio de arquivos será utilizada a Pataforma NIAS-IA -> (). Para auxilío na construção das IA's e também para a simulação dos torneios será utilizado o ambiente virtual DEnTS, nele os participantes poderão , por meio dos logs gerados nas simulações, gerar bancos de dados para treinamento de suas respectivas IA's.

### :clubs: Desenvolvendo Sua IA

Para desenvolver sua própria IA o participante deverá utilizar como base a inteligência artifical contida nesse repositório (base.m), nela estão presentes todos os parâmetros de entrada necessários. Ela está configurada para dar fold independente de quais cartas receber e de qual é a situação da mesa.

### :clubs: Ambiente Virtual - DEnTS

O ambiente virtual utilizado tanto para auxílio no desenvolvimento das IA's quanto para realização dos torneios será o DEnTS, ele está disponível neste repositório na pasta DEnTS. Ele possui três modos de funcionamento:

- 1- Teste IA : 1 IA do usuário vs até 9 IAs pré-estabelecidas;
- 2- Batalha IA: Batalha entre até 10 diferentes IAs do usuário;
- 3- Humano: Jogador humano vs até 9 IAs.

Para utilização dos modos 1 os participantes deverão substituir o conteúdo do arquivo AI1.m (DEnTS/EnTS/AIs) pelo código referente à sua inteligência artificial ANTES da inicialização da mesa. No modo 1 as IA's pré-estabelecidas possuem as seguintes características:

IA Random – Toma ações aleatórias, tendo 24% de chance de fold, 1 % de chance de all-in, 45% de chance de call e 30% de chance de bet/raise, dessa forma possuindo tendências agressivas;
IA BlindLimp – Somente paga os blinds, qualquer maior aposta no pre-flop ou apostas de qualquer tamanho em rodadas posteriores resultam em um fold desse jogador;
IA Call – Paga qualquer aposta, mas nunca aumenta ou faz a primeira aposta, com exceção dos blinds obrigatórios;
IA Check/Fold – Nunca paga uma aposta, efetuando checks se possível;
IA Raise – Sempre efetua o mínimo raise possível;
IA Smart – Implementada pelo criador do OOPoker, essa IA analisa diversas variáveis, inclusive verificando quantas possíveis mãos do oponente ganhariam da sua para tomar suas decisões.

No modo 2 os o participante poderá simular torneios entre diferentes IA's desenvolvidas por ele, para isso o código referente a cada IA única deve ser substituído na pasta de IA's base (DEnTS/DEnTS/AIs). Para a realização de um torneio entre três IA's diferentes, por exemplo, devem ser substituídos os conteúdos dos arquvios AI1.m, AI2.m e AI3.m.

Para inicializar o ambiente virtual basta executar o arquivo Main.m (DEnTS/DEnTS/Main.m)

### :clubs: Tightness

Tightness é um parâmetro da IA Smart implementada pelo criador da mesa que pode assumir valores de 0 a 0,99 e representa o quão conservadora essa IA será, sendo 0 uma IA completamente agressiva e 0,99 uma IA muito conservadora. Seu valor padrão é 0,8 (considerado o melhor resultado pelo criador da IA). Dentro do DEnTS, esse valor pode ser entre 0,65 e 0,99 e deve ser determinado antes da simulação pelo usuário para cada IA Smart presente na mesa.

