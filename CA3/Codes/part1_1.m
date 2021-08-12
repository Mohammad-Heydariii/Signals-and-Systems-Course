[signal,Fs]=audioread('tel.wav');
X1=zeros(50,7651);
for i=1:7651
X1(:,i)=fftshift(fft(signal(i:i+49)))/Fs;
end

X1=X1.';
figure
imagesc(abs(X1));
xlabel('Frequency');
ylabel('Samples');
figure
spectrogram(signal,50,49)

