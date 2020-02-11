%% a)
clc
alfa = 15;
k = 0;
poi = alfa^k/factorial(k)*exp(-alfa);

%% b)
clc
cont = 0;
%for k=0:10
%    cont = cont+ alfa^k/factorial(k)*exp(-alfa)
%end
%p = 1-cont

c = alfa.^(0:10)./factorial(0:10)*exp(-alfa);

p = 1-sum(c)

