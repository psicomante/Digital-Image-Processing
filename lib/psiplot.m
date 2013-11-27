function psiplot(M, Mpos, Mtitle, type)

subplot(Mpos(1), Mpos(2), Mpos(3));

h = showim(M, type);

set(h,'ButtonDownFcn', {@openfig, M, type, Mtitle});

title(Mtitle);
end

function openfig(h, e, M, type, title)
 figure('name', title);
 showim(M, type)
end

function h = showim(I, type)

if strcmp(type,'show')
  h = imshow(I);
end

if strcmp(type,'sc')
  h = imagesc(I);
end

if strcmp(type,'scbar')
  h = imagesc(I);
  colorbar;
end


if strcmp(type,'scbarg')
  h = imagesc(I);
  colorbar;
  colormap gray;
  axis square
end


end