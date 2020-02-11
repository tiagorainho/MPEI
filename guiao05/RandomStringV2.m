function keysinhas = RandomString(distNormal)
    keys = strings(1, length(distNormal));
    alpha = ['A':'Z' 'a':'z'];
    for x = 1:length(distNormal)
        length1 = length(distNormal(x));
        res='';
        for i=1:round(distNormal(x))
            res(i) = alpha(randi(length(alpha)));
        end
        keys(x) = res;
    end
    keysinhas = strip(keys);
end