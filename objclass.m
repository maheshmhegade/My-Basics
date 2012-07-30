clc;
clear all
close all
d=imread('E:\IMAGES\Matlab\obj.png');
a=size(d);
m=a(1,1);n=a(1,2);
I=rgb2gray(d);
I=double(I);
cnt=1;
new1(1)=0;
for i=1:m
    for j=1:n
        flag=0;
        %         x=double(d(i,j,1));
        %         y=double(d(i,j,2));
        %         z=double(d(i,j,3));
        %         t=sqrt(((R-x)^2+(G-y)^2+(B-z)^2));
        if( abs(I(i,j)-I(1,1))<=10)
            o(i,j)=1;
        elseif(abs(I(i,j)-I(1,1))>10)
            for k=1:cnt
                if(abs(I(i,j)-new1(k))<10)
                    flag=1;
                end
            end
            if(flag~=1)
                new1(cnt+1)=I(i,j);
                cnt=cnt+1;
            end
        end
    end
end
v=size(new1)
lt=v(2)
ass=uint8(zeros(m,n));

for i=1:m
    for j=1:n
        for k=1:lt
            
            if(abs(I(i,j)-new1(k))<=10)
                ass(i,j)=10*k;
            end
        end
    end
    
end
k1=91;
%k is the object tag

as=edge(ass,'canny');
sumx=0;
sumy=0;
peri=0;
area=0;
area1=0;
for i=1:m
    for j=1:n
        if (ass(i,j)==k1)
            %             E=edge(ass,'canny');
            % make a best fit rectangle algorithm
            
            area=area+1;
            if(I(i,j) == k1 && as(i,j)==1)
                peri=peri+1;
            end
            %                        area ;
            %             peri;
            rad=2*area/peri;
            rad=rad/1.082;
            sumx=sumx+i;
            sumy=sumy+j;
            
            cenx=round(sumx/area);
            ceny=round(sumy/area);
            I2=zeros(m,n);
            
            w=rad*rad-((cenx-i)^2+(ceny-j)^2);
            if(w > 0)
                I2(i,j)=uint8(255);
            end
            if(I2(i,j) == k1)
                area1=area1+1;
            end
           
        end
    end
end
 per=1-((abs(area-area1))/area)
%  
% % peri1=0;
% % E2=edge(I2,'canny');
% % for i=1:m
% %     for j=1:n
% %         if(E2(i,j) > 0)
% %             peri1=peri1+1;
% %         end
% %     end
% %  end
% %
