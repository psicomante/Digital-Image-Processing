function G = isolaplacianfilter(I, type)
    if nargin < 2
        type = 'replicate';
    end
    G = imfilter(I, fspecial('laplacian', 0), type);
end