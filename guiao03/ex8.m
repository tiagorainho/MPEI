clc
x = 1:4;
f = (x + 5)/30;

if min(f) >= 0 && max(f) <= 1 && sum(f) == 1
    fprintf('sim')
else
    fprintf('nao')
end

