% clc;
% clear all;
% close all;
% I=imread('david.jpg');
% a=size(I);n=a(1,1);m=a(1,2);
% I=double(I);
% %I=rgb2gray(d);
% RP=100;
% GP=100;
% BP=0;
% E=uint8(255*zeros(n,m,3));
% % E1=uint8(255*zeros(n,m));
% % E2=uint8(255*zeros(n,m));
% % E3=uint8(255*zeros(n,m));
% k=sqrt(RP^2 + GP^2 + BP^2);
% for j=1:m;
%     for i=1:n;
%         theta=0;
%         peta=RP*I(i,j,1)+GP*I(i,j,2)+BP*I(i,j,3);
%         theta=peta/((sqrt(I(i,j,1)^2 + I(i,j,2)^2 + I(i,j,3)^2))*k);
%         %k=4*I(i,j)-I(i,j+1)-I(i,j-1)-I(i+1,j)-I(i-1,j);
%          E(i,j,1)=uint8(I(i,j,1)*theta);
%          E(i,j,2)=uint8(I(i,j,2)*theta);
%         E(i,j,3)=uint8(I(i,j,3)*theta);
%     end
% end
% %imtool(E)
% imtool([I E])
clc
clear all
close all
I=imread('david.jpg');
a=size(I);
T=double(I);
R0=255;
G0=0;
B0=0;
mag=sqrt(R0^2+G0^2+B0^2);
for i=1:a(1)
    for j=1:a(2)
        magt=sqrt((T(i,j,1)^2)+(T(i,j,2)^2)+(T(i,j,3)^2));
        dot=(T(i,j,1)*R0+T(i,j,2)*G0+T(i,j,3)*B0)/(mag*magt);
        J(i,j,1)=uint8(fix(R0*dot/mag*magt));
        J(i,j,2)=uint8(fix(G0*dot/mag*magt));
        J(i,j,3)=uint8(fix(B0*dot/mag*magt));
    end
end
imtool(J)