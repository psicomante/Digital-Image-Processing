% the functions adds random noise (entropy: 1) on an image I
% throught the formula:
% G(x,y) = I(x,y) + N(x,y)

% I: the original image you add the noise on
% intensity: the noise intensity. It means that the intensity have a range
% [0, intensity]

% the output image has a uint8 type.
function [G, noise] = imaddnoise(I, intensity)
    
if nargin == 1
    intensity = 20;
end

noise = rand(size(I))*intensity;
G = uint8(double(I) + noise);