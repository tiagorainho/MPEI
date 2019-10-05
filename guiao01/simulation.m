function probSimulacao = simulation(N,p,k,n)
    lancamentos = rand(n,N) > p;
    sucessos = sum(lancamentos) == k;
    probSimulacao = sum(sucessos) / N;
    
    index = 20
    for k=0:index
       
    end
end
