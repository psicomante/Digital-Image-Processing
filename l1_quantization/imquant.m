% Quantization of an 8bit depth image in another image of a lower bits per
% pixel (R<8).

function G = imquant(I, r, mult)

quant = 256 / 2^r;
G = uint8(round(double(I) / quant));
if (mult)
    G = G * quant;
end