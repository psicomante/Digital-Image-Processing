I = imread('images/lena512.pgm');

%% negative lut
%A =lut_negative(I);
%imshow(A);

%% ladder lut 
%imshow(lut_ladder(I, 100));

%% ramp lut
% figure; imhist(I);
% Ia = lut_ramp(I, 10, 180);
% figure; imhist(Ia);
% imshow(Ia);

%% threshold lut
% A = lut_threshold(I, 25, 100);
% imshow(A, []);

%% pseudo color lut
%A = lut_pseudocolor(I);
%imshow(A);