[cor, lag] = xcorr(ecg_filtered); 
figure 
plot(lag, cor) 
title('Auto-correlation function of filtered ECG') 
xlabel('samples')