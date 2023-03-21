%% a

N = 1e5;
lancamentos = 4;
xi = 0:4; % numero de dif variaveis
px = zeros(1,5);  % probabilidades

experiencias = randi(0:1, lancamentos, N);
%ou experiencias = rand(lancamentos, N)> 0.5

for i = 1:length(px)
    	px(i) = sum(sum(experiencias) == i-1) / N;
end

stem(xi, px)
xlabel('xi')
ylabel('px')