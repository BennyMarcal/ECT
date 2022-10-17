clear all

dardos = [10:10:100];
alvos = [1e3 1e5];
tests = 1e6;

for i=1 : length(alvos)
    subplot(2,1,i)

    for j=1 : length(dardos)
        prob(j) = calcTests(alvos(i),dardos(j),tests);
    end

    plot(prob)
end

function [y] = calcTests(alvos,dardos,tests)
    lancamentos = randi(alvos,dardos,tests);

    y = 0;
    for i = 1 : tests
        y = y(1) +  double( length(unique(lancamentos(:, i))) < dardos );
    end
    y = y ./ tests;
end