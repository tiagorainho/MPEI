% função que gera um array de strings com comprimento ditado por uma 
% distribuição normal.

function keysinhas = RandomString(distNormal)
    keys = strings(1, length(distNormal));
    alpha = ['A':'Z' 'a':'z'];
    for x = 1:length(distNormal)
        res='';
        for i=1:round(distNormal(x))
            res(i) = alpha(randi(length(alpha)));
        end
        keys(x) = res;
    end
    keysinhas = strip(keys);
end