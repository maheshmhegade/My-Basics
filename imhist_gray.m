function histarray=imhist_gray(I);
clc
I=imread('ruf.jpg');
a=size(I);
if (numel(a)==3)
    I=rgb2gray(I);
end
% imtool(I)
a=size(I);
edge_I=edge(I,'canny');
sum_edge=sum(edge_I');
G_hist=zeros(256,1);
t=0:255;
for i=1:a(1)
    for j=1:a(2)
        G_hist(I(i,j)+1)=G_hist(I(i,j)+1)+1;
    end
end
loc_max=zeros(256,1);
for i=1:255
    %     if(G_hist(i)>G_hist(i-1) && G_hist(i)>G_hist(i+1))
    %         loc_max(i)=1;
    %     end
    flag=0;
    for loc_arg=-10:10
        if(i+loc_arg >0 && i+loc_arg < 257)
            if(flag == 0)
                if(G_hist(i) < G_hist(i+loc_arg))
                    flag = 1;
                end
            end
        end
    end
    if(flag == 0)
        loc_max(i)=1;
    end
end
sum_max=sum(loc_max);
maxghist=max(G_hist);
G_hist=G_hist/(maxghist);
var(G_hist)
plot(sum_edge,'g');
grid on
histarray=G_hist;