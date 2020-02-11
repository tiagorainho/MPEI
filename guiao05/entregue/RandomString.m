function res = RandomString(min, max)
    size = randi(max-min,1,1) + min;
    alpha = ['A':'Z' 'a':'z'];
    res='';
    for i=1:size
        res(i) = alpha(randi(length(alpha)));
    end
end