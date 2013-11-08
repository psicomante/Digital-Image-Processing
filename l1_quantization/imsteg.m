% super-simple & useless steganography - modulo 2 steganography
%
% I, container image
% steg, image to hide
function G = imaddwatermark(I, steg)
    % quantization in 2 levels
    steg = imquant(steg, 2, true);
    
    % modulo mask
    modulo_mask = mod(I,2);
    
    % sum the original image to the xor between modulo mask and the image
    % to hide.
    G = I + uint8(xor(modulo_mask, steg));
end