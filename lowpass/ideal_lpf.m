%ex1.m
close all
clear
clc
a=imread('C:\Users\CQ42\Documents\GitHub\matlab-operasi_piksel\gambar-contoh\mobil.png');
[M N]=size(a);
a=im2double(a);
F1=fft2(a);     
%1.Obtain the Fourier transform
% Set up range of variables.
u = 0:(M-1); %0-255
v = 0:(N-1);%0-255
% center (u,v) = (M/2,N/2)
% Compute the indices for use in meshgrid
idx = find(u > M/2);
% indices 130-255
u(idx) = u(idx)-M;
idy = find(v > N/2);
v(idy) = v(idy)-N;
%set up the meshgrid arrays needed for
% computing the required distances. 
[U, V] = meshgrid(u, v);
% Compute the distances D(U, V).
D = sqrt(U.^2 + V.^2);
disp('IDEAL LOW PASS FILTERING IN FREQUENCY DOMAIN');
D0=input('Enter the cutoff distance==>');
% Begin filter computations. 
H = double(D <= D0);
G=H.*F1;         
%Multiply
G=ifft2(G);
G=real(G);
ff=abs(fftshift(H));
subplot(131),imshow(a),title('original image')
subplot(132),imshow(ff),title('IDEAL LPF Image')
subplot(133),imshow(G),title('IDEAL LPF Filtered Image')
figure, mesh(ff),axis off,grid off