%%1a)
clc
% matrix transição de estados
T = [0.7 0.8; 0.3 0.2];
%vetor estado
v = [1; 0];
%Tsqr = T^2;
%v2 = Tsqr * v
v1 = T * v;
v2 = T * v1;
fprintf("vetor estado v2, sabendo que o aluno esteve na aula");
v2(1)
%% 1b)
clc
% vetor estado
v = [0; 1];
v1 = T * v;
v2 = T * v1;
fprintf("vetor estado v2, sabendo que o aluno não esteve na aula");
v2(1)
%% 1c)
clc
v = [1; 0] % esteve presente
% matriz transição relativa a 30 transições 
T30 = T^30;
% vetor estado v30
v30 = T30 * v;
fprintf("vetor estado v30, sabendo que o aluno esteve na 1a aula do semestre");
v30(1)
%% 1d)
clc
% matriz estado v0
vX = [0.85; 0.15];
probFaltar = [];
for i = 1:30
    vX = T * vX;
    probFaltar = [probFaltar vX(2)];
end
plot(probFaltar);

%% 2a) e b)
clc
grupo = {"A", "B", "C"};
% matriz identidade
T = [1/3 1/4 0.0
    1/3 11/20 1/2
    1/3 1/5 1/2];
% matriz estocástica, entradas não-negativas e soma de cada coluna é 1- verifica-se
% vetor estado inicial
v = [60; 15; 15];

% 2c)
T30 = T^30;
v30 = T30 * v;
v30Rounded = round(v30);
fprintf("Numero de alunos ao fim de 30 aulas em cada turma:\n");
fprintf("(Distribuição inicial 60, 15, 15)\n");
for i = 1:3
    fprintf("grupo %s: %d alunos\n",grupo{i}, v30Rounded(i));
end
% d)
v = [30; 30; 30];
v30 = T30 * v;
v30Rounded = round(v30);
fprintf("Numero de alunos ao fim de 30 aulas em cada turma:\n");
fprintf("(Distribuição inicial 30, 30, 30)\n");
for i = 1:3
    fprintf("grupo %s: %d alunos\n",grupo{i}, v30Rounded(i));
end
%% 3)
clc 
% matriz transição
matriz = rand(20, 20);
T = matriz./sum(matriz); % necessário para criar uma matriz estocástica!(soma das colunas dá 1)
% vetor estado inicial, está no 1o estado
v = zeros(20, 1);   v(1) = 1;
%matriz transição relativa a 20 estados
T20 = T^20;
v20 = T20 * v;
fprintf("Probabilidade de transiçao entre o primeiro e o ultimo estado em 20: %d\n", v20(20));

%matriz transição relativa a 20 estados
T40 = T^40;
v40 = T40 * v;
fprintf("Probabilidade de transiçao entre o primeiro e o ultimo estado em 40: %d\n", v40(20));

%matriz transição relativa a 20 estados
T100 = T^100;
v100 = T100 * v;
fprintf("Probabilidade de transiçao entre o primeiro e o ultimo estado em 100: %d\n", v40(20));

%% 4a)
clc
T = [ 0.16 0.36 0.24 0.24  
      0.0 0.0 0.0 1.0
      0.0 0.0 0.0 1.0
      0.36 0.24 0.24 0.16];
%b)
v = [1; 0; 0; 0];
v10 = (T^10)*v;
fprintf("vetor estado v10:\n") 
v10
%% 5a)
clc
%     S   N   C
T = [0.7 0.2 0.3    
     0.2 0.3 0.3
     0.1 0.5 0.4];
 %a)
 v0 = [1; 0; 0];
 v2 = (T^2) * v0
 fprintf("Probabilidade de dar chuva é %d \n", v2(3));
 % c)
 n = 20;%input("Introduza o n parametrízável: ");
 Tx = T;
 probs = Tx(:);
for i = 1:n-1
    Tx = Tx*T;
    probs = [probs Tx(:)];
