clc;
clear all;
close all;
d=imread('Image17.jpg');
l=size(d);n=l(1,1);m=l(1,2);
a=0.1;b=0.1;
I=rgb2gray(d);
Im(m,n)=uint8(zeros);
for i=3:n-2;
    for j=3:m-2;
        I(i,j)=I(i-2,j-2)+a*I(i-2,j-1)-a*I(i-2,j+1)-I(i-2,j+2)+ I(i-1,j-2)+b*I(i-1,j-1)-b*I(i-1,j+1)-I(i-1,j+2)-I(i+1,j-2)-b*I(i+1,j-1)+b*I(i+1,j+1)+I(i+1,j+2)-I(i+2,j-2)-a*I(i+2,j-1)+a*I(i+2,j+1)+I(i+2,j+2);  
%         Im(i,j)=uint8(I(i,j));
    end
end