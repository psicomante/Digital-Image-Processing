figure('name', 'Cosine Vertical Frequency - Freq: 5');

G = imcos(255, 0, 5);

% original image
psiplot(G, [2, 3, 1], 'Original Image', 'scbarg');

% shifted fft2
Z = fftshift(dftcos(255,5));

% magnitude
psiplot(abs(Z), [2, 3, 2], 'DFT Magnitude', 'scbarg');

% log magnitude
psiplot(log10(abs(Z)), [2, 3, 3], 'DFT Log Magnitude', 'scbarg');

% phase
psiplot(angle(Z), [2, 3, 4], 'DFT Phase', 'scbarg');