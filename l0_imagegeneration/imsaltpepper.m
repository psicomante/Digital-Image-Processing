function [G,Nmap] = imsaltpepper(I, pWhite, pBlack)

Nmap = rand(size(I));
N = ones(size(I));

N(Nmap<pBlack) = 0;
N(Nmap>(1-pWhite)) = 255;

G = uint8(I.*uint8(N));
