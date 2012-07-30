clc
clear all 
close all
I=imread('D:\entertainment\wall papers\graph.jpg')
m=1600;
n=1200;

for j=1:m
    for i=1:n
       % for k=1:3
        J1(i,j)=I(i,j,1);
    end
end
for j=1:m
    for i=1:n
       % for k=1:3
        J2(i,j)=I(i,j,2);
    end
end
for j=1:m
    for i=1:n
       % for k=1:3
        J3(i,j)=I(i,j,2);
    end
 end
% imtool(J1)
% imtool(J2)
% % imtool(J3)
% for j=1:1024
%     for i=1:768
%        % for k=1:3
%         K(i,j,1)=J1(i,j);
%     end
% end
% for j=1:1024
%     for i=1:768
%        % for k=1:3
%        K(i,j,2)=J2(i,j);
%     end
% end
% for j=1:1024
%     for i=1:768
%        % for k=1:3
%         K(i,j,3)=J3(i,j);
%     end
% end
for j=300:1:1200
    k(j)=255;
    for i=1:n-1
       % for k=1:3
        if(J3(i,j)<k(j))
            k(j)=J3(i,j);
        end
    end
 end
plot(k);
%  imtool(I)