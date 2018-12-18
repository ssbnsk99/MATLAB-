clc;
clear all;
close all;
a=imread('cameraman.tif');
subplot(321),imshow(a),title('Oringial Image');
subplot(322),imshow(grayslice(a,128),gray(128)),title('Image with 128 gray level');
subplot(323),imshow(grayslice(a,64),gray(64)),title('Image with 64 gray level');
subplot(324),imshow(grayslice(a,32),gray(32)),title('Image with 32 gray level');
subplot(325),imshow(grayslice(a,16),gray(16)),title('Image with 16 gray level');
subplot(326),imshow(grayslice(a,8),gray(8)),title('Image with 8 gray level');





