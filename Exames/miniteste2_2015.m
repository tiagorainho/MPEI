%% ex 2.a)
clc
%a)
T = [0.1 0.1 0 0.5;
    0.84 0.7 0 0.1;
    0.05 0.1 0.8 0.1;
    0.01 0.1 0.2 0.3];

nTrocas = 2*8;
v = [1; 2; 10; 5];

mT = T^nTrocas;
resp = mT * v;

fprintf("Angola: " + resp(1) + " tons\n")
fprintf("Brasil: " + resp(2) + " tons\n")
fprintf("Chile: " + resp(3) + " tons\n")
fprintf("Dinamarca: " + resp(4) + " tons\n")

%b)

% como assim -------------------------------------------------

%c)
count = 1;
while(1)
    mT = T^count;
    resp = mT * v;
    if resp(4)<2
        fprintf("valor: " + resp(4))
        break;
    end
    count = count +1;
end


%% 2.a)
clc
%a)
T = [0.1 0.1 0 0.5;
    0.84 0.7 0 0.1;
    0.05 0.1 0.8 0.1;
    0.01 0.1 0.2 0.3];

v = [1; 2; 10; 5];
mT = T^7;
resp = mT * v

%b)
I = eye(4);
F = (I-T)^(-1)

%c)
threshHold = 2;
count = 1;
while(true)
    mT = T^count;
    resp = mT * v;
    if(resp(4)<threshHold)
        fprintf("Dinamarca na transicao " + count + " com " + resp(4));
        break;
    end
    count = count+1;
end







