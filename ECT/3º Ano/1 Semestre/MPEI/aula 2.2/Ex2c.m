clear all;

n = 0 : 4;
p = [0.9 0.09 0.01];
b = [0 cumsum(p) 1];

stairs(n, b),xlabel('x'),ylabel('y(x)')