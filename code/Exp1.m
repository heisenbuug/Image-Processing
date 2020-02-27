
img1 = imread('C:\Users\Student\Downloads\download.jpg');
img5 = rgb2gray(img1);
% figure;
% imshow(img1);

img2 = imread('C:\Users\Student\Downloads\download (1).jpg');
img6 = rgb2gray(img2);
% figure;
% imshow(img2);

img3 = imread('C:\Users\Student\Downloads\download(2).jpg');
img7 = rgb2gray(img3);
% figure;
% imshow(img3);

subplot(3,3,1);
imshow(img1);

subplot(3,3,5);
imshow(img2);

subplot(3,3,9);
imshow(img3);

[m,n,o] = size(img1);

img1 = img1-20;
imwrite(img1,'E:\test.jpg')

img4 = imread('E:\test.jpg');
subplot(3,3,2);
imshow(img4); 

subplot(3,3,4);
imshow(img5);

subplot(3,3,6);
imshow(img6);

subplot(3,3,8);
imshow(img7);

colormap winter