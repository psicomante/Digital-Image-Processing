function [G, lutG] = lut_pseudocolor(I)
    block = uint8(255/6);
    lutG = [linspace(0,255,block), linspace(255,255,block*2), linspace(255,0,block), linspace(0,0,block*2)];
    lutR = circshift(lutG, [0, 43*4]);
    lutB = circshift(lutG, [0, 43*2]);
    
    hold on
    plot(lutG, 'g');
    plot(lutR, 'r');
    plot(lutB, 'b');
    
    G(:,:,1) = uint8(reshape(lutR(I(:) + 1) - 1, size(I,1), size(I,2)));
    G(:,:,2) = uint8(reshape(lutG(I(:) + 1) - 1, size(I,1), size(I,2)));
    G(:,:,3) = uint8(reshape(lutB(I(:) + 1) - 1, size(I,1), size(I,2)));
end