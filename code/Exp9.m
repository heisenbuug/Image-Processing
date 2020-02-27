foo = imread('img.jpg');
foo = im2bw(foo);
foo = double(foo);

fooD = foo;
fooE = foo;
fooDE = foo;
fooED = foo;

mask = [1 1 1; 1 1 1; 1 1 1];
[row, col] = size(foo);
[mRow, mCol] = size(mask);

% Closing
for i = 1 : row-3
    for j = 1 : col-3
        for z = 1 : mRow
            for y = 1 : mCol
                if(fooDE(i+z, j+y) * mask(z, y) == 1)
                    fooDE(i+1, j+1) = 1;
                end;  
            end;
        end;
    end;
end;

for i = 1 : row-3
    for j = 1 : col-3
        for z = 1 : mRow
            for y = 1 : mCol
                if(fooDE(i+z, j+y) * mask(z, y) == 0)
                    fooDE(i+1, j+1) = 0;
                end;  
            end;
        end;
    end;
end;

% Opening
for i = 1 : row-3
    for j = 1 : col-3
        for z = 1 : mRow
            for y = 1 : mCol
                if(fooED(i+z, j+y) * mask(z, y) == 0)
                    fooED(i+1, j+1) = 0;
                end;  
            end;
        end;
    end;
end;

for i = 1 : row-3
    for j = 1 : col-3
        for z = 1 : mRow
            for y = 1 : mCol
                if(fooED(i+z, j+y) * mask(z, y) == 1)
                    fooED(i+1, j+1) = 1;
                end;  
            end;
        end;
    end;
end;


subplot(2, 2, 1)
imshow(foo);
title('Original')

subplot(2, 2, 2)
imshow(fooDE);
title('Closing')

subplot(2, 2, 3)
imshow(fooED);
title('Opening')
