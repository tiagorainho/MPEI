%% Codigo 1
clc
p = 0.5;
k = 2;
n = 3;
prob = factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)

%% Codigo 2 versao 1
clc
nSim = 100000;
experiencias = rand(3,nSim);
lancamentos = experiencias > 0.5;  % 0.5 pq a prob de sair cara é 50%
resultados = sum(lancamentos);
sucessos = resultados == 2;
probSimulacao = sum(sucessos)/nSim

%% codigo 2 versao 2
clc
N = 100000; % numero de experiencias
p = 0.5;    % probabilidade de sair cara
k = 2;      % numero de caras
n = 3;      %numero de lancamentos
lancamentos = rand(n,N) > p;
sucessos = sum(lancamentos) == k;
probSimulacao = sum(sucessos)/N

%% codigo 2 versao 3
clc
N = 100000; % numero de experiencias
p = 0.5;    % probabilidade de sair cara
k = 6;      % numero de caras
n = 15;      %numero de lancamentos
lancamentos = rand(n,N) > p;
sucessos = sum(lancamentos) == k;
probSimulacao = sum(sucessos)/N

%% ex4
clc
simulation(1000,0.5,6,15)




