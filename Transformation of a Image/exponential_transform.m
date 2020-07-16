% exponential image transformation
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

% exponential image transformation
% s = exp(c*r) - 1 where s= output pixel, r = input pixel, c= constant
c = 0.021746 % change the value of c for different output. Putting r=255 & s=255 ,
% I got c=0.021746
result_image = exp(c * gray_scale_image) - 1 ;
result_image = uint8(result_image);
subplot(1,2,2)
imshow(result_image);
title('Exponential Transformation of the gray scale Image')
print -djpg logarithamic_image.jpg % to save the figure
imwrite(result_image,'exp_transformed.png')  % to save the image