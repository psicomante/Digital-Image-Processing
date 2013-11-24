% generation of cosine wave by frequency
function G = implanedef(imsize)
    edge = imsize;
    step = 0.1;
    
    [X,Y] = meshgrid(0:step:edge);
    
    X=X/imsize;
    Y=Y/imsize;

	Plane = Y + cos(X);

 	Gx = X/Plane;
    Gy = 1.0./abs(Plane);
    %col = imstripe(256, 5);
    G = col;
end
