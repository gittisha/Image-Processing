a=rgb2gray(imread('hello.jpg')); 
figure(); 
subplot(2,2,1),imshow(a),title('Original Image'); 
b=immultiply(a,2); 
subplot(2,2,2),imshow(b),title('Image:Contrast Increased by 2 Times'); 
c=immultiply(a,0.5); 
subplot(2,2,3),imshow(c),title('Image:Contrast Decreased by 1/2 Times'); 
