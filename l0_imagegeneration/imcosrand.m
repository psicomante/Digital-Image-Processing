% generation of random frequency cosine wave
% imsize: image size
% maxF: max frequency
function G = imcosrand(size, maxF)
    y = 0:size;
    f = rand(1,2)*maxF;

    sH = cos(2*pi*f(1)*y/(size+1));
    sV = cos(2*pi*f(2)*y/(size+1));

    % matrix product to build the image
    G = sV'*sH;
end