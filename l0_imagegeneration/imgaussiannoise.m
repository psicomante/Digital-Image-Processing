function G = imgaussiannoise(size, strength)

    if nargin == 2
        strength = 255;
    end
    
    G = randn(size)*strength;