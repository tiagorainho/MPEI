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
    xlabel("posi��o")
    ylabel("num chaves mapeadas")
    drawnow;
    subplot(1,2,2);
    histogram(hashtable);
    xlabel("n. chaves mapeadas");
    ylabel("n. posi��es");
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

%% Segunda Vers�o
clc;
N = 1000;
carga = 0.8;
min = 3;
MAXIMO = 20;
SIZE = N/0.8;
% distribui��o normal com m�dia 10 e vari�ncia 5
var = 5;
media = 10;
dist = sqrt(5)*randn(1, N) + media;

subplot(1, 3, 1);
histogram(dist, 100);
title("Distribui��o Normal")
keys = RandomStringV2(dist);

hashtable = zeros(1, SIZE);
hash = zeros(1, N);
index = zeros(1, N);

for i = 1:N
    subplot(1,3,2);
    bar(hashtable);
    title("Hashtable");
    xlabel("posi��o")
    ylabel("num chaves mapeadas")
    drawnow;
    subplot(1,3,3);
    histogram(hashtable);
    xlabel("n. chaves mapeadas");
    ylabel("n. posi��es");
    drawnow;
    
    keysChar = char(keys(i));
    hash(i) = string2hash(keysChar);
    index(i) = adjustToSize(hash(i),SIZE);
    hashtable(index(i)) = hashtable(index(i)) + 1;
end

[valorEsperado,variancia] = stats(hashtable);
fprintf("valor esperado: %f\n",valorEsperado);
fprintf("variancia: %f\n",variancia);

%% Terceira Vers�o usando DJB31MA
clc;
N = 100;
carga = 0.8;
min = 3;
MAXIMO = 20;
SIZE = N/0.8;
% distribui��o normal com m�dia 10 e vari�ncia 5
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
    xlabel("posi��o")
    ylabel("num chaves mapeadas")
    drawnow;
    subplot(1,3,3);
    histogram(hashtable);
    xlabel("n. chaves mapeadas");
    ylabel("n. posi��es");
    drawnow;
    
    keysChar = char(keys(i));
    hash(i) = DJB31MA(keysChar, 250);
    index(i) = adjustToSize(hash(i),SIZE);
    hashtable(index(i)) = hashtable(index(i)) + 1;
end

[valorEsperado,variancia] = stats(hashtable);
fprintf("valor esperado: %f\n",valorEsperado);
fprintf("variancia: %f\n",variancia);

%% Quest�o final
%
%  A fun��o de hash n�o conseguiu espalhar as chaves/strings uniformente pela
%  hastable, pois sendo assim, o valor esperado seria 1. No caso pr�tico
%  deste exec�cio, em que o factor de carga � 0.8, implicaria que as N = 1000 chaves geradas aleat�riamente, estariam
%  em 1000 posi��es diferentes entre as 1250 posi��es totais da hashtable.
%
%  No nosso caso, nas v�rias simula��es obtivemos um valor esperado, 
%  associado � vari�vel aleat�ria X (que indica o n�mero de chaves mapeadas
%  para cada posi��o da hashtable) pr�ximo
%  de 1.25, o que indica, como visualizado no histogram, para a maioria das
%  posi��es da hashtable � mapeada 1 e apenas 1 chave.
