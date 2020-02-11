%% a)

lados=6;
dados=1;
N=1e6;

%px = floor(rand(dados, N)*(lados+1));
px = randi(6, 1, N);

% funcao prob massa
prob = [sum(px == 1)/N, sum(px == 2)/N, sum(px == 3)/N, sum(px == 4)/N, sum(px == 5)/N, sum(px == 6)/N];

stem(1:6,prob)

% funcao distribuicao acumulada
acum = [0, cumsum(prob), 0];

stairs(0:7, acum)