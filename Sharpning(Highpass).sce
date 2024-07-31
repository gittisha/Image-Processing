a=imread('gojo.jpg'); 
w9=1/81 * ones(9,9); 
b=conv2(double(a),w9,'same'); 
lw=[-1 -1 -1;-1 8 -1;-1 -1 -1]; 
c=conv2(double(b),lw,'same'); 
d=b+c; // add two images 
figure(); 
subplot(2,2,1),imshow(uint8(a)),title('ORIGINAL IMAGE'); 
subplot(2,2,2),imshow(uint8(b)),title ('Blurred Image'); 
subplot(2,2,3),imshow(uint8(c)),title('Laplacian Image'); 
subplot(2,2,4),imshow(uint8(d)),title('Sharpened Image');
