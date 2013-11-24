function G = sharpfilter(I, c, type)
    if nargin < 5
        type = 'replicate';
    end
    F = isolaplacianfilter(double(I), type);
    G = uint8(double(I) + c .* F);
end