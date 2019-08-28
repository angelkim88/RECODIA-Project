% 레코디아 PSNR 계산 프로그램
clear all;
clc

ref_A = VideoReader('Original_Vedio_File.avi');
ref_B = VideoReader('PSNR_Vedio_File.avi');

for img = 1:ref_A.NumberOfFrames;
    filename = strcat('frame',num2str(img),'.jpg');
    PSNR_A = read(ref_A, img);
    PSNR_B = read(ref_B, img);
    [peaksnr(img), snr(img)] = psnr(PSNR_A, PSNR_B);
    
    figure(1);
    imshow(PSNR_A);
    
    figure(2);
    plot(peaksnr, 'r');
    hold on;
    drawnow;
end