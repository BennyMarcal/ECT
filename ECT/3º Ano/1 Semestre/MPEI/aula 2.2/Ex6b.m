%% b

p = 1/1000;
n = 8000;
l = n * p;
k = 7;

final = (l.^k/factorial(k))* exp(-1*l);