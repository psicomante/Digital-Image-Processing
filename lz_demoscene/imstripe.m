% generation of cosine wave by frequency
function G = imstripe(imsize, stripes)
    edge = imsize/2;
    step = imsize/512;
    f = stripes / 2;
    
    [X,Y] = meshgrid(-edge:step:edge);
    X = X / imsize;
    Y = Y / imsize;
    
    G = floor(mod(Y*f+X*f,2.0));
end
