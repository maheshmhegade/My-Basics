clc;clear all;close all;
y(1)=0;
t1=0;
t2=1;
n=100;
step=(t2-t1)/n;
for j=1:n
    k=zeros(4,1);
    for i=1:4
        j=j+1;
        xa(j)=j/100;
        k(1)=step*(y(j-1)+sin(t1));
        k(2)=step*(y(j-1)+k(1)/2+sin(t1+step/2));
        k(3)=step*(y(j-1)+k(2)/2+sin(t1+step/2));
        k(4)=step*(y(j-1)+k(3)+sin(t1+step));
        y(j)= y(j-1)+(k(1)+2*k(2)+2*k(3)+k(4))/6;
    end
    t1=t1+step;
end
plot(xa,y)