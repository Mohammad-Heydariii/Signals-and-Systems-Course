function num = compare(arr)

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

keys=[key0,key1,key2,key3,key4,key5,key6,key7,key8,key9];

amp_T=my_fft_full(arr,8192)

for i=1:10
[amp(i,:),phaze,f]=my_fft_full(keys(1000*i-999:1000*i),8192);
end

for j=1:10
a=abs(amp_T-amp(j,:));
if(a<0.1)
num=j-1;
end
end