function [G, noise] = imaddgaussiannoise(I, strength)
    if nargin == 1
        strength = 20;
    end

    noise = randn(size(I))*strength;
    G = uint8(double(I) + noise);