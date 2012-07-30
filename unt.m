clc;
clear all;
close all;

for j=1:100;
    for i=1:100;
        d(i,j,1)=double(255);
        d(i,j,2)=double(128);
        d(i,j,3)=double(64);
    end
end
imtool(d)