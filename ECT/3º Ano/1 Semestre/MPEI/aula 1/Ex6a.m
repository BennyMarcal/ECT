%% Codigo 6a -  Calcule analiticamente e por simulac¸ao a probabilidade de 3 pec¸as da amostra serem defeituosas
% Dados relativos ao problema 1
p = 0.3; %30%
k = 3;   %3 peças defeituosas
n = 5;   %5 peças totais

prob = nchoosek(n,k)*p^k*(1-p)^(n-k) % nchoosek(n,k)= n!/(n-k)!/k!