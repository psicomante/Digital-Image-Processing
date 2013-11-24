%% Sin Image with frequency = 8 and size 255

I1 = imsin(255, 8, 8);
imfigr(I1, 'Sin Image Original');

% FFT with null average
Z1 = fft2(I1);
% moves the zero-frequency component to the center of spectrum 
% and calculate the magnitude of the complex part
Z1cntrmod = abs(fftshift(Z1));

% showing the fft
imfigr(Z1cntrmod, 'Shifted DFT of Sin image');


%% sin*cos image
I2 = imcos(255, 1, 0);
imfigr(I2, 'Cos Image Original');

Z2 = fft2(I2);
Z2cntrmod = abs(fftshift(Z2));
imfigr(Z2cntrmod, 'Shifted DFT of sin*cos image');

%% FFT of a real image
I3 = imread('images/lena_color.tif');
%red
I3 = I3(:,:,1);
imfigr(I3, 'Lena Original');

Z3 = fft2(I3);
Z3cntrmod = fftshift(Z3);
imfigr(abs(Z3cntrmod), 'Lena FFT Module');
imfigr(log(abs(Z3cntrmod)), 'Lena FFT Module filtered with log');

Phase = angle(Z3cntrmod);
figure('name', 'Lena DFT Fase'); imshow(Phase, [-pi pi]);