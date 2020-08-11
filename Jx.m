% The function to find optimum point

function Jo = Jx(x)
    X = x;
    Jo = 3*X.^2 + 0.5*X.^3 - 40*X +40*cos(pi*X);
end
