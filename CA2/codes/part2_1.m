ecg_data = load('ecg.dat') ;
fs=500;
ecg_data_short=ecg_data(1:5*fs);
t = 0:1/fs:5-1/fs;
[pks,locs] = findpeaks(ecg_data_short,t);
period = max(diff(locs))
N_period=5/0.08
N=length(t);
df = fs/N;
f = -fs/2:df:fs/2-df;
X = fft(ecg_data_short);
fourier=(1/fs)*fftshift(X);
subplot(1,2,1);
plot(t,ecg_data_short)
title('data Signal');
xlabel('t(second)');
ylabel('magnitude');
subplot(1,2,2);
plot(f,abs(fourier));
title('Abs of forier date');
xlabel('frequency(Hz)');
ylabel('magnitude');

