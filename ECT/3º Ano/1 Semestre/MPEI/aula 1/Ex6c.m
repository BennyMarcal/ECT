%% Codigo 6c -  Baseado em simulac¸ao, construa no Matlab o histograma representativo da distribuic¸ ˜ ao de probabili- ˜
%% dades do numero de pec¸as defeituosas da amostra. 
% Dados relativos ao problema 2

p = 0.3;
n = 5;
N = 10e5;

for k = 0:n
    k;
    resultado(k+1) = sum(sum(rand(5, N) > p) == k)/N;
end
bar(0:n, resultado)