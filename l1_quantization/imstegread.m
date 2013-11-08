% read the useless steganographed image
function G = imstegread(I)
    G = mod(I,2)*255;
end