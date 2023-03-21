%% Guiao 2
%% Exercicio 1 

p = 0.5;        % probabilidade de ter filho, igual a de ter filha
f = 2;          % numero de filhos
rapazes = 1;    % probabilidade de ter 1 rapaz 
N = 1e5;        % numero de tentativas

filhos = rand(f, N) > p;
sucessos = sum(filhos) >= rapazes;
probFilho = sum(sucessos)/N