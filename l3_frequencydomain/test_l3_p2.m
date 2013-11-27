figure('name', 'Rectangle Shape: DFT');

% rectangle rotation 0

% NOTE: zero crossing (black zones) of the spectrum are closer in the
% horizontal direction because the rectangle is longer in that direction

% translation and rotation property of fourier transform
Z0 = psirect(256, 200, 20, 20, 20, 0);
psiplot(Z0, [3, 4, 1], 'rect (200x20 px) theta=0', 'scbarg');
psiplot(abs(fftshift(fft2(Z0))), [3, 4, 2], 'shifted DFT (magnitude)', 'scbarg');
psiplot(log(abs(fftshift(fft2(Z0)))+1), [3, 4, 3], 'log(magnitude)', 'scbarg');
psiplot(angle(fftshift(fft2(Z0))), [3, 4, 4], 'shifted DFT (phase)', 'scbarg');

% rectangle rotation 45
Z0 = psirect(128, 50, 1, 20, 20, 45);
psiplot(Z0, [3, 3, 4], 'rect (50x1 px) theta=45', 'scbarg');
psiplot(abs(fftshift(fft2(Z0))), [3, 3, 5], 'shifted DFT (magnitude)', 'scbarg');
psiplot(angle(fftshift(fft2(Z0))), [3, 3, 6], 'shifted DFT (phase)', 'scbarg');

% rectangle rotation 90
Z0 = psirect(128, 50, 1, 20, 20, 90);
psiplot(Z0, [3, 3, 7], 'rect (50x1 px) theta=90', 'scbarg');
psiplot(abs(fftshift(fft2(Z0))), [3, 3, 8], 'shifted DFT (magnitude)', 'scbarg');
psiplot(angle(fftshift(fft2(Z0))), [3, 3, 9], 'shifted DFT (phase)', 'scbarg');