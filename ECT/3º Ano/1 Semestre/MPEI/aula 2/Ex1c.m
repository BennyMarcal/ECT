clear all

N = 1e5;   % numero de tentativas 
n = 2;     % numero de filhos

fam = rand(n, N) > 0.5; % probabilidade de ter rapazes

%1c
A = sum(fam) == 2; % familias com 2 rapazes
B = sum(fam) >= 1; % pelo menos 1 filho rapaz

AB = A & B; % P(A∩B)

ProbRapaz = sum(AB)/sum(B) % P(A∩B) / P(B) -- P(A\B)

