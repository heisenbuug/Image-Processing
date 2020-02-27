foo = imread('C:\Users\Student\Desktop\CG\download.jpg');
foo = rgb2gray(foo);
fooDouble = double(foo);

[rows, cols] = size(fooDouble);

for i = 1 : rows
    for j = 1 : cols
        if(fooDouble(i, j) == 0)
            fooDouble(i, j) = 1;
        end
    end
end

% histogram(foo);
% histogram(fooDouble)

fooHistEq = histeq(foo);

subplot(1, 2, 1);
imshow(foo);
subplot(1, 2, 2);
imshow(fooHistEq);