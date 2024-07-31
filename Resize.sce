a=rgb2gray(imread('mickey.jpg'));
[m,n]=size(a);
mprintf("Size = (%d,%d) before Resize\n",m,n);
newm=m/2;
newn=n/2;
mprintf("Size = (%d,%d) after Resize\n",newm,newn);
b=imresize(a,[newm,newn],'bicubic');
figure(),imshow(uint8(a)),title('Original Image'); sleep(2000);
subplot(2,2,1),imshow(uint8(b)),title('Original Image Reduced by Half');

