%% a)
clc
N = 10e5;
pCara = 0.5;
prob = rand(4,N) > pCara;
ncoroas = sum(prob);

px = zeros(1,5);

for i = 1:5
    px(i) = sum(ncoroas == (i-1)) / N;
end
px

% b)
variancia = var(ncoroas);
media = mean(ncoroas);

% c)

stem([1, 2, 3, 4, 5],px)




