clc;
close all;
clear all;
t = 0:.1:2*pi;
for k=1:5
    offset = k/7;
    m(:,k) = t+offset';
end
hSLines = plot(t,sin(m),'Color','b');hold on
hCLines = plot(t,cos(m),'Color','g');
hSGroup = hggroup;
hCGroup = hggroup;
set(hSLines,'Parent',hSGroup)
set(hCLines,'Parent',hCGroup)
% Include these hggroups in the legend:
set(get(get(hSGroup,'Annotation'),'LegendInformation'),...
    'IconDisplayStyle','on'); 
set(get(get(hCGroup,'Annotation'),'LegendInformation'),...
    'IconDisplayStyle','on'); 
legend('Sine','Cosine')




 