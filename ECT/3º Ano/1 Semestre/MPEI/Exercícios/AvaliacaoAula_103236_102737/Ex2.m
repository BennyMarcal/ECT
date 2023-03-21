clear all;
% a

load('L.mat');
sum(L); %quando for 0, essa coluna é dead end

% b - calcular matriz H

for i = 1 : length(L)
    soma = sum(L(:, i));
    if(soma ~= 0)
        H(:, i) = L(:, i)/soma;
    end
end

sum(H);

% c - calcular matriz A

A = 0.85 * H + 0.15* ((1/length(H)) * ones(length(H)));

% d - calcular page rank

pg = (1/length(H)) * ones(length(H), 1);
for i = 0 : 150
    pg = A * pg;
end

pg

% e - procurar pelo page rank as paginas dead-end e obter o valor