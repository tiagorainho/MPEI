%% ex 1)
clc
randomString = RandomString(3,20);

%% ex 3)
clc
N = 1000;
carga = 0.8;
min = 5;
MAXIMO = 15;
SIZE = floor((1-carga + 1)*N);
hashtable = zeros(SIZE,1);
for i=0:SIZE-1
    subplot(1,2,1)
    bar(hashtable)
    drawnow
    subplot(1,2,2)
    histogram(hashtable)
    drawnow
    
    rs = RandomString(min,MAXIMO);
    hash = string2hash(rs);
    index = adjustToSize(hash,SIZE);
    hashtable(index,1) = hashtable(index,1) + 1;
end
                % ex 4)
[valorEsperado,variancia] = stats(hashtable, SIZE);
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
keys = RandomStringV2(dist);

hashtable = zeros(1, SIZE);
hash = zeros(1, N);
index = zeros(1, N);

for i = 1:N
    subplot(1,3,2);
    bar(hashtable);
    drawnow;
    subplot(1,3,3);
    histogram(hashtable);
    drawnow;
    
    keysChar = char(keys(i));
    hash(i) = string2hash(keysChar);
    index(i) = adjustToSize(hash(i),SIZE);
    hashtable(index(i)) = hashtable(index(i)) + 1;
end

[valorEsperado,variancia] = stats(hashtable, SIZE);
fprintf("valor esperado: %f\n",valorEsperado);
fprintf("variancia: %f\n",variancia);
%% Terceira Versão
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
keys = RandomStringV2(dist);

hashtable = zeros(1, SIZE);
hash = zeros(1, N);
index = zeros(1, N);

for i = 1:N
    subplot(1,3,2);
    bar(hashtable);
    drawnow;
    subplot(1,3,3);
    histogram(hashtable);
    drawnow;
    
    keysChar = char(keys(i));
    hash(i) = DJB31MA(keysChar, 250);
    index(i) = adjustToSize(hash(i),SIZE);
    hashtable(index(i)) = hashtable(index(i)) + 1;
end

[valorEsperado,variancia] = stats(hashtable, SIZE);
fprintf("valor esperado: %f\n",valorEsperado);
fprintf("variancia: %f\n",variancia);[valorEsperado,variancia] = stats(hashtable, SIZE);
fprintf("valor esperado: %f\n",valorEsperado);
fprintf("variancia: %f\n",variancia);
