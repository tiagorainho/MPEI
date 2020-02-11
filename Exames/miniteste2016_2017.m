%% ex 1)
clc
%a)
T = [0.9 0.5 0.5;
    0.09 0.4 0.4;
    0.01 0.1 0.1];

v = [1; 0; 0];

%b)

mT = T^4;
resp = mT * v;
fprintf("Prob de nao haver erro no quarto pacote: " + resp(1) + "\n")
fprintf("Prob de haver 1 erro no quarto pacote: " + resp(2) + "\n")
fprintf("Prob de haver 2 ou mais erros no quarto pacote: " + resp(3) + "\n")

%c)
threshHold = 0.001;
counter = 1;
anterior = zeros(3,1);
while 1
    mT = T^counter;
    resp = mT * v;
    if abs(resp(1) - anterior(1)) < threshHold && abs(resp(2) - anterior(2)) < threshHold && abs(resp(3) - anterior(3)) < threshHold
        soma = resp(2) + resp(3);
        fprintf("Prob de perda de pacotes: " + resp(3) + "\n")
        fprintf("Prob de perda de pacote sem corretor de erros: " + soma)
        break;
    end
    anterior = resp;
    counter = counter+1;
end

%% ex 2.a)
clc
%a)
T = [0   1/2 1/3 1/4 0;
     1/2 0   0   1/4 1/2;
     1/2 1/2 1/3 1/4 0;
     0   0   0   0   1/2;
     0   0   1/3 1/4 0];

B = 0.8;
N = ones(5,5)/5;
A = B*T+(1+B)*N

%b)
mT = T^10;
v = ones(5,1)/5;
resp = mT*v

%% ex 3)
clc

T = [0.7 0.2 0 0 0 0;
    0.2 0 0.3 0 0 0;
    0 0.6 0.3 0 0 0;
    0.1 0.2 0.3 0.1 0 0;
    0 0 0 0.4 1 0;
    0 0 0.1 0.5 0 1];

mT = T^10;
v = [1; 0; 0; 0; 0; 0];
resp = mT * v;
fprintf("prob de o 10 caracter ser um c sabendo q começou com um a: " + resp(3) + "\n");
mT = T^15;
resp = mT * v;
fprintf("prob de o 15 caracter ser um c sabendo q começou com um d: " + resp(4) + "\n");

%c)
Q = T(1:4,1:4);
I = eye(4);
F = (I-Q)^(-1);
s = sum(F);
fprintf('Comprimento = %f\n', t(3))






