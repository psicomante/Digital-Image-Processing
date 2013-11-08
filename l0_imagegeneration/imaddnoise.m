function [G, noise] = imaddnoise(I, strength)
    if nargin == 1
        strength = 20;
    end

    noise = imnoise(size(I), strength);
    G = I + noise;