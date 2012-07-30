clc;
clear all;
close all;
d=imread('E:\IMAGES\Matlab\ora\o14.jpg');
a=size(d);n=a(1,1);m=a(1,2);
for j=1:m;
    for i=1:n;
        r(i,j)=double(d(i,j,1));
        g(i,j)=double(d(i,j,2));
        b(i,j)=double(d(i,j,3)); 
        r1(i,j)=d(i,j,1);
        g1(i,j)=d(i,j,2);
        b1(i,j)=d(i,j,3);
I(i,j)=uint8(sqrt((r(i,j)^2+g(i,j)^2+b(i,j)^2)/3));
    end
end
E=uint8(255*ones(n,m));
E1=uint8(255*ones(n,m));
E2=uint8(255*ones(n,m));
E3=uint8(255*ones(n,m));
G=zeros(1,m*n);
T=double(I);
q=0;
for j=2:m-1;
    for i=2:n-1;
       q=q+1; 
        ev=2*(T(i+1,j)-T(i-1,j))+T(i+1,j-1)-T(i-1,j-1)+T(i+1,j+1)-T(i-1,j+1);
        eh=2*(T(i,j+1)-T(i,j-1))+T(i+1,j+1)-T(i+1,j-1)+T(i-1,j+1)-T(i-1,j-1);
   
        G(q)=sqrt(ev^2+eh^2);
%         
%         if(k>=T0)
%             E(i,j)=0;
%         end
    end
end
avg=mean(G)
std1=std(G)
T0=avg+0.5*std1;
for j=2:m-1;
    for i=2:n-1;
        ev=2*(T(i+1,j)-T(i-1,j))+T(i+1,j-1)-T(i-1,j-1)+T(i+1,j+1)-T(i-1,j+1);
        eh=2*(T(i,j+1)-T(i,j-1))+T(i+1,j+1)-T(i+1,j-1)+T(i-1,j+1)-T(i-1,j-1);
   
        k=sqrt(ev^2+eh^2);
        
        if(k>=T0)
            E(i,j)=0;
        end
    end
end
imtool([E,I])