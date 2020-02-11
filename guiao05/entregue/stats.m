function [valorEsperado,variancia] = stats(hashtable)
valorEsperado = mean(hashtable(hashtable > 0));
variancia = var(hashtable);
end