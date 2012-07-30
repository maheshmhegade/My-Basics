clc
clear all 
close all
f=imread('E:\IMAGES\11.png');
%  h=imtool(f);
m=1200;
n=1132;
for j=1:m
    for i=1:n
       % for k=1:3
        r(i,j)=f(i,j,1);
        g(i,j)=f(i,j,2);
        b(i,j)=f(i,j,3);
    end
end
for j=1:m
    for i=1:n
        if(r(i,j)==237)
            r(i,j)=0;
        else
            r(i,j)=255;
        end
    end
end
 imtool(r);
  for i=1:m
     for j=1:n
        if(r(i,j)==0)
            for k=1:m
                for l=1:n
                    a(m)=i;
                    b(n)=j;
                end
            end
        end       
     end
 end
a
b


