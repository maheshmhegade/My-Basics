clc;clear all;close all;
y(1)=0;z(1)=0;
t1=0;
t2=1;
n=100;
step=(t2-t1)/n;
for j=1:n

    k=zeros(4,1);
    l=zeros(4,1);
    
    for i=1:4
        
        j=j+1;
        xa(j)=j/n;
        
        k(1)=step*(y(j-1)+z(j-1)^2);
        l(1)=step*(exp(-y(j-1))+z(j-1));
        
        k(2)=step*(y(j-1)+k(1)/2+(z(j-1)+l(1)/2)^2);
        l(2)=step*(exp(-y(j-1)-k(1)/2)+z(j-1)+l(1)/2);
        
        k(3)=step*(y(j-1)+k(2)/2+(z(j-1)+l(2)/2)^2);
        l(3)=step*(exp(-y(j-1)-k(2)/2)+z(j-1)+l(2)/2);
        
        k(4)=step*(y(j-1)+k(3)+(z(j-1)+l(3))^2);
        l(4)=step*(exp(-y(j-1)-k(3))+z(j-1)+l(3));
        
        y(j)= y(j-1)+(k(1)+2*k(2)+2*k(3)+k(4))/6;
        z(j)= z(j-1)+(l(1)+2*l(2)+2*l(3)+l(4))/6;
    end
    t1=t1+step;
end
subplot(2,1,1)
plot(xa,y,'r')
title('Y versus X');
subplot(2,1,2)
plot(xa,z,'b')
title('Z versus X');