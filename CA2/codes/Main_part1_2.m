clear
fs = 100;
t = -30:1/fs:30;

x1=sinc((5*t)/2).^2;
x2=sinc((5*(4*t))/2).^2;
x3=x2.*cos(80*pi*t);
[f1,fourier1]=Myfft(100,x1);
[f2,fourier2] =Myfft(100,x2);
[f3,fourier3] =Myfft(100,x3);

subplot(1,3,1)
plot(f1,abs(fourier1));
title('sinc(2.5t)^2');
xlabel('frequency(Hz)');
ylabel('magnitude');
subplot(1,3,2)
plot(f2,abs(fourier2));
title('sinc(10t)^2');
xlabel('frequency(Hz)');
ylabel('magnitude');
subplot(1,3,3)
plot(f3,abs(fourier3));
title('sinc(10t)^2 * cos(80.pi.t)');
xlabel('frequency(Hz)');
ylabel('magnitude');