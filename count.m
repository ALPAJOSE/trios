i=imread('Count.png');
imshow(i);
j=rgb2gray(i);
figure,imshow(j);

l=~k;
figure,imshow(l);

d=edge(l,'canny');
figure,imshow(d);
b=bwboundaries(d);

B = bwboundaries(d,conn,noholes)
%[B,L]= bwboundaries(___)example
%[B,L,N,A] = bwboundaries(___)
figure,imshow(d);
text(10,strcat('\color{green}objects found:',num2str(length(b))));
hold on
for k=1:length(B)
    bounday=b(k);
    plot(boundary(:,2),boundary(:,1),'g' , 'LineWidth' ,0.2);
    end
