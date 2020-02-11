%% Ex1 a)
clc
L = 2;      %Linhas
N = 1e5;    %Colunas

a = rand(L, N)>0.5;
b = sum(a)>=1;

respA = sum(b)/N
%% Ex1 b)
clc
respB = 1 - 1/4

%% Ex1 c)
clc
L = 2;
C = 1e5;

a = rand(L,C)>0.5;
b = sum(a) == 2;
c = sum(a) >= 1;
resp = sum(b)/sum(c)

%% Ex1 d)
clc
L = 2;
C = 1e5;

a = rand(L,C)>0.5;
b= sum(a) == 2;
c = a(1,:);
res = sum(b)/sum(c)

%% Ex2 a)
clc
L = 10;
C = 1e7;

a = rand(L,C)>0.5;
b = sum(a) == 10;
resp = sum(b)/C



%% Ex2 b)
clc
L = 11;
C = 1e7;

a = rand(L,C)>0.5;
b = sum(a(1:10,:)) == 10;
c = sum(a) == 11;

resp = sum(c)/sum(b)

%% Ex2 c)


%% Ex3 a)
A = 0.9;    % P(B\A1)           % ter cancro de mama e dar positivo
B = 0.1;   % P(B\A2)           % nao ter cancro de mama e dar positivo 
C = 1/10000;       % prob de ter cancro de mama

%  ( P(B\A1) * P(A1) ) / ( P(B\A1)*P(A1) + P(B\A2)*P(A2) )

resp = 




