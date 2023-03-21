clear all

N = 1e5;   % numero de tentativas 
n = 2;     % numero de filhos

fam = rand(n, N) > 0.5; % probabilidade de ter rapazes

A = sum(fam) >= 1; % pelo menos 1 dos filhos é rapaz (mudar valores para obter alinea e)
B = sum(fam) == 2; % ter 2 rapazes apenas (mudar valores para obter alinea e)

AB = A & B; % P(A∩B)

ProbRapaz = sum(AB)/sum(A) % P(A∩B) / P(A)


