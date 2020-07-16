% Discrete cosine transform of a image.
close all % to close the previous figures
clear % to clearthe workspace
clc % to clear the command window
pkg load image  % every time we do not need to load this package
pkg load signal

input_image = imread('messi.jpg');
gray_scale_image = rgb2gray(input_image);
figure
subplot(1,3,1)
imshow(gray_scale_image);
title('Gray Scale of Input Image')

ad = dct2(gray_scale_image);
subplot(1,3,2)
imshow(uint8(ad));

a = idct2(ad);
subplot(1,3,3)
imshow(uint8(a));