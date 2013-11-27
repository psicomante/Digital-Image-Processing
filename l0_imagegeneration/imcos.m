% generation of cosine wave by frequency
% imsize: image size
% fH: horizontal frequency
% fV: vertical frequency
function G = imcos(imsize, fH, fV)

y = 0:imsize;

sV = ones(1, imsize);
sH = sV;

if (fH > 0)
    sH = cos(2*pi*fH*y/(imsize+1));
end

if (fV > 0)
    sV = cos(2*pi*fV*y/(imsize+1));
end

% matrix product to build the image
G = sV'*sH;