function [probSimulacao] = Prob(N,k,n)

probSimulacao = sum(sum(rand(n,N) > 0.5)==k)/N;

end