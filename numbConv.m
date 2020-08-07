function bin = numbConv(x)
    y = round(25.5*x);
    bin = de2bi(y);
    
    % fill remainings as zero
    sizeBIN = size(bin);
    lengthBIN = sizeBIN(2);
    
    % calculate remaining zeros
    zeroMat = zeros(1,(8 - lengthBIN));
    
    % add remaining zeros into bin
    bin = [zeroMat bin];
end