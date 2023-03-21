%% b

N = 1e5;
m = 14;
o = 2;
experiencias = m + randn(1,N)*o;

class = sum(experiencias> 10 & experiencias<18)/N