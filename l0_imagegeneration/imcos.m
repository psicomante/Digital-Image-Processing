% generation of cosine wave by frequency
% imsize: image size
% fH: horizontal frequency
% fV: vertical frequency
function G = imcos(imsize, fH, fV)
    y = 0:imsize;

    sH = cos(2*pi*fH*y/(imsize+1));
    sV = cos(2*pi*fV*y/(imsize+1));

    % matrix product to build the image
    G = sV'*sH;
end