% Fourier Transform & Filtering the frequency domain
n=0:99;
N=100;
x=cos(4*pi*n/N)+cos(6*pi*n/N);
%plot(x);

X=zeros([1,N]);
for k=0:99
    s=0;
    for n=0:99
        s=s+(x(n+1)*exp((-1j*2*pi*k*n)/N));
    end
    X(k+1)=s;
end
subplot(4,1,1);
plot(x);
subplot(4,1,2);
stem(abs(X));

IX=zeros([1,N]);
for n=0:99
    s=0;
    for k=0:99
        s=s+(X(k+1)*exp((1j*2*pi*k*n)/N));
    end
    IX(n+1)=s;
end
IX=real(IX/N);
subplot(4,1,3);
plot(IX);
