clc;
clear all;
close all;
r=mmreader('vishi.avi');
k=2*r.FrameRate;
p=r.NumberOfFrames/k;
m=r.Width;
n=r.Height;
I=uint8(zeros(n,m,p));
for i=1:k:p
    I(i)=read(i,r);
end
