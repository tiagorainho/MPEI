clc
p = 1/1000;
n = 8000;
alfa = n * p;
k = 7;

%nchoosek(n,k) = factorial(n)/factorial(k)*factorial(n-k)
bin = nchoosek(n, k)*p^k*(1-p)^(n-k)

poi = (alfa^k/factorial(k))*exp(-alfa)