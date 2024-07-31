a=imread('mickey.jpg'); 
b=rgb2gray(a); 
angle=input('Enter an angle in Anti-clockwise Direction:'); 
c=imrotate(b,angle); // Anti-Clockwise 
angle=input('Enter an angle in Anti-clockwise Direction:'); 
d=imrotate(b,-angle); // Clockwise 
figure(),imshow(uint8(b)),title('Image before Rotation'); 
sleep(2000); 
figure(),imshow(uint8(c)),title('Image After Rotation:Anti-Clockwise'); 
sleep(2000); 
figure(),imshow(uint8(d)),title('Image After Rotation:Clockwise'); 
