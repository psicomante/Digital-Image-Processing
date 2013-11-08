function [G, noise] = imgausslol(I, strength)
    if nargin == 1
        strength = 20;
    end

    noise = randn(size(I))*strength;
    % strange effect, matrix multiplication return a strange gaussian cols
    % image
    G = uint8(double(I) * noise);