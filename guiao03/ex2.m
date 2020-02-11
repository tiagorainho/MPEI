%% a)

N = 90 + 9 + 1

prob5 = 90 / N;
prob50 = 9 / N;
prob100 = 1 / N;

%b)
probmassa = [prob5, prob50, prob100];

%c)
stem([5, 50, 100], [prob5, prob50, prob100])         % once(nLinhas, nColunas)
