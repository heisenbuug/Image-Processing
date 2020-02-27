foo = imread('img.jpg');
foo = rgb2gray(foo);
foo = double(foo);

subplot(2, 2, 1)
imshow(uint8(foo))
title('Original B/W')

fooSobel = edge(foo, 'sobel');
fooPrewitt = edge(foo, 'prewitt');
fooCanny = edge(foo, 'canny');

subplot(2, 2, 2)
imshow(fooSobel);
title('Sobel Operator')

subplot(2, 2, 3)
imshow(fooPrewitt);
title('Prewitt Operator')

subplot(2, 2, 4)
imshow(fooCanny);
title('Canny Operator')

