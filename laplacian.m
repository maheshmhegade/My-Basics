clc;
clear all;
close all;
d=imread('first.jpg');
a=size(d);n=a(1,1);m=a(1,2);
I=rgb2gray(d);
E=uint8(255*zeros(n,m));
E1=uint8(255*zeros(n,m));
E2=uint8(255*zeros(n,m));
E3=uint8(255*zeros(n,m));

for j=2:m-1;
    for i=2:n-1;
        k=0;
        k=4*I(i,j)-I(i,j+1)-I(i,j-1)-I(i+1,j)-I(i-1,j);
         E(i,j)=abs(k);
%         k=8*I(i,j)-I(i,j+1)-I(i,j-1)-I(i+1,j)-I(i-1,j)-I(i-1,j-1)-I(i-1,j+1)-I(i+1,j+1)-I(i+1,j-1);
% k1=double(I(i+1,j+1)-I(i,j));
% k2=double(I(i+1,j)-I(i,j+1));
% k=sqrt(k1^2+k2^2);

% if(k~=0)
%     
%         E(i,j)=uint8(k);
% end
    end
end
I=imrotate(I,90);
% imtool([E I]);
L=edge(I,'canny');
plot(sum(L))
% imhist(L)
% for j=2:m-1;
%     for i=2:n-1;
%        G=[I(i,j) I(i,j+1) I(i,j-1) I(i+1,j) I(i+1,j+1) I(i+1,j-1) I(i-1,j) I(i-1,j+1) I(i-1,j-1)]
% %        k=median(G);
% k1=median(G);
% k2=max(G);
% k3=min(G);
%        
%        E1(i,j)=I(i,j)-.5*k1;
%             E2(i,j)=I(i,j)-.5*k2;
%      E3(i,j)=I(i,j)-.5*k3;
% 
%     end
% end
% imtool([E1 E2 E3])
% imtool(I)
