clear
fs = 100;
t = -30:1/fs:30;
x=exp(-20*abs(t));
df = fs/6001;
f = -fs/2:df:fs/2-df;
forie_transform=40./(400+4*(pi.^2)*(f.^2));
X = fft(x);
Xf_shift=(1/fs)*fftshift(X);
subplot(1,4,1)
plot(f,abs(X))
title('Abs X without Shifting');
xlabel('frequency(Hz)');
ylabel('magnitude');
subplot(1,4,2)
plot(f,abs(Xf_shift))
title('Abs X final');
xlabel('frequency(Hz)');
ylabel('magnitude');
subplot(1,4,3)
plot(f,angle(Xf_shift)/fs)
title('Phase X final');
xlabel('frequency(Hz)');
ylabel('Phase');
subplot(1,4,4)
plot(f,forie_transform)
ylim([0 0.12])
title('fourier of function Manually');
xlabel('frequency(Hz)');
ylabel('H(f)');

