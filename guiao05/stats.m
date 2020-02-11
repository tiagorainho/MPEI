function [valorEsperado,variancia] = stats(hashtable,SIZE)
valorEsperado = 0;
for i=1:SIZE
    valorEsperado = valorEsperado + hashtable(i,1)*(1/SIZE);
end
variancia = var(hashtable);
end