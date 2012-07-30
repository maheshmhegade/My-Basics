clc;
clear all
close all
t=mmreader('vishi.avi');
numframe=t.NumberOfFrames;
k=1;
d=read(t,1);
a=size(d);m=a(1);n=a(2);
for i=1:40
    d=read(t,i);
    is=ischessboard(d);
    imwrite(d,char_name(90));
    if (is==1)
        k=k+1
%         am(k)=d;fr
    end
end

        