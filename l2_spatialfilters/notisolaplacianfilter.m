function G = notisolaplacianfilter(I, type, dir)
    if nargin < 2
        type = 'replicate';
        dir = 'horizontal';
    end
    if strcmp(dir,'horizontal');
        kernel = [0 0 0; -2, 4, -2; 0 0 0];
    else 
        kernel = [0 -2 0; 0, 4, 0; 0 -2 0];
    end
    
    G = imfilter(I, kernel, type);
end