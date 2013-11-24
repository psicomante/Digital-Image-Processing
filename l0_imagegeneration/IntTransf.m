% Intensity (gray-level) transformations
classdef IntTransf
    methods (Static)
        
        function O = lighten(I, ratio)
        % create a lighter image linearly          
            O = I + (ratio * 255);
            return;
        end
        
        function O = darken(I, ratio)
        % create a darker image, with linearly      
            O = I - (ratio * 255);
            return;
        end
        
    end
end