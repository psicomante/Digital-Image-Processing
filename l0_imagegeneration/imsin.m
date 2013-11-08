% generation of sin wave by frequency
% imsize: image size
% fH: horizontal frequency
% fV: vertical frequency
function G = imsin(imsize, fH, fV)
    y = 0:imsize;

    sH = sin(2*pi*fH*y/(imsize+1));
    sV = sin(2*pi*fV*y/(imsize+1));

    % matrix product to build the image
    G = sV'*sH;
end