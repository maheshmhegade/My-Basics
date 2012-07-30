clc
clear all
close all
I=imread('david.jpg');
a=size(I);
T=double(I);
R0=255;
G0=255;
B0=0;
mag=sqrt(R0^2+G0^2+B0^2);
for i=1:a(1)
    for j=1:a(2)
        J(i,j,1)=uint8(fix(T(i,j,1)*R0/mag));
        J(i,j,2)=uint8(fix(T(i,j,2)*G0/mag));
        J(i,j,3)=uint8(fix(T(i,j,3)*B0/mag));
    end
end
imtool([I J])