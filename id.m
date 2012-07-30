clc;
clear all;
close all;
d=imread('E:\IMAGES\Matlab\obj.png');
a=size(d);n=a(1,1);m=a(1,2);
for j=1:m;
    for i=1:n;
        r(i,j)=d(i,j,1);
        g(i,j)=d(i,j,2);
        b(i,j)=d(i,j,3);
    end
end
s=1;
R(s)=d(1,1,1);
G(s)=d(1,1,2);
B(s)=d(1,1,3);


for l=1:10;
    w=0;
    for j=1:m;
        for i=1:n;
            for p=1:s;
                k=(d(i,j,1)*R(s)+d(i,j,2)*G(s)+d(i,j,3)*B(s))/(sqrt(double(d(i,j,1)*d(i,j,1)+d(i,j,2)*d(i,j,2)+d(i,j,3)*d(i,j,3))))/(sqrt(double((R(s)*R(s)+G(s)*G(s)+B(s)*B(s)))));
                if(k>=.95)
                    w=1;
                end
                
                if(w~=1)
                    s=s+1;
                    R(s)=d(i,j,1);
                    G(s)=d(i,j,2);
                    B(s)=d(i,j,3);
                end
            end
            
        end
    end
end


