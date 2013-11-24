% change the display range to 8bit per pixel - 0..255;
function G = im8bit(I, frange) 
    imin = min(I(:));
    imax = max(I(:));
    irange = abs(imin - imax);
    
    if imin < 0
        ioffset = -imin;
    else
        ioffset = imin;
    end
    
    t = irange / frange;
    G = uint8((I+ioffset) ./ t);