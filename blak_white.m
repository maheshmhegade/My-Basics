clc;
clear all;
close all;
I=imread('ruf5.jpg');
a=size(I);
I=rgb2hsv(I);
for i=1:a(1)
    for j=1:a(2)
        v(i,j)=I(i,j,3);
    end
end
lvl=graythresh(v);
im2bw(v,lvl);