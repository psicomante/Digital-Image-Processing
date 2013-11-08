function G = imkernelmean(I, kernelsize)
% used to copy the I pixels into F
% F = I(
%   r - offset : r + offset, 
%   c - offset : c + offset
% )
offset = (kernelsize - 1) / 2;
G = zeros(size(I));

% zero-padding filter matrix
Fz = zeros(kernelsize);
F = Fz;
pixels = kernelsize^2;

% color channels
for channel = 1:size(I,3)
    %rows
    for r = 1:size(I,1)    
        
        %cols
        for c = 1:size(I,2)
            
            % offsets
            rlb = r-offset;
            rub = r+offset;            
            % offsets
            clb = c-offset;
            cub = c+offset;

            % respect zero-padding
            if rlb < 1 
                rlb = 1;
            end

            if clb < 1
                clb =1;
            end

            if rub > size(I, 1)
                rub = size(I, 1);
            end

            if cub > size(I,2)
                cub = size (I,2);
            end

            % copy pixels of i into Filter Matrix
            F = I(rlb:rub, clb:cub, channel);

            % calculate the mean value
            G(r,c,channel) = sum(F(:)) / pixels;

            % reset the filter matrix
            F = Fz;
        end
    end
end

G = uint8(G);