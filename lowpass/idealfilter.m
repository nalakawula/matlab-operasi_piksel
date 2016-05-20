%Question No:5
%IDEAL LOW-PASS FILTER
X = 'C:\Users\CQ42\Documents\GitHub\matlab-operasi_piksel\splash_sumar.png'
P=[10 20 50 100];
%function idealfilter(X,P)
f=imread(X);
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
H=double(D<=P);
G=H.*F;
g=real(ifft2(double(G)));
imshow(f),figure,imshow(g,[ ]);
%end