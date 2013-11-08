function G = imcosrgbrand(size, maxF)
% RGB image with cos random freq.            
    y = 0:size;
    f = rand(1,6)*maxF;

    sH = cos(2*pi*f(1)*y/(size+1));
    sV = cos(2*pi*f(2)*y/(size+1));

    G(:,:,1) = sV'*sH;

    sH = cos(2*pi*f(3)*y/(size+1));
    sV = cos(2*pi*f(4)*y/(size+1));

    G(:,:,2) = sV'*sH; 

    sH = cos(2*pi*f(5)*y/(size+1));
    sV = cos(2*pi*f(6)*y/(size+1));

    G(:,:,3) = sV'*sH; 

end