x=rgb2gray(imread('mickey.jpg')); 
x=imresize(x,[256,256]); 
figure(),imshow(uint8(x)),title('Image of Mickey'); 
y=rgb2gray(imread('hello.jpg')); 
y=imresize(y,[256,256]); 
sleep(2000); 
figure(),imshow(uint8(y)),title('Image of Hello Kitty'); 
z=x + y; // Image Arithmetic - Addition 
sleep(2000); 
figure(),imshow(uint8(z)),title('Images of Mickey and Hello kitty'); 
t=z-y; // Image Arithmetic - Subtraction 
sleep(2000); 
figure(),imshow(uint8(t)),title('Mickey and Hello kitty'); 