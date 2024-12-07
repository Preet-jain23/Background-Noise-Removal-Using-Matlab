[x,Fs]=audioread("audio.mp3");
 xn=awgn(x,15,'measured');
 xden=wdenoise(xn,'DenoisingMethod','Bayes','ThresholdRule
 ','Soft','NoiseEstimate','LevelIndependent',8,'Wavelet','sym8');
 subplot(3,1,1);
 plot(x);
 title('orignal signal');
 subplot(3,1,2);
 plot(xn,'r');
 title('Noisy signal');
 subplot(3,1,3);
 plot(xden,'g');
 title('Denoised signal');
