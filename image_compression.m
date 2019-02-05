clc;
clear all;
I2=imread('liftingbody.png');
I1=I2;
[r c]=size(I2);
I12=double(I2);
I=I12-(128*ones(r));
DCT_matrix8=dct(eye(8));
iDCT_matrix8=DCT_matrix8';
for i1=(1 : 8 : r)
    for i2=(1 : 8 : c)
        zBLOCK=I(i1:i1+7,i2:i2+7);
        win1=DCT_matrix8*zBLOCK*iDCT_matrix8;
        dct_domain(i1:i1+7,i2:i2+7)=win1;
    end
end
for i1=(1:8:r)
    for i2=(1:8:c)
        win1=dct_domain(i1:i1+7,i2:i2+7);
        win2=round(win1./128);
        dct_quantized(i1:i1+7,i2:i2+7)=win2;
    end
end

for i1=(1:8:r)
    for i2=(1:8:c)
        win2=dct_quantized(i1:i1+7,i2:i2+7);
        win3=win2 .*128;
        dct_dequantized(i1:i1+7,i2:i2+7)=win3;
    end
end

for i1=(1:8:r)
    for i2=(1:8:c)
        win3=dct_dequantized(i1:i1+7,i2:i2+7);
        win4=iDCT_matrix8*win3*DCT_matrix8;
        dct_restored(i1:i1+7,i2:i2+7)=win4;
    end
end
subplot(221),imshow(I2),title('Original Image');
subplot(222),imshow(dct_quantized),title('Quantized Image');
subplot(223),imshow(dct_restored),title('reconstructed Image');
