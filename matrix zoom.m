clc
clear all 
close all
a=[1 2;3 4]
for i=1:2
   k=0;
    for j=1:2
        b(k,j)=a(i,j);
        b(k+1,j)=a(i,j);
        k=k+2;
    end
end