end
plot(probs');
%d)
%%while(max(abs(T1(:)-T2))){

    
%% 6
clc
%a)
T = [0.8 0.0 0.3 0.0
     0.2 0.9 0.2 0.0
     0.0 0.1 0.4 0.0
     0.0 0.0 0.1 1.0];
%b)
v = [1; 0; 0; 0];
T1000 = T^1000;
v1000 = T1000 * v;
fprintf("Probabilidade de estar no 2o estado: %d", v1000(2));
% apesar de a probabilidade de estar no 2o estado e voltar ao 2o estado
% na iteração seguinte, o 4o estado é absorvente!
%c)
T2 = T*T
T10 = T^10
T100 = T^100
fprintf("Matrizes representam a probabilidade de trasição de i para j.\n");
fprintf("i1j1 i2j1 i3j1\n");
fprintf("i1j2 i2j2 i3j2\n");
fprintf("i1j3 i2j3 i3j4\n\n");
%d)
%matriz canónica
T = zeros(4);
T(1,1)=0.8; T(2,1)=0.2;
T(2,2)=0.9; T(3,2)=0.1;
T(1,3)=0.3; T(2,3)=0.2; T(3,3)=0.4; T(4,3)=0.1;
T(4,4)=1;
% Q
Q = T(1:3, 1:3);
%e)
% F
aux = eye(size(Q))-Q;
F = inv(aux);
%f)
t = sum(F);
fprintf("Num passos médio necessários para atingir a página 4, começando na página 1: %.2d\n", t(1));
fprintf("Num passos médio necessários para atingir a página 4, começando na página 2: %.2d\n", t(2));
fprintf("Num passos médio necessários para atingir a página 4, começando na página 3: %.2d\n", t(3));
%g)
fprintf("Tempo até à absorção do 1o estado: %.2d\n", t(1));
fprintf("Tempo até à absorção do 2o estado: %.2d\n", t(2));
fprintf("Tempo até à absorção do 3o estado: %.2d\n", t(3));
%h)
% diminuir a probabilidade de transitar para o estado absorvente
T = [0.8 0.0 0.3 0.0
     0.2 0.9 0.25 0.0
     0.0 0.1 0.4 0.0
     0.0 0.0 0.05 1.0];
% matriz T canónica
T = zeros(4);
T(1,1)=0.8; T(2,1)=0.2;
T(2,2)=0.9; T(3,2)=0.1;
T(1,3)=0.3; T(2,3)=0.25; T(3,3)=0.4; T(4,3)=0.05;
T(4,4)=1;
% Q
Q = T(1:3, 1:3);
% F
aux = eye(size(Q))-Q;
F = inv(aux);
% tempo até à absorção
t = sum(F);
fprintf("(matriz transição modificada)\n");
fprintf("Tempo até à absorção do 1o estado: %.2d\n", t(1));
fprintf("Tempo até à absorção do 2o estado: %.2d\n", t(2));
fprintf("Tempo até à absorção do 3o estado: %.2d\n", t(3));

%% 7)
clc
T = [4/5 1/10 1/20
     1/5 6/10 2/10
     0.0 3/10 15/20];
 
v = [100; 200; 30];
fprintf("inicial: \n")
fprintf("Ana: %d $, Bernardo: %d $, Catarina: %d $\n", v(1), v(2), v(3));
%a)
fprintf("4o dia:\n");
v4 = (T^3) * v;
v4 = round(v4);
fprintf("Ana: %d $, Bernardo: %d $, Catarina: %d $\n", v4(1), v4(2), v4(3));
%b)
v365 = (T^365) * v;
v365 = round(v365);
fprintf("365o dia:\n");
fprintf("Ana: %d $, Bernardo: %d $, Catarina: %d $\n", v365(1), v365(2), v365(3));
%c)
Tx = T;
count = 0;
while(1)
   Tx = Tx*T;
   vx = Tx * v;
   count = count + 1;
   if(vx(3) > 130)
       fprintf("A catarina tem 130 $ após %d transições", count);
       break;
   end
end
