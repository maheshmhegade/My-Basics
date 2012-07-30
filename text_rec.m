clc;
clear all;
close all;
I=imread('ruf.jpg');
a=size(I);
I=rgb2gray(I);
im_div_ary=zeros((a(1)*a(2)),1);
niblack=uint8(zeros(a(1),a(2)));
for i=1:a(1)
    for j=1:a(2)
        im_div_ary(i+j)=I(i,j);
    end
end
im_div=std(im_div_ary);
for i=2:a(1)-2
    for j=2:a(2)-2
        div_ary=zeros(9,1);
        q=1;
%         std_div=0;
%         std_avg=0;
        for k=-1:-1:1
            for l=-1:-1:1
                div_ary(q)=I(i+k,j+l);
                q=q+1;
            end
        end
        std_div=std(div_ary);
        std_avg=mean(div_ary);
        mes=std_avg+0*std_div;
        if(I(i,j) > mes)
%        if(I(i,j) > mes && std_div > im_div)
            niblack(i,j)=1;
        elseif(I(i,j) < mes)
        %elseif(I(i,j) < mes && std_div > im_div)
            niblack(i,j)=-1;
%         elseif()
%             niblack(i,j)=0;
        end
    end
end