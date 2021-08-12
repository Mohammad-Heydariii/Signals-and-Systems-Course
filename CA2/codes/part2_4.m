fs=500;
f_line = 50;   
b = [1,-cos(2*pi*f_line/fs),1]; 
a=[1];
ecg_filtered = filter(b,a,ecg_lp);  
plot(f,ecg_filtered)
title('filtered signal');
xlabel('frequency(Hz)');
ylabel('magnitude'); 

