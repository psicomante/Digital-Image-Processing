function [G, noise] = immulnoise(I)
    if nargin == 1
        strength = 20;
    end

    noise = abs(randn(size(I))) + 1;
    G = uint8(double(I) .* abs(noise));