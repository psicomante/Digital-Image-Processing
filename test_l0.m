%% gray scale cos image, varying horizontal or vertical frequency

% I = imcos(255, 5, 0);
% imfigr(I, 'imcos(255, 5, 0)');
% 
% I = imcos(255, 0, 12);
% imfigr(I, 'imcos(255, 0, 12)');
% 
% I = imcos(255, 5, 12);
% imfigr(I, 'imcos(255, 0, 12)');

%% color image with sinusoidal components (with different frequency)

I = imcosrgb(255, 5, 5, 6, 6, 7, 7);
imfigr(I, 'imcosrgb(255, 5, 5, 6, 6, 7, 7)');