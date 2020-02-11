function totoloto = Totoloto(Nbolas, Nsub)
    bolas = 1:Nbolas;
    totoloto = zeros(1,Nsub);
    count = 0;
    i = 0
    while i<Nsub
        ret = randi(Nbolas, 1, 1);
        value = bolas(1,ret);
        if value > 0
            bolas(1,ret) = -1;
            count = count+1;
            totoloto(1,count) = ret;
            i = i + 1;
        end
    end
end