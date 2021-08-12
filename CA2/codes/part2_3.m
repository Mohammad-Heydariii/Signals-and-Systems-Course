syms f

H1(f)=filter_butterworth(2,100);
H2(f)=filter_butterworth(4,100)
H3(f)=filter_butterworth(8,100);
f=-250:0.2:250;
subplot(2,2,1)
plot(f,H1(f))
title('n=2');
xlabel('frequency(Hz)');
ylabel('magnitude');
subplot(2,2,2)
plot(f,H2(f))
title('n=4');
xlabel('frequency(Hz)');
ylabel('magnitude');
subplot(2,2,3)
plot(f,H3(f))
title('n=8');
xlabel('frequency(Hz)');
ylabel('magnitude');

subplot(2,2,4)
fc = 70; 
fs=500;
wn = fc/(fs/2);    
n = 8; 
[b,a]= butter(n,wn,'low');
ecg_lp = filter(b,a,ecg_highpassed);
t = 0:1/fs:5-1/fs;
N=length(t);
df = fs/N;
f = -fs/2:df:fs/2-df;
plot(f,ecg_lp)
title('filtered signal');
xlabel('frequency(Hz)');
ylabel('magnitude');
