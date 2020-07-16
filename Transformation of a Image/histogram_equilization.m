close all % to close previous figures
clear all  % to clear the workspace
clc
pkg load image % to load the image package

input_image = imread('messi.jpg');
grayscale_image = rgb2gray(input_image);

figure
subplot(2,2,1)
imshow(grayscale_image)
title('Input Gray Scale Image')
subplot(2,2,2)
imhist(grayscale_image,256);
title('Histogram of the Gray Scale Image')
%save the figures
%print -djpg histogram_equilization.jpg

histo_image = histeq(double(grayscale_image)/255,256);
histo_image = uint8(255*histo_image);
subplot(2,2,3)
imshow(histo_image)
title('Histogram Equilized Image')

subplot(2,2,4)
imhist(histo_image,256)
title('Histogram of the Equilized Image')
imwrite(histo_image, 'Histogram Equilized Image.png')
