clc;
clear all;
close all;
d=imread('E:\IMAGES\Matlab\ora\o14.jpg');
a=size(d);n=a(1,1);m=a(1,2);
p=4;
q=4;
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
G=zeros(1,m*n);
T=double(I);
q=0;
r=floor(m/p);
s=floor(n/q);
rem1=rem(m,p);
rem2=rem(n,q);
cnt1=1;

while((cnt1+1)*r<=m)
    if(rem1~=0)
        
        for j=2+(cnt1-1)*r:(cnt1+1)*r;
            cnt2=1;
            if(rem2~=0)
                while((cnt2+1)*s<=n)
                    for i=2+(cnt2-1)*s:(cnt2+1)*s;
                        %         low limit inc & uper lim decrs
                        q=q+1;
                        
                        ev=2*(T(i+1,j)-T(i-1,j))+T(i+1,j-1)-T(i-1,j-1)+T(i+1,j+1)-T(i-1,j+1);
                        eh=2*(T(i,j+1)-T(i,j-1))+T(i+1,j+1)-T(i+1,j-1)+T(i-1,j+1)-T(i-1,j-1);
                        
                        G(q)=sqrt(ev^2+eh^2);
                        cnt2=cnt2+1;
                        rem2=rem2-1;
                    end
                end
            end
            cnt1=cnt1+1;
            rem1=rem1-1;
        end
    end
    avg=mean(G)
    std1=std(G)
    T0=avg+0.5*std1;
    
end
while((cnt1+1)*r<=m)
    if(rem1==0)
        
        for j=2+(cnt1-1)*r:(cnt1+1)*r-1;
            cnt2=1;
            if(rem2==0)
                while((cnt2+1)*s<=n)
                    for i=2+(cnt2-1)*s:(cnt2+1)*s-1;
                        %         low limit inc & uper lim decrs
                        q=q+1;
                        
                        ev=2*(T(i+1,j)-T(i-1,j))+T(i+1,j-1)-T(i-1,j-1)+T(i+1,j+1)-T(i-1,j+1);
                        eh=2*(T(i,j+1)-T(i,j-1))+T(i+1,j+1)-T(i+1,j-1)+T(i-1,j+1)-T(i-1,j-1);
                        
                        G(q)=sqrt(ev^2+eh^2);
                        cnt2=cnt2+1;
                        
                    end
                end
            end
            cnt1=cnt1+1;
            
        end
    end
    avg=mean(G)
    std1=std(G)
    T0=avg+0.5*std1;
    
end
% avg=mean(G)
% std1=std(G)
% T0=avg+0.5*std1;
cnt1=1;
cnt2=1;
for j=2+(cnt1-1)*r:(cnt1+1)*r;
    
    for i=2+(cnt2-1)*s:(cnt2+1)*s;
        
        ev=2*(T(i+1,j)-T(i-1,j))+T(i+1,j-1)-T(i-1,j-1)+T(i+1,j+1)-T(i-1,j+1);
        eh=2*(T(i,j+1)-T(i,j-1))+T(i+1,j+1)-T(i+1,j-1)+T(i-1,j+1)-T(i-1,j-1);
        
        k=sqrt(ev^2+eh^2);
        
        if(k>=T0)
            E(i,j)=0;
        end
    end
end