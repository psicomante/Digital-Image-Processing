classdef ImGen
    %IMGEN Image Generation Class
    %   Detailed explanation goes here
    
    properties
    end
    
    methods (Static)
                
        function Z = circle(size, r, cx, cy, red, green, blue)
        % es. [Z] = ImGen.circle(255, 128, 0, 0, 255, 0, 0);
        % circle of dimension R in image 'size', centered in P(size/2 + cx, size/2 + cy)        
            Z = zeros(size, size, 3)*255; 
            [X, Y] = meshgrid(-size/2:size/2-1,-size/2:size/2-1);
            Z(:,:,1) = (sqrt(((X+cx).^2 + (Y+cy).^2)) < r)*red;
            Z(:,:,2) = Z(:,:,1)*green;
            Z(:,:,3) = Z(:,:,1)*blue;
        end      
        
        function [d] = line(size, r, cx, cy)
        % wtf
            d = zeros(size);
            for r=1:size
                for c=1:size
                    d(r,c) = ImGen.distance(r,c,cx,cy);
                end
            end
            d
            
        end
        
        function d = distance(fx, cx, fy, cy)
            d = sqrt( (fx - cx)^2 + (fy - cy)^2 );
        end
        
        function G = sinFor(size, f)
        % Horizontal Sin with For (Slow!)
            G = zeros(size);
            
            for x = 1:size
                for y = 1:size
                    G(y,x) = sin(2*pi*f*x/size);
                end
            end            
        end       
             
        
        function [X,Y] = prepareMeshgrid(edge, step)
            if nargin < 1
                edge = 100;
                step = 0.5;
            end
            
            [X,Y] = meshgrid(-edge:step:edge);
        end     
        
        % use mesh(waterWave(prepareMeshgrid()))
        function Z = waterWave(X,Y, multX, multY)
            if nargin < 4
                multX = 1/5;
                multY = 1/5;
            end
            
            %Z = sin(sqrt(X.^2 + Y.^2)*multX)*multY;
            Z = cos(2*pi*sqrt(X.^2 + Y.^2)*multX/size(X,1))*multY;
            mesh(Z)
        end
        
        % build an 8bit image (SIZExSIZE) with a sin(sqrt(X^2+Y^2)) and a
        % relative offset
        function Z = logicWaterWave(size, wavesX, offsetX, offsetY)
           [X, Y] = ImGen.prepareMeshgrid(size/2, 1);
           X = X-offsetX;
           Y = Y-offsetY;
           
           Z = ceil(ImGen.waterWave(X,Y,wavesX,1));
        end
        
        % build an 8bit image (SIZExSIZE) with a sin(sqrt(X^2+Y^2)) and a
        % relative offset
        function Z = smoothWaterWave(size, wavesX, offsetX, offsetY)
           [X, Y] = ImGen.prepareMeshgrid(size/2, 1);
           X = X-offsetX;
           Y = Y-offsetY;
           
           %mh why abs? :D
           Z = ImGen.waterWave(X,Y,wavesX,1/2) + 1/2;
        end        
        
        function Z = demosceneXorSmooth(size, wavesA, wavesB, offsetXA, offsetYA, offsetXB, offsetYB)
        % build an 8bit image (SIZExSIZE) with a sin(sqrt(X^2+Y^2)) and a
        % relative offset            
           A = ImGen.smoothWaterWave(size, wavesA, offsetXA, offsetYA);
           B = ImGen.smoothWaterWave(size, wavesB, offsetXB, offsetYB);
           Z = A + B;
        end            
        
        function Z = demosceneXorRand(size, wavesA, wavesB, offsetXA, offsetYA, offsetXB, offsetYB)
        % build an 8bit image (SIZExSIZE) with a sin(sqrt(X^2+Y^2)) and a
        % relative offset  
           wavesAv = round(rand()*wavesA)
           wavesBv = round(rand()*wavesB)
           offsetXAv = round(rand()*offsetXA)
           offsetYAv = round(rand()*offsetYA)
           offsetXBv = round(rand()*offsetXB)
           offsetYBv = round(rand()*offsetYB)
           Z = ImGen.demosceneXor(size, wavesAv, wavesBv, offsetXAv, offsetYAv, offsetXBv, offsetYBv);
        end           
        
        function Z = demosceneXor(size, wavesA, wavesB, offsetXA, offsetYA, offsetXB, offsetYB)
        % build an 8bit image (SIZExSIZE) with a sin(sqrt(X^2+Y^2)) and a
        % relative offset            
           A = ImGen.logicWaterWave(size, wavesA, offsetXA, offsetYA);
           B = ImGen.logicWaterWave(size, wavesB, offsetXB, offsetYB);
           Z = xor(A,B);
        end     
        
        function testCircularWaves()
            %Psit.showR(ImGen.demoSinXor(512, 5, 5,-50,-50,100,100));
            
            % water effect 2d
            I = ImGen.demoSinXorSmooth(512, 5, 10, -200, -200, 200,200);
            %Psit.showR(SpFilt.highPassStdDev(ImGen.demoSinXorSmooth(512, 5, 10, -200, -200, 200,200), 3));
            %Z = SpFilt.absdif(SpFilt.maxValueFilter(I, 3), I);
            Psit.showR(I);
        end
    end
    
end

