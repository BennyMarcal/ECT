% Ex 6

clear all

N = 1e4;
prob_par = 0.5;
lancamentos = 2;
num_faces = 6;
prob_serx = 1/6;

f = randi(num_faces, lancamentos, N);


% A – a soma dos dois valores e igual a 9
soma_9 = 0;

soma = sum(f);

for i = 1: N
   if (soma(i) == 9)
       soma_9 = soma_9 +1;
   end
end

prob_A = soma_9/N

% B – o segundo valor é par
soma_par = 0;
f2 = f(2 : N+1);  %2 lancamento

for i = 1 : N
    if mod(f2(i), 2) == 0
        soma_par = soma_par + 1;
    end
end

prob_B = soma_par/N

% C – pelo menos um dos valores é igual a 5
ser5 = 0;

for i = 1 : N
    if f(1, i) == 5 || f(2, i) == 5
        ser5 = ser5 + 1;
    end
end
prob_C = ser5/(N*lancamentos)

% D – nenhum dos valores é igual a 1
nao_ser1 = 0;

for i = 1 : N
    if f(1, i) ~= 1 && f(2, i) ~= 1
        nao_ser1 = nao_ser1 + 1;
    end  
end

prob_D = nao_ser1 / (N*lancamentos)

% better alternative
faces = 6;
lancamentos = 2;
testes = 1e5;

res = randi(faces, lancamentos, testes);

A = sum(sum(res) == 9) / testes
B = sum(rem(res(2,:), 2) == 0) / testes
C = sum(sum(res(:,:) == 5) >= 1) / testes
D = sum(sum(res(:,:) ~= 1) ~= 2) / testes