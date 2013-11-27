% DFT Cosine
function Z = dftcos(size, f)

I = imcos(size,f,0);

Z = fft2(I);


