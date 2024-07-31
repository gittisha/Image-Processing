a=imread('mickey.jpg'); 
a=rgb2gray(a); 
figure(),imshow(uint8(a)),title('Original Image'); 
b=255-a; 
sleep(2000); 
figure(),imshow(uint8(b)),title('Negative Image'); 
