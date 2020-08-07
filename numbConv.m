% convert double numbers into binary values 
% corresponding to the number of bits will consider
function bin = numbConv(x)
    
    y = round(25.5*x);  % y = (255/10)*x 
                        % 255 = (2^8 - 1) which is contized levels 
    bin = de2bi(y);
    
    % fill remainings as zero
    sizeBIN = size(bin);
    lengthBIN = sizeBIN(2);
    
    % calculate remaining zeros
    zeroMat = zeros(1,(8 - lengthBIN));
    
    % add remaining zeros into bin
    bin = [zeroMat bin];
end