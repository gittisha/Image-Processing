a=imread('mickey.jpg'); a=rgb2gray(a); 
[m,n]=size(a); 
b=double(a); 
A=input('Enter Range- Minimum Value:'); A=double(A); 
B=input('Enter Range- Maximum Value:'); B=double(B);
for i=1:m 
for j=1:n 
if ( b(i,j) >= A & b(i,j) <= B ) 
c(i,j) = 255; 
else 
c(i,j) = 0; 
end 
end 
end 
figure(),imshow(uint8(a)),title('Original Image Before Slicing'); 
sleep(2000); 
figure(),imshow(uint8(c)),title('Original Image After Slicing'); 
