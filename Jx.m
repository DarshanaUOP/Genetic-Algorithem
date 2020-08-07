function Jo = Jx(x)
    pop = x;
    Jo = 3*pop.^2 + 0.5*pop.^3 - 40*pop +40*cos(pi*pop);
end