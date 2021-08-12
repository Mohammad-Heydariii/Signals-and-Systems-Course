for n=0:999
key0(n+1)=sin(0.7217*n)+sin(1.0247*n);
key1(n+1)=sin(0.5346*n)+sin(0.9273*n);
key2(n+1)=sin(0.5346*n)+sin(1.0247*n);
key3(n+1)=sin(0.5346*n)+sin(1.1328*n);
key4(n+1)=sin(0.5906*n)+sin(0.9273*n);
key5(n+1)=sin(0.5906*n)+sin(1.0247*n);
key6(n+1)=sin(0.5906*n)+sin(1.1328*n);
key7(n+1)=sin(0.6535*n)+sin(0.9273*n);
key8(n+1)=sin(0.6535*n)+sin(1.0247*n);
key9(n+1)=sin(0.6535*n)+sin(1.1328*n);

end

audiowrite('key0.wav' ,key0,8192);
audiowrite('key1.wav' ,key1,8192);
audiowrite('key2.wav' ,key2,8192);
audiowrite('key3.wav' ,key3,8192);
audiowrite('key4.wav' ,key4,8192);
audiowrite('key5.wav' ,key5,8192);
audiowrite('key6.wav' ,key6,8192);
audiowrite('key7.wav' ,key7,8192);
audiowrite('key8.wav' ,key8,8192);
audiowrite('key9.wav' ,key9,8192);

keys=[key0,key1,key2,key3,key4,key5,key6,key7,key8,key9];
for i=1:10
[amp(i,:),phaze,f(i,:)]=my_fft_full(keys(1000*i-999:1000*i),8192);
end

Space(1:100)=[0];
phone_num=[key8,Space,key1,Space,key0,Space,key1,Space,key9,Space,key7,Space,key4,Space,key9,Space,key4];
audiowrite('phone_num.wav' ,phone_num,8192);

subplot(5,2,1)
plot(f(1,:),amp(1,:));
xlabel('Frequency');
ylabel('Key0');
subplot(5,2,2)
plot(f(2,:),amp(2,:));
xlabel('Frequency');
ylabel('Key1');
subplot(5,2,3)
plot(f(3,:),amp(3,:));
xlabel('Frequency');
ylabel('Key2');
subplot(5,2,4)
plot(f(4,:),amp(4,:));
xlabel('Frequency');
ylabel('Key3');
subplot(5,2,5)
plot(f(5,:),amp(5,:));
xlabel('Frequency');
ylabel('Key4');
subplot(5,2,6)
plot(f(6,:),amp(6,:));
xlabel('Frequency');
ylabel('Key5');
subplot(5,2,7)
plot(f(7,:),amp(7,:));
xlabel('Frequency');
ylabel('Key6');
subplot(5,2,8)
plot(f(8,:),amp(8,:));
xlabel('Frequency');
ylabel('Key7');
subplot(5,2,9)
plot(f(9,:),amp(9,:));
xlabel('Frequency');
ylabel('Key8');
subplot(5,2,10)
plot(f(10,:),amp(10,:));
xlabel('Frequency');
ylabel('Key9');

