clc;
clear all;
close all;
d=imread('E:\IMAGES\Matlab\obj1.jpg');
a=size(d);n=a(1,1);m=a(1,2);
for j=1:m;
    for i=1:n;
        
        r1(i,j)=d(i,j,1);
        g1(i,j)=d(i,j,2);
        b1(i,j)=d(i,j,3);
        
    end
end
E(m,n)=0;
for j=1:m;
    for i=1:n;
        if(rem(i,2)==0&&rem(j,2)==0)
            E(i/2,j/2)=r1(i,j);
        
    end
    end
end
imtool(E);