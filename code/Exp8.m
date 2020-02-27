foo = imread('img.jpg');
foo = im2bw(foo);
foo = double(foo);
fooDilation = foo;
fooErosion = foo;
[row, col] = size(foo);

mask = [1 1 1; 1 1 1; 1 1 1];
[mR, mC] = size(mask);

for i = 1 : row-3
    for j = 1 : col-3
        for z = 1 : mR
            for y = 1 : mC
                if(fooDilation(i+z, j+y) * mask(z, y) == 1)
                    fooDilation(i+1, j+1) = 1;
                end;
                
                if(fooErosion(i+z, j+y) * mask(z, y) == 0)
                    fooErosion(i+1, j+1) = 0;
                end;
                
            end;
        end;
    end;
end;
        
subplot(2,2,1);
imshow(foo);
title('Original')

subplot(2, 2, 2);
imshow(fooDilation);
title('Dilation')

subplot(2, 2, 3)
imshow(fooErosion);
title('Erosion')