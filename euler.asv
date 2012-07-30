clc
clear all
close all
mu=0.7;
mur=0.7;
t=0.63/2;
m=116;
a=0.37;
b=0.55;
wr=0.45;
wl=0.45;
r=0.2;
I=20;
g=9.81;
X1(1)=0;
X2(1)=r*(wr+wl)/2;
X3(1)=0;
T1=1;
T2=1.001;
Fx1=T1/(2*r);
Fx2=T2/(2*r);
h=0.001;
nmax=10000;
X1(1)=0;
X2(1)=(wr+wl)/(2*t);
X3(1)=0;
X4(1)=0;
X5(1)=0;
X6(1)=0;
for i=1:nmax
Mr(i)=((mu*a*b*m*g*(sgn(X3(i)+a*X1(i))-sgn(X3(i)-b*X1(i))))/(a+b))+(0.5*mur*t*m*g*(sgn(X2(i)-t*X1(i))-sgn(X2(i)+t*X1(i))));
Rx(i)=mur*m*g*0.5*(sgn(X2(i)-t*X1(i))+sgn(X2(i)+t*X1(i)));
Fy(i)=mu*m*g*0.5*(sgn(X3(i)+a*X1(i))+sgn(X3(i)-b*X1(i)));
Y1(i)=(2*t*(Fx1-Fx2)-Mr(i))/I;
Y2(i)=(((Fx1-Fx2)-Rx(i))/m)+X3(i)*X1(i);
Y3(i)=-(Fy(i)/m)-X2(i)*X1(i);
Y4(i)=X3(i)*sin(X6(i))+X2(i)*cos(X6(i));
Y5(i)=X3(i)*cos(X6(i))-X2(i)*sin(X6(i));
Y6(i)=X1(i);
X1(i+1)=X1(i)+h*Y1(i);
X2(i+1)=X2(i)+h*Y2(i);
X3(i+1)=X3(i)+h*Y3(i);
X4(i+1)=X4(i)+h*Y4(i);
X5(i+1)=X5(i)+h*Y5(i);
X6(i+1)=X6(i)+h*Y6(i);
end
plot(X4,X5)
% Plot(Mr)
% Plot(Rx)
% Plot(Fy)
grid on