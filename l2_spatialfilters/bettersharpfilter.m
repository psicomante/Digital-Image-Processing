function G = bettersharpfilter(I, c, type)
    if nargin < 5
        type = 'replicate';
    end
    
    I = double(I);
    
    F = isolaplacianfilter(I, type);
    G = uint8(I + c .* F);
end