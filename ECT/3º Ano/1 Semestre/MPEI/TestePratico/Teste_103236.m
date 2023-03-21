% Teste Prático MPEI 2022/2023
%
% Nome: Bernardo de Amaral Marçal
% Nmec: 103236
clear all;
%% Exercicio 1 a)
     
T = [   0   0   0    0   0   0
        0.8 0   0    0.9 1   0
        0   0.7 0    0.1 0   0
        0   0.3 0.55 0   0   0
        0.2 0   0    0   0   0
        0   0   0.45 0   0   1];

sum(T); % Verificaçao

%% Exercicio 1 b)
%inicio = 1;
%final = 6;  sendo 6 = meta
%menorTrajeto = [1 2 4 3 6];

estadoInicial =[1 0 0 0 0 0]';

estadoFinal = T ^ 3 * estadoInicial;
menorTrajProb = estadoFinal(6);

fprintf('\nExercicio 1b)\nA probabilidade de calhar o trajo mais pequeno é de %.4f\n', menorTrajProb);

%% Exercicio 1 c)

Q = T(1:5, 1:5);
F = inv(eye(5)-Q);

media = sum(F);
mediaPercorrida = media(1);

fprintf('\nExercicio 1c)\nA média de casas percorridas durante o jogo é de %.2f casas\n', mediaPercorrida);
%% Exercicio 2 a)

n = 100;
fp = 0.01; 

m = ceil(-(n * log(fp)) / (log(2)^2)); % tamanho do filtro em bits
y = (m/n) * log(2); % número de funções de dispersão

bloom_filter = zeros(1, m); % inicializa o filtro de Bloom com zeros


for i = 1:y
    hash_function = @(x) mod(x + i, m);
    bloom_filter(hash_function(n)) = 1;
end

sizeBloom = length(bloom_filter);

fprintf('\nExercicio 2a)\nO tamanho adequado do filtro de bloom é de %.0f\n\n', sizeBloom);


%% Exercicio 2 b)

disp('Exercicio 2b)');
%% Exercicio 3

disp('Exercicio 3)');
%% Função dada

function hashCode = hf1(shingle,nhf)
% USAGE EXAMPLE: hc=hf1('abcd',3)
% input : shingle  - string (of length 3)
%         nhf      - number of the hash function to apply (1 to 5)
% output: hashCode - from 0 to 1012 (M-1)     

l = 3;  % shingle length, don't change
n = 5;  % max number of hash function

M = 1013; % to limit hashcode to M-1

if length(shingle) ~= l
    fprintf(1,'ERROR! 1st parameter must have %d characters\n',l);
    
    hashCode = -1;
    return 
end

if nhf <1 || nhf > n
    fprintf(1,'ERROR! hf number must be between 1 and %d\n',n);
    hashCode = -1;
    return
end

R =[15761,14189,65576,75776;
    97062,42177, 3571,74315;
    95719,91576,84915,39223;
    48539,79223,93402,65549;
    80030,95952,67875,17119];

R=R(:,1:l);
 
% each line of R defines a different hash function
r=R(nhf,:);

%   (\sum r * x ) mode M
hashCode=mod(sum (r.*  double(shingle)),M);

end
