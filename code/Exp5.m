nidhi = imread('C:\Users\Student\Desktop\cat.jpg');
dusriNidhi = imread('C:\Users\Student\Desktop\img.jpg');
nidhi = rgb2gray(nidhi);
dusriNidhi = rgb2gray(dusriNidhi);

nidhi = imresize(nidhi,[500, 800]);
dusriNidhi = imresize(dusriNidhi, [500, 800]);

% Arithmetic Operations
addition = imadd(nidhi, dusriNidhi);
difference = imsubtract(nidhi, dusriNidhi);
multiply = immultiply(nidhi, dusriNidhi);
divide = imdivide(nidhi, dusriNidhi);

nidhi = im2bw(nidhi);
dusriNidhi = im2bw(dusriNidhi);

% Logical Operations
invert = imcomplement(nidhi);
and = bitand(nidhi, dusriNidhi);
or = bitor(nidhi, dusriNidhi);
xor = bitxor(nidhi, dusriNidhi);

% Original
subplot(3,4,1);
imshow(nidhi);
title('Image 1');
subplot(3,4,2);
imshow(dusriNidhi);
title('Image 2');

% Arithmetic
subplot(3,4,5);
imshow(addition);
title('Addition');
subplot(3,4,6);
imshow(difference);
title('Subtract');
subplot(3,4,7);
imshow(multiply);
title('Multiply');
subplot(3,4,8);
imshow(divide);
title('Divide');

% Logical
subplot(3,4,9);
imshow(invert);
title('Invert');
subplot(3,4,10)
imshow(and);
title('AND');
subplot(3,4,11);
imshow(or);
title('OR');
subplot(3,4,12);
imshow(xor);
title('XOR');