syms f
H(f)=2*pi*abs(f);
f=-250:0.2:250;
subplot(1,2,1)
plot(f,H(f))
title('H(f)');
xlabel('frequency(Hz)');
ylabel('magnitude');

subplot(1,2,2)
fs=500;
t = 0:1/fs:5-1/fs;
ecg_highpassed = (fs/2)*filter([1,0,-1],[1],ecg_data_short) ;
plot(t,ecg_highpassed)
title('Amplipied signal');
xlabel('Time(second)');
ylabel('magnitude');