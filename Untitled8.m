
fabric = imread('E:\IMAGES\wallpapers\Uppi\111.jpg');
figure(1), imshow(fabric), title('fabric');
load regioncoordinates;

nColors = 6;
sample_regions = false([size(fabric,1) size(fabric,2) nColors]);

for count = 1:nColors
  sample_regions(:,:,count) = roipoly(fabric,region_coordinates(:,1,count),...
                                      region_coordinates(:,2,count));
end

imshow(sample_regions(:,:,2)),title('sample region for red');
cform = makecform('srgb2lab');
lab_fabric = applycform(fabric,cform);

a = lab_fabric(:,:,2);
b = lab_fabric(:,:,3);
color_markers = repmat(0, [nColors, 2]);

for count = 1:nColors
  color_markers(count,1) = mean2(a(sample_regions(:,:,count)));
  color_markers(count,2) = mean2(b(sample_regions(:,:,count)));
end

disp(sprintf('[%0.3f,%0.3f]',color_markers(2,1),color_markers(2,2)));
color_labels = 0:nColors-1;
a = double(a);
b = double(b);
distance = repmat(0,[size(a), nColors]);
for count = 1:nColors
  distance(:,:,count) = ( (a - color_markers(count,1)).^2 + ...
                      (b - color_markers(count,2)).^2 ).^0.5;
end

[value, label] = min(distance,[],3);
label = color_labels(label);
clear value distance;
rgb_label = repmat(label,[1 1 3]);
segmented_images = repmat(uint8(0),[size(fabric), nColors]);

for count = 1:nColors
  color = fabric;
  color(rgb_label ~= color_labels(count)) = 0;
  segmented_images(:,:,:,count) = color;
end

imshow(segmented_images(:,:,:,4)), title('purple objects');







