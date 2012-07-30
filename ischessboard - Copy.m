 function out=ischessboard(I)
% clc
% I=imread('ruf9.jpg');
a=size(I);
if (numel(a)==3)
    I=rgb2gray(I);
end
% imtool(I)
a=size(I);
edge_I=edge(I,'canny');
sum_edge=sum(edge_I);
max_sum_edge=max(sum_edge);
count=0;
for i=1:a(2)
    if(sum_edge(i)>.5*max_sum_edge)
        count=count+1;
    end
end
plot(sum_edge,'r')
hold on
grid on
sum_edge=sum(edge_I');
max_sum_edge=max(sum_edge);
count2=0;
for i=1:a(1)
    if(sum_edge(i)>.5*max_sum_edge)
        count2=count2+1;
    end
end
plot(sum_edge)
diff=abs(count-count2);
flag=0;
if(diff < 5)
    flag=1;
end
% count
% count2


out=flag;