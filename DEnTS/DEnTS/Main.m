% Departamento de Engenharia El�trica - UFV
% Josias Paoli Reis (josiaspaoli@gmail.com)
% �ltima Vers�o: 06/12/2017

clear all %#ok<CLSCR>
close all
clc
warning off

% Carrega todas as pastas
NomePastas = dir(pwd);
for ii = 1:size(NomePastas,1)
    if NomePastas(ii).isdir
        addpath(genpath(NomePastas(ii).name));
    end
end
clear NomePastas ii;

% Configura o jogo
[estruturaApostas, tipoJogo, jogadores, tightness, numTorneios, numJogadores, tempoSimulacao, flagLogs, flagHuman] = configura_jogo();

% Carrega as vari�veis globais utilizadas para armazenamento das a��es
carrega_variaveis_globais();

% Cria a subpasta de Logs identificada pela hora e tipo de jogo
f = cria_pasta_logs(tipoJogo, flagLogs);

% Roda e temporiza a simula��o
[resultados, historico, deals, jogadores, tightness, t] = joga(estruturaApostas, jogadores, numTorneios, numJogadores, tempoSimulacao, tightness, flagLogs, flagHuman, f);

% Mostra e armazena os resultados no workspace do MATLAB
[absoluto, porcentagem, mediaPontos] = declara_resultados(jogadores, tightness, resultados, estruturaApostas, tipoJogo, t);
