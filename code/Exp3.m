img = imread('C:\Users\Student\Desktop\dog.png');

% Negative Image 
negativeImg = 255 - img;

% Constast Strechnig
l = 0.6;
m = 2.6;
n = 0.3;

grayImg = rgb2gray(img);
grayImg = double(grayImg);
[gImgRow, gImgCol] = size(grayImg);
lT = 50;
uT = 100;

for i = 1:gImgRow
    for j = 1:gImgCol
        
        if(grayImg(i, j) < lT)
            contrastImg(i, j) = l * grayImg(i, j);
            
        elseif (grayImg(i, j) > lT) && (grayImg(i, j) < uT)
            contrastImg(i, j) = m * (grayImg(i, j) - lT) + (l * lT);
            
        else
            contrastImg(i, j) = n * (grayImg(i, j) - uT) + (lT * l) + (m * (uT - lT));
            
        end
    end
end

% Thresholding
tValue = 120;
for i = 1:gImgRow
    for j = 1:gImgCol
        if (grayImg(i, j) <= tValue)
            thresholdImg(i, j) = 0;
        else
            thresholdImg(i, j) = 1;
        end;
    end;
end;

subplot(2, 2, 1)
imshow(img);
subplot(2, 2, 2)
imshow(negativeImg);
subplot(2, 2, 3)
imshow(uint8(contrastImg));
subplot(2, 2, 4)
imshow(thresholdImg);


