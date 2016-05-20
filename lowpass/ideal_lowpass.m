function g = ideal_lowpass(f,D0)
[M,N]=size(f);
F=fft2(double(f));
u=0:(M-1);
v=0:(N-1);
idx=find(u>M/2);
u(idx)=u(idx)-M;
idy=find(v>N/2);
v(idy)=v(idy)-N;
[V,U]=meshgrid(v,u);
D=sqrt(U.^2+V.^2);
H=double(D<=D0);
G=H.*F;
g=real(ifft2(double(G)));
subplot(1,2,1); imshow(f); title('Input image');
subplot(1,2,2); imshow(g,[ ]); title('Enhanced image');
end