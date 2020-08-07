% This cost function calculator used to assign weights for each value.
function F = costF(x,type)
    if(type == 'min')
        F = 1./(exp(0.01*x));
    elseif(type == 'max')
        F = exp(0.01*x);
    end
end