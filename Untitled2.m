% Fourier Transform & Filtering the frequency domain using mat.lib function
n=0:99;
N=100;
x=cos((4*pi*n)/N)+cos((6*pi*n)/N);
X=fftshift(fft(x));
IX=ifft(fftshift(X));
subplot(3,1,1);
plot(x);
subplot(3,1,2);
stem(abs(X));
subplot(3,1,3);
plot(IX);