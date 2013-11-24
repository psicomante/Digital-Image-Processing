% convolutes a mean filter over an image
% I the input image
% w the filter witdh
% h the filter height
% padding padding size (int) or type (by keyword)
function G = meanfilter(I, w, h, padding)
    if nargin < 4
        padding = 'replicate';
    end
    G = imfilter(I, fspecial('average', [w h]), padding);
end