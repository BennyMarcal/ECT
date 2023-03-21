clear all;

d = 0:7;
p = ones(1,6)/6;
b = [0 cumsum(p) 1];

stairs(d,b),xlabel('x'),ylabel('y(x)')