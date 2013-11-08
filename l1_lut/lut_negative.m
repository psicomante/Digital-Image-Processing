% Negative Lut reimplementation without intlut
function [O, lut] = lut_negative(I)
    lut = 256:-1:1;
    O = uint8(reshape(lut(I(:) + 1) - 1, size(I,1), size(I,2)));
end  