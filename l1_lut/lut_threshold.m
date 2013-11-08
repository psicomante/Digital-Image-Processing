function [G, lut] = lut_threshold(I, threshold_start, threshold_end)
    lut = zeros(1,256);
    lut(threshold_start:threshold_end) = 255;
    G = uint8(reshape(lut(I(:) + 1) - 1, size(I,1), size(I,2)));
end