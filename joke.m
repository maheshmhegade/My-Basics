g=25;
b=50;
for i=1:256;
    h(i)=((i-(i+g+b)/3)^2/(i^2 - (i*(g+b) + g*b)/3));
end
plot(h)
hold on;
g=50;
b=100;
for i=1:256;
    h(i)=((i-(i+g+b)/3)^2/(i^2 - (i*(g+b) + g*b)/3));
end
plot(h,'r')
hold on;
g=125;
b=100;
for i=1:256;
    h(i)=((i-(i+g+b)/3)^2/(i^2 - (i*(g+b) + g*b)/3));
end
plot(h,'g')