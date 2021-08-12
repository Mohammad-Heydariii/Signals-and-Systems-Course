function H=filter_butterworth(N,fc)
syms f
H=sqrt(1./(1+((2*pi*f)./(fc)).^(2*N)));
end