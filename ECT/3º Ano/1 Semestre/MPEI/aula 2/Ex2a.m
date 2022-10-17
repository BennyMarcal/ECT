clear all

N = 1e5;
f = randi(100, 20, 1000);

 % Matriz em que as linhas sao so dardos, o valor é o nº do alvo
% a = [3,4,5,3], unique(a) -> [3,4,5] (ordena)
for i = 1 : sN
    res(i) = length(unique(f(:, i))) == 20;
end
res;
sum(res)/1000