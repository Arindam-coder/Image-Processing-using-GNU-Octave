close all % to close the previous figures
clear % to clearthe workspace
clc % to clear the command window

%read a image
input_image = imread('messi.jpg');
figure
subplot(1,3,1)
imshow(input_image);
title('Messi')

% image shape. Height weight and channel
[w h c] = size(input_image)

subplot(1,3,2)
imshow(input_image(:,:,1));
title('Red Channel Image')

pkg load image
% convert to grayscale image
gray_scale_image = rgb2gray(input_image);
subplot(1,3,3)
imshow(uint8(gray_scale_image))
title('Gray Scale IMage')

%save figure
%print -djpg Image.jpg

% Power law transformation. Gamma Correction.
% s = c* r^gamma
c = 0.001
gamma = 1.13
result_image = gray_scale_image .^ gamma;
figure
subplot(1,2,1)
imshow(uint8(result_image))
title('Gamma Corrected Image when c=0.001 & gamma=1.13')
max(min(result_image))

c = 10
gamma = 0.85
result_image = gray_scale_image .^ gamma;
subplot(1,2,2)
imshow(uint8(result_image))
title('Gamma Corrected Image when c=5 & gamma=0.9')
%save figure
%print -djpg Gamma_Corrected_Image.jpg

a = fft(gray_scale_image);
figure
subplot(1,3,1)
imshow(a);
title('FFt of the Image')
subplot(1,3,2)
plot(a);
title('FFt of the Image')
%save figure
%print -djpg FFT_image.jpg