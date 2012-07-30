clc;
clear all;
close all;
d=imread('E:\IMAGES\Matlab\ora\o14.jpg');
a=size(d);n=a(1,1);m=a(1,2);
for j=1:m;
    for i=1:n;
         r(i,j)=double(d(i,j,1));
        g(i,j)=double(d(i,j,2));
        b(i,j)=double(d(i,j,3));
        
        r1(i,j)=d(i,j,1);
        g1(i,j)=d(i,j,2);
        b1(i,j)=d(i,j,3);
I(i,j)=uint8(sqrt((r(i,j)^2+g(i,j)^2+b(i,j)^2)/3));
    end
end
E=zeros(m,n);
k=round(m/4);
l=round(n/4);
for j=l:3*l;
    for i=k:3*k;
        E(i,j)=1;
      
    end
end
for j=1:m;
    for i=1:n;
        Y(i,j)=uint8(E(i,j)*I(i,j));
      
    end
end
imtool(Y);
