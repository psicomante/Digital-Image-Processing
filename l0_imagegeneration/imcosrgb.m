function G = imcosrgb(size, fHr, fVr, fHg, fVg, fHb, fVb)
% RGB image with cos random freq.            
    y = 0:size;

    sH = cos(2*pi*fHr*y/(size+1));
    sV = cos(2*pi*fVr*y/(size+1));

    G(:,:,1) = sV'*sH;

    sH = cos(2*pi*fHg*y/(size+1));
    sV = cos(2*pi*fVg*y/(size+1));

    G(:,:,2) = sV'*sH; 

    sH = cos(2*pi*fHb*y/(size+1));
    sV = cos(2*pi*fVb*y/(size+1));

    G(:,:,3) = sV'*sH; 

end