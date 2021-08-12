Test_data =csvread('phone.csv');

for n=1:7    
key(n,:)=Test_data(1100*n-1099:1100*n-100);
[andaze(n,:),angle,f(n,:)]=my_fft_full(key(n,:),8192);
end

result = pressed_buttons(Test_data)

subplot(7,1,1)
plot(f(1,:),andaze(1,:));
xlabel('Frequency');
ylabel('Key0_T');
subplot(7,1,2)
plot(f(2,:),andaze(2,:));
xlabel('Frequency');
ylabel('Key1_T');
subplot(7,1,3)
plot(f(3,:),andaze(3,:));
xlabel('Frequency');
ylabel('Key2_T');
subplot(7,1,4)
plot(f(4,:),andaze(4,:));
xlabel('Frequency');
ylabel('Key3_T');
subplot(7,1,5)
plot(f(5,:),andaze(5,:));
xlabel('Frequency');
ylabel('Key4_T');
subplot(7,1,6)
plot(f(6,:),andaze(6,:));
xlabel('Frequency');
ylabel('Key5_T');
subplot(7,1,7)
plot(f(7,:),andaze(7,:));
xlabel('Frequency');
ylabel('Key6_T');






