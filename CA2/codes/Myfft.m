function [f,fourier] =Myfft(fs,x)
t = -30:1/fs:30;
N=length(t);
df = fs/N;
f = -fs/2:df:fs/2-df;
X = fft(x);
fourier=(1/fs)*fftshift(X);
end



