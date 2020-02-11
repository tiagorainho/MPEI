%% ex 1 e 2)
clc
paises_test = {'Portugal', 'Suiça'};
paises = {'Alemanha', 'Espanha', 'Portugal'};
N = 10; % length of bloom filter
k = 3; % n of hash functions
f = init(N);
f = insertAllElements(paises, f, k, N);

for i=1:length(paises_test)
    aux = isElement(paises_test{i}, f, k);
    if aux==1
        fprintf("%s is an element\n", paises_test{i});
    else
        fprintf("%s is not an element\n", paises_test{i});
    end
end

%% ex 3
clc
nCaracteres = 40;
N = 1000;
SIZE = 8000;
k = 3;

str = '';
f = init(SIZE);
for i=1:N
    rs = RandomString(40,40);
    str = rs;
    f = addElement(rs, f, k);
end

aux = printIsElement(str, f, k);

