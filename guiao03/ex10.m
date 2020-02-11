n = 100000;
len = 10;

% usar max e min para fazer os ex a) b) e c)
min = 1;
max = 6;

% calcular rands
a = len*rand(1, n);

% calcular area
res = sum(a>min & a<max)/n