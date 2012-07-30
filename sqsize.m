% clc;
% clear all;
% close all;
% d=mmreader('vishi.avi');
% frm=d.NumberOfFrames;
% k=read(d,500);
 function [a b ll1 ll2]=sqsize(k)
k=imread('ruf5.jpg');
a=size(k);
if (numel(a)==3)
    g=rgb2gray(k);
end
imtool(g)
m=a(1);n=a(2);
pic_x=(m+10)/2;
pic_y=(n+10)/2;
gxy=g(pic_x,pic_y);
flag=0;
i=0;
while(flag == 0)
   i=i+1;  
   if(abs(g(pic_x,pic_y)-g(pic_x,pic_y+i)) > 60)
       col2=pic_y+i;
       flag=1;
   end
end
flag=0;
i=0;
while(flag == 0)
   i=i+1;  
   if(abs(g(pic_x,pic_y)-g(pic_x,pic_y-i)) > 60)
       col1=pic_y-i;
       flag=1;
   end
end
flag=0;
i=0;
while(flag == 0)
   i=i+1;  
   if(abs(g(pic_x,pic_y)-g(pic_x+i,pic_y)) > 60)
       row2=pic_x+i;
       flag=1;
   end
end
flag=0;
i=0;
while(flag == 0)
   i=i+1;  
   if(abs(g(pic_x,pic_y)-g(pic_x-i,pic_y)) > 60)
       row1=pic_x-i;
       flag=1;
   end
end        

a=row1;
b=col1;
ll1=row2;
ll2=col2;
% for i=0:-1:-60
%     for j=0:-1:-60
%         if ((g((m+10)/2,(n +10)/2)-g((m+10)/2+i,(n +10)/2+j))^2>200&&flag==0)
%             ll1=(n +10)/2+j;
%             flag=1;
%         end
%     end
% end
% flag=0;
% for j=0:-1:-60
%     for i=0:-1:-60
%         if ((g((m+10)/2,(n +10)/2)-g((m+10)/2+i,(n +10)/2+j))^2>200&&flag==0)
%            
%             ll2=(m+10)/2+i;
%             flag=1;
%         end
%     end
% end
% flag=0;
% for i=0:60
%     for j=0:60
%         if ((g((m+10)/2,(n +10)/2)-g((m+10)/2+i,(n +10)/2+j))^2>200&&flag==0)
%             hl1=(n +10)/2+j;
%             
%             flag=1;
%         end
%     end
% end
% flag=0;
% for j=0:60
%     for i=0:60
%         if ((g((m+10)/2,(n +10)/2)-g((m+10)/2+i,(n +10)/2+j))^2>200&&flag==0)
%            
%             hl2=(m+10)/2+i;
%             flag=1;
%         end
%     end
% end
% a=hl2-ll2;b= hl1-ll1;