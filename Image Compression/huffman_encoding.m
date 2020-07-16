% hofman encoding
% gray scale image compression
pkg load communications

clear all
close all
clc

x = imread('messi.jpg');
img=imresize(x,[256 256]);
Image = rgb2gray(img);
%Image = Image(:);
[M N] = size(Image)
Count = 0:255;
for i = 1:M
 for j = 1:N
      Count(Image(i,j)+1)=Count(Image(i,j)+1)+1;
       
  end
end
prob = Count/(M*N);
symbols = 0:255;
[dict,avglen] = huffmandict(symbols,prob,1); 
comp = huffmanenco(Image,dict);
figure,imshow(comp); title('encoded.JPG');