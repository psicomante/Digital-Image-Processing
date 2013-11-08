function G = imnoise(size, strength)

    if nargin == 2
        strength = 255;
    end
    
    G = rand(size)*strength;