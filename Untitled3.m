%filtering in the frequency domain
n=0:99;
N=100;
x=cos((4*pi*n)/N)+rand([1,N]);
X=fftshift(fft(x));
subplot(5,1,1);
plot(x);
title('noisy signal');
subplot(5,1,2);
stem(-50:49,abs(X));
title('noisy signal FS');
H=zeros([1,N]);
for k=1:N
    if abs(k-N/2) <= 2
        H(k)=1;
    end
end
%H=1-H; %for highpass filter
subplot(5,1,3);
stem(-50:49,H);
title('filter transfer function');
Y=X.*H;
y=real(ifft(fftshift(Y)));
subplot(5,1,4);
stem(abs(Y));
title('clean signal FS');
subplot(5,1,5);
plot(y);
title('clean signal');