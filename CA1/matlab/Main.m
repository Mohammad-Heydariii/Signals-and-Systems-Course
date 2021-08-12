syms t
u(t)=piecewise(t<0,0,t>=0,1);
r(t)=piecewise(t<0,0,t>=0,t);
y(t)=r(t)-r(t-3)-u(t-3);
subplot(1,4,1)
fplot(y(t),[-15,15])
hold on
fplot(2*y(-t)+1,[-15,15])
hold on
fplot(y(-t+1),[-15,15])
hold on
fplot(y(-3*t+1),[-15,15])
ylim([-2 10])
ylabel('Y');
xlabel('----->t');
title('Scale & Shifting Signals Part1');
legend('y(t)','2y(-t)+1','y(-t+1)','y(-3t+1)');
hold off
X_part2=convIndices([0:20],[0:10]);
X_part3=convIndices([-10:10],[-5:20]);
U_part2 = [0 0 0 sin(3*pi/5) sin(4*pi/5) sin(5*pi/5) sin(6*pi/5) sin(7*pi/5) sin(8*pi/5) sin(9*pi/5) sin(10*pi/5) sin(11*pi/5) sin(12*pi/5) sin(13*pi/5) sin(14*pi/5) sin(15*pi/5) sin(16*pi/5) sin(17*pi/5) sin(18*pi/5) sin(19*pi/5) sin(20*pi/5)];
v_part2 = [0 1 1 1 1 1 1 1 1 1 1];
U_part3 = [0 0 0 0 0 0 0 0 1/8 1/4 1/2 1 2 4 8 0 0 0 0 0 0];
v_part3 = [exp(-11) exp(-9) exp(-7) exp(-5) exp(-3) exp(-1) exp(1) exp(3) exp(5) exp(7) exp(9) exp(11) exp(13) exp(15) exp(17) exp(19) exp(21) exp(23) exp(25) exp(27) exp(29) exp(31) exp(33) exp(35) exp(37) exp(39)];
w1 = conv(U_part2,v_part2)
w2=Myconv(U_part3,v_part3)
w3 = conv(U_part3,v_part3)
subplot(1,4,2)
stem(X_part2,w1)
ylabel('Y[n]');
xlabel('----->n');
title('Convolution with conv Matlab part2');
subplot(1,4,3)
stem(X_part3,w2)
ylabel('Y[n]');
xlabel('----->n');
title('Convolution with MYconv function part3');
subplot(1,4,4)
stem(X_part3,w3)
ylabel('Y[n]');
xlabel('----->n');
title('Convolution with conv Matlab part3');