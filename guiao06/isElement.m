function num = isElement(value, f, k)
    num = 1;
    for i=1:k
        value = [value,num2str(i)];
        hash = string2hash(value);
        index = adjustToSize(hash, length(f));
        if f(index,1) == 0
            num = 0;
            break;
        end
    end
end