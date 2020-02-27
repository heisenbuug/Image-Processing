img = imread('C:\Users\Student\Documents\MATLAB\puppy.jpg');

imgRed = img(:,:,1);
imgGreen = img(:,:,2);
imgBlue = img(:,:,3);

imgGrayScale1 = (imgRed+imgGreen+imgBlue)/3;
imgGrayScale2 = (0.3*imgRed + 0.59*imgGreen + 0.11*imgBlue);
subplot(3, 1, 1);
imshow(img);
subplot(3, 1, 2);
imshow(imgGrayScale1);
subplot(3, 1, 3);
imshow(imgGrayScale2);

