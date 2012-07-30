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
T1=4;
T2=4;
Fx1=T1/(2*r);
Fx2=T2/(2*r);
h=0.1;
nmax=1000;
for i=1:nmax
Mr(i)=(mu*a*b*m*g*(sgn(X3(i)+a*X1(i))-sgn(X3(i)-b*X1(i))))/(a+b)+(0.5*mur*t*m*g*(sgn(X2(i)-t*X1(i))-sgn(X2(i)+t*X1(i))));
Mr1(i)=(mu*a*b*m*g*(sgn(X3(i)+a*(X1(i)+h*0.5))-sgn(X3(i)-b*(X1(i)+h*0.5)))/(a+b))+(0.5*mur*t*m*g*(sgn(X2(i)-t*(X1(i)+h*0.5))-sgn(X2(i)+t*(X1(i)+h*0.5))));
Mr2(i)=(mu*a*b*m*g*(sgn(X3(i)+a*(X1(i)+h))-sgn(X3(i)-b*(X1(i)+h)))/(a+b))+(0.5*mur*t*m*g*(sgn(X2(i)-t*(X1(i)+h))-sgn(X2(i)+t*(X1(i)+h))));
Rx(i)=mur*m*g*0.5*(sgn(X2(i)-t*X1(i))+sgn(X2(i)+t*X1(i)));
Fy(i)=mu*m*g*0.5*(sgn(X3(i)+a*X1(i))+sgn(X3(i)-b*X1(i)));
k1=f1(Fx1,Fx2,Mr(i));
k2=f1(Fx1,Fx2,Mr1(i));
k3=f1(Fx1,Fx2,Mr1(i));
k4=f1(Fx1,Fx2,Mr2(i));
X1(i+1)=X(i)+h*(k1+2*k2+2*k3+k4)/6;
end