function G = imkernelstdev(I, kernelsize)
% used to copy the I pixels into F
% F = I(
%   r - offset : r + offset, 
%   c - offset : c + offset
% )
offset = (kernelsize - 1) / 2;

if (size(I,3) == 3)
    I = rgb2gray(I);
end

isize = size(I);
G = zeros(isize(1));


% zero-padding filter matrix
Fz = zeros(kernelsize);
F = Fz;
pixels = kernelsize^2;

for r = 1:isize(1)
    % calcualte offset
    rlb = r-offset;
    rub = r+offset; 

    for c = 1:isize(2)
        %offset
        clb = c-offset;
        cub = c+offset;

        % avoid "index exceeds matrix dimensions
        if rlb < 1 
            rlb = 1;
        end

        if clb < 1
            clb =1;
        end

        if rub > isize(1)
            rub = isize(1);
        end

        if cub > isize(2)
            cub = isize(2);
        end

        % copy pixels of i into Filter Matrix
        F = I(rlb:rub, clb:cub);
        mean = sum(F(:)) / pixels;

        sigma = sqrt( sum(sum((F - mean).^2)) / pixels);
        % calculate the mean value
        G(r,c) = sigma;

        % reset the filter matrix
        F = Fz;
    end
end
    
G = im8bit(G, 255);