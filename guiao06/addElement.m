function f = addElement(value, f, k)
    for i=1:k
        value = [value,num2str(i)];
        hash = string2hash(value);
        index = adjustToSize(hash, length(f));
        f(index,1) = 1;
    end
end