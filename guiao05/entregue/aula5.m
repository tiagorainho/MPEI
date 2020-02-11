%% ex 1)
clc
randomString = RandomString(3,20)
tamanhoDaString = length(randomString)

%% ex 3)
clc
N = 1000;
carga = 0.8;
min = 3;
MAXIMO = 20;
SIZE = N/0.8;
hashtable = zeros(1, SIZE);
for i=0:N
    subplot(1,2,1);
    bar(hashtable);
    title("Hashtable");
    xlabel("posição")
    ylabel("num chaves mapeadas")
    drawnow;
    subplot(1,2,2);
    histogram(hashtable);
    xlabel("n. chaves mapeadas");
    ylabel("n. posições");
    drawnow;
    
    rs = RandomString(min, MAXIMO);
    hash = string2hash(rs);
    index = adjustToSize(hash,SIZE);
    hashtable(index) = hashtable(index) + 1;
end
% ex 4)
[valorEsperado,variancia] = stats(hashtable);

fprintf("valor esperado: %f\n",valorEsperado);
fprintf("variancia: %f\n",variancia);

%% Segunda Versão
clc;
N = 1000;
carga = 0.8;
min = 3;
MAXIMO = 20;
SIZE = N/0.8;
% distribuição normal com média 10 e variância 5
var = 5;
media = 10;
dist = sqrt(5)*randn(1, N) + media;

subplot(1, 3, 1);
histogram(dist, 100);
title("Distribuição Normal")
keys = RandomStringV2(dist);

hashtable = zeros(1, SIZE);
hash = zeros(1, N);
index = zeros(1, N);

for i = 1:N
    subplot(1,3,2);
    bar(hashtable);
    title("Hashtable");
    xlabel("posição")
    ylabel("num chaves mapeadas")
    drawnow;
    subplot(1,3,3);
    histogram(hashtable);
    xlabel("n. chaves mapeadas");
    ylabel("n. posições");
    drawnow;
    
    keysChar = char(keys(i));
    hash(i) = string2hash(keysChar);
    index(i) = adjustToSize(hash(i),SIZE);
    hashtable(index(i)) = hashtable(index(i)) + 1;
end

[valorEsperado,variancia] = stats(hashtable);
fprintf("valor esperado: %f\n",valorEsperado);
fprintf("variancia: %f\n",variancia);

%% Terceira Versão usando DJB31MA
clc;
N = 100;
carga = 0.8;
min = 3;
MAXIMO = 20;
SIZE = N/0.8;
% distribuição normal com média 10 e variância 5
var = 5;
media = 10;
dist = sqrt(5)*randn(1, N) + media;

subplot(1, 3, 1);
histogram(dist, 100);
keys = RandomStringV2(dist);

hashtable = zeros(1, SIZE);
hash = zeros(1, N);
index = zeros(1, N);

for i = 1:N
    subplot(1,3,2);
    bar(hashtable);
    title("Hashtable");
    xlabel("posição")
    ylabel("num chaves mapeadas")
    drawnow;
    subplot(1,3,3);
    histogram(hashtable);
    xlabel("n. chaves mapeadas");
    ylabel("n. posições");
    drawnow;
    
    keysChar = char(keys(i));
    hash(i) = DJB31MA(keysChar, 250);
    index(i) = adjustToSize(hash(i),SIZE);
    hashtable(index(i)) = hashtable(index(i)) + 1;
end

[valorEsperado,variancia] = stats(hashtable);
fprintf("valor esperado: %f\n",valorEsperado);
fprintf("variancia: %f\n",variancia);

%% Questão final
%
%  A função de hash não conseguiu espalhar as chaves/strings uniformente pela
%  hastable, pois sendo assim, o valor esperado seria 1. No caso prático
%  deste execício, em que o factor de carga é 0.8, implicaria que as N = 1000 chaves geradas aleatóriamente, estariam
%  em 1000 posições diferentes entre as 1250 posições totais da hashtable.
%
%  No nosso caso, nas várias simulações obtivemos um valor esperado, 
%  associado à variável aleatória X (que indica o número de chaves mapeadas
%  para cada posição da hashtable) próximo
%  de 1.25, o que indica, como visualizado no histogram, para a maioria das
%  posições da hashtable é mapeada 1 e apenas 1 chave.
