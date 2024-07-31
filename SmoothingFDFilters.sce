im=rgb2gray(imread('lana.jpg')); 
[m,n]=size(im); 
cu=round(m/2); 
cv=round(n/2); 
ft_im=fftshift(fft2(double(im))); // fft2 - 2d fast discrete Fourier transform 
d0=20; 
H=zeros(m,n); 
for u=1:m 
for v=1:n 
d=(u-cu).^2 + (v-cv).^2; 
H(u,v)=exp(-d/2/d0/d0); 
end 
end 
conv_ft=ft_im.*H; 
out_im=abs(ifft(conv_ft)); 
figure(); 
subplot(2,2,1),imshow(im),title('Original Image'); 
subplot(2,2,2),imshow(uint8(out_im)),title('Gaussian Low-pass Filter Image'); 
subplot(2,2,3),imshow(H),title(' View of H'); 
subplot(2,2,4),surf(H),title(' 3D View of H');
