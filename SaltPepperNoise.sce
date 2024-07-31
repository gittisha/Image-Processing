a=imread('lana.jpg'); 
a=rgb2gray(a); 
b=imnoise(a,'salt & pepper',0.1); 
[m,n]=size(b); 
c=zeros(m+2,n+2); 
[x,y]=size(c); 
c(2:x-1,2:y-1)=b; 
for i=2:x-1 
for j=2:y-1 
d(i,j)=median([c(i-1,j-1),c(i-1,j),c(i-1,j+1);c(i,j-1),c(i,j),c(i,j+1);c(i+1,j-1),c(i+1,j),c(i+1,j+1)]); 
end 
end 
figure(); 
subplot(2,2,1),imshow(uint8(a)),title('ORIGINAL IMAGE'); 
subplot(2,2,2),imshow(uint8(b)),title ('Image with Noise'); 
subplot(2,2,3),imshow(uint8(d)),title('Image After Removing Noise');
