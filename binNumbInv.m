% this function is used to convert binary strings into decimal values
function x =  binNumbInv(bin)
    y = bi2de(bin);
    x = (10/255)*y;
end