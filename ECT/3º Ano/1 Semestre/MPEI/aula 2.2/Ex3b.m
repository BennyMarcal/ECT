%% b 

N = 1e5;
lancaments = 4;
xi = 0:4; % numero de dif variaveis
px = zeros(1,5);  % probabilidades
experiencias = randi(0:1, 4, N);

coroas = sum(experiencias);

for i = 1:N
    if(coroas(i) == 0)
        px(1) = px(1) + 1;
    end
    if(coroas(i) == 1)
        px(2) = px(2) + 1;
    end
    if(coroas(i) == 2)
        px(3) = px(3) + 1;
    end
    if(coroas(i) == 3)
        px(4) = px(4) + 1;
    end
    if(coroas(i) == 4)
        px(5) = px(5) + 1;
    end
end

for i = 1:length(px)
    px(i) = px(i)/N;
end