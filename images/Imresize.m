close all,clear all,clc
image2=imread('591850.jpg');
imshow(image2)
imf=image2(1:1000,:,:);
imshow(imf)
imwrite(imf,'homeft.jpg')
