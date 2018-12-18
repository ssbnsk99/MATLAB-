clc;
clear all;
close all;
a=imread('cameraman.tif');
[m, n]=size(a);
for i=1:m
    for j=1:n
        b7(i,j)=bitand(a(i,j),128);
        b6(i,j)=bitand(a(i,j),64);
        b5(i,j)=bitand(a(i,j),32);
        b4(i,j)=bitand(a(i,j),16);
        b3(i,j)=bitand(a(i,j),8);
        b2(i,j)=bitand(a(i,j),4);
        b1(i,j)=bitand(a(i,j),2);
        b0(i,j)=bitand(a(i,j),1);
        
    end
end
subplot(331),imshow(b7),title('128 scale');
subplot(332),imshow(b6),title('64 scale');
subplot(333),imshow(b5),title('32 scale');
subplot(334),imshow(b4),title('16 scale');
subplot(335),imshow(b3),title('8 scale');
subplot(336),imshow(b2),title('4 scale');
subplot(337),imshow(b1),title('2 scale');
subplot(338),imshow(b0),title('1 scale');