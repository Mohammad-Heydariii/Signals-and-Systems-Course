x=rectangularPulse(t)
h=rectangularPulse(t)+rectangularPulse(t/2)

w1=conv(x/sum(x),h);
[f1,fourier1]=Myfft(100,x);
[f2,fourier2]=Myfft(100,h);
y=fourier1.*fourier2;
z=ifft(y);
response=ifftshift(z);

t=-5:1/600:5;
t1=-5:1/1200:5;

subplot(1,2,1)
plot(t1,w1)
title('Response with conv');
xlabel('Time(second)');
ylabel('magnitude');
subplot(1,2,2)
plot(t,abs(response))
title('Response with ifft');
xlabel('Time(second)');
ylabel('magnitude');