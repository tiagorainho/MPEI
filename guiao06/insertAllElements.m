function f = insertAllElements(func, f, k, N)
    for i=1:length(func)
        f = addElement(func{i}, f, k);
    end
end