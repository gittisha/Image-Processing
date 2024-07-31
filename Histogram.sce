a=imread ('lightyagami.jpg'); 
[m n]= size (a); 
for i =1:256 
frequency(i)= length ( find (a ==(i -1))); 
end 
figure,plot(frequency),title('Frequency Plot of the Image'); 
sleep(2000); 
figure,plot2d3 ( 'gnn' ,[1:256] ,frequency),title ('Histogram of the Image'); 
