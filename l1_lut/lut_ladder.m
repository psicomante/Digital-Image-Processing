function [G, lut] = lut_ladder(I, stepSize)
    base = linspace(0,255,256);

    lut = uint8(round(base/stepSize)*stepSize);
    plot(lut);
    G = uint8(reshape(lut(I(:) + 1) - 1, size(I,1), size(I,2)));
end