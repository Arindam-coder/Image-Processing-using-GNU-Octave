% logarithamic image transformation
close all % to close the previous figures
clear % to clearthe workspace
clc % to clear the command window
%pkg load image

input_image = imread('messi.jpg');
gray_scale_image = rgb2gray(input_image);
figure
subplot(1,2,1)
imshow(gray_scale_image);
title('Gray Scale of Input Image')

%logarithamic image transformation
% s = c * log(r + 1) where s= output pixel, r = input pixel
c = 45.986 % change the value of c for different output.
% As log(256) = 5.545 . putting r=255 and s=255, I got c = 45.986
result_image = c * log( gray_scale_image + 1) ;
subplot(1,2,2)
imshow(uint8(result_image));
title('Logarithamic Transformation of the gray scale Image')
print -djpg logarithamic_transformation.jpg % to save the figure