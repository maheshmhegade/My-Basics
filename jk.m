clc;
clear all;
close all;

f = getframe;              %Capture screen shot
[im,map] = frame2im(f);    %Return associated image data 
if isempty(map)            %Truecolor system
  rgb = im;
else                       %Indexed system
  rgb = ind2rgb(im,map);   %Convert image data
end