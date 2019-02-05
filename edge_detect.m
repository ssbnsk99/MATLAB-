clc;
clear all;
a=imread('cameraman.tif');
%a=rgb2gray(I);
b=edge(a,'roberts');
c=edge(a,'sobel');
d=edge(a,'prewitt');
e=edge(a,'log');
f=edge(a,'canny');
subplot(321),imshow(a),title('Original Image');
subplot(322),imshow(b),title('Roberts');
subplot(323),imshow(c),title('sobel');
subplot(324),imshow(d),title('Prewitt');
subplot(325),imshow(e),title('Log');
subplot(326),imshow(f),title('canny');
