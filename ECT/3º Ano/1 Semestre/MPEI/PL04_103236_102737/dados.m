clear all;
dic = readcell('films.txt', 'Delimiter', '\t');

udata = load('u.data');
u = udata(1:end,1:3);

utilizadores = unique(u(:,1));
N = length(utilizadores);

Set = cell(N,1);

for n = 1:N
    films = find(u(:,1) == utilizadores(n));
    Set{n} = [Set{n} u(films,2)];
end