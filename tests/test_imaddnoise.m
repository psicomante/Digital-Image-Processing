I = imread('images/goldhill.pgm');

figure('name', 'Random Noise');

n = [0.1, 0.5, 1, 5, 10, 50];

c = length(n) / 3
if mod(length(n),3) > 0
    c = uint8(c)+1;
end

for i = 1:length(n);
    psiplot(imaddnoise(I, n(i)), [double(c), 3, i], sprintf('Intensity: %f', n(i)), 'show');
end