clc
clear all
close all
I=imread('ruf5.jpg');
imtool(I)
% % I=rgb2hsv(I);
% I=250*I;
%I=uint8(I);
a=size(I);
R_hist=zeros(256,1);
G_hist=zeros(256,1);
B_hist=zeros(256,1);
t=0:255;
for i=1:a(1)
    for j=1:a(2)
        R_hist(I(i,j,1)+1)=R_hist(I(i,j,1)+1)+1;
        G_hist(I(i,j,2)+1)=G_hist(I(i,j,2)+1)+1;
        B_hist(I(i,j,3)+1)=B_hist(I(i,j,3)+1)+1;
    end
end
plot(t,R_hist,'r')
hold on
grid on
plot(t,G_hist,'g')
plot(t,B_hist,'b')