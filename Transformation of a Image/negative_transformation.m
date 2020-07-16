% negative image transformation
close all % to close the previous figures
clear % to clearthe workspace
clc % to clear the command window
pkg load image

input_image = imread('messi.jpg');
gray_scale_image = rgb2gray(input_image);
figure
subplot(1,2,1)
imshow(gray_scale_image);
title('Gray Scale of Input Image')

% negative transformation of a image is subtract it's pixel values
% from 255.
% s = 255 -r where s= output pixel , r= input pixel

result_image = 255 - gray_scale_image;
subplot(1,2,2)
imshow(result_image);
title('Negative of the input gray scale Image')
%print -djpg negative.jpg % to save the image
imwrite(result_image, 'negative_transformed.png')