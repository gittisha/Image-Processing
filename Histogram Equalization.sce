a=rgb2gray(imread ('lightyagami.jpg')); 
[m n]= size (a); 
for i =1:256 
frequency(i)= length ( find (a ==(i -1))); 
end 
n_freq=double(frequency)/(m*n); 
figure(); 
subplot(2,2,1),imshow(a),title('ORIGINAL IMAGE') 
subplot(2,2,2),plot2d3 ( 'gnn' ,[1:256] ,n_freq),title ('Histogram of the Image');
b=imhistequal(a); 
[m n]= size (b); 
for i =1:256 
h_freq(i)= length ( find (b ==(i -1))); 
end 
equ_freq=double(h_freq)/(m*n); 
subplot(2,2,3),imshow(b),title('Histogram Equalization IMAGE') 
subplot(2,2,4),plot2d3 ( 'gnn' ,[1:256] ,equ_freq),title ('Histogram of the Image'); 
