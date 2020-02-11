

function f = printIsElement(value, f, k)
    aux = isElement(value, f, k);
    if aux==1
        fprintf("%s is an element\n", value);
    else
        fprintf("%s is not an element\n", value);
    end
end