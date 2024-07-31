a=imread('mickey.jpg'); a=rgb2gray(a); 
a=double(a); [m,n]=size(a); disp(m,n); 
A=[0,0];      
 B=[100,20]; C=[200,200];    D=[255,255]; 
m1=(B(1,2)-A(1,2))/(B(1,1)-A(1,1)); 
m2=(C(1,2) - B(1,2))/(C(1,1) - B(1,1)); 
m3=(D(1,2) - C(1,2))/(D(1,1) - C(1,1)); 
s=a; 
for i=1:m 
for j=1:n 
r=a(i,j); 
if ( r <= B(1,1) )  
s(i,j)=m1*r; 
end 
if ( r >= B(1,1) & r <= C(1,1) ) 
s(i,j)=B(1,2) + m2*(r - B(1,1)); 
end 
if ( r >= C(1,1) &  r <= D(1,1) ) 
s(i,j)=C(1,2) + m3*(r - C(1,1)); 
end 
end 
end  
figure(),imshow(uint8(a)),title('Original Image Before Contrast Stretching'); 
sleep(2000); 
figure(),imshow(uint8(s)),title('Original Image After Contrast Stretching'); 
