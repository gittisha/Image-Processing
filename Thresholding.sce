a=imread('mickey.jpg'); 
a=rgb2gray(a); 
[m,n]=size(a); 
b=double(a); 
th=input('Enter The Threshold Value:'); 
th=double(th); 
for i=1:m 
for j=1:n 
if ( b(i,j) < th ) 
b(i,j) = 0; 
else 
b(i,j) = 255; 
end 
end 
end 
figure(),imshow(uint8(a)),title('Original Image Before Thresholding'); 
sleep(2000); 
figure(),imshow(uint8(b)),title('Original Image After Thresholding'); 
