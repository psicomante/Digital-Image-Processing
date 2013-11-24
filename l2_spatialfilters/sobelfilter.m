function G = sobelfilter(I, type, dir)
    if nargin < 2
        type = 'replicate';
        dir = 'horizontal';
    end
    if strcmp(dir,'horizontal');
        kernel = [-1 -2 -1; 0 0 0; 1 2 1];
    else % vertical
        kernel = [-1 0 1; -2 0 2; -1 0 1];
    end
    
    G = imfilter(I, kernel, type);
end