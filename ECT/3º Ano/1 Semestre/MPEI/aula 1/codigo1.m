%% Código 1

N= 1e5; %nu´mero de experiências
p = 0.5; %probabilidade de cara
k = 2; %número de caras
n = 3; %número de lançamentos

lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k;
probSimulacao = sum(sucessos)/N;