% %% gray scale cos image, varying horizontal or vertical frequency
% 
% I = imcos(255, 5, 0);
% imfigr(I, 'imcos(255, 5, 0)');
% 
% I = imcos(255, 0, 12);
% imfigr(I, 'imcos(255, 0, 12)');
% 
% I = imcos(255, 5, 12);
% imfigr(I, 'imcos(255, 0, 12)');
% 
% %% color image with sinusoidal components (with different frequency)
% 
% I = imcosrgb(255, 5, 5, 6, 6, 7, 7);
% imfigr(I, 'beat image');
% 
% I = imcosrgbrand(255, 5);
% imfigr(I, 'random cosine');
% 
% %% Numeric Noise (rand)
% n = imnoise(255, 255);
% imfigr(n, 'noise');
% 
% %% Numeric Noise (gaussian)
% n = imgaussiannoise(255, 1);
% imfigr(n, 'noise');

%% adding gaussian noise to image
I = imread('images/goldhill.pgm');
[In1, noise1] = imaddgaussiannoise(I, 40);
imfigr(In1, 'gaussian noise added to the image');

%% multiplying gaussian noise to image
[In2, noise2] = immulnoise(I);
imfigr(In2, 'gaussian noise multiplied to the image');

% L = imread('images/goldhill.pgm');
% 
% A4 = rand(size(L,2));
% A4(A4 <= 0.5) = 0;
% A4(A4 >= 0.9) = 255;
% figure;
% imshow(uint8(A4).*L);