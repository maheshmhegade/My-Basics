 D = squeeze(D);
phandles = contourslice(D,[],[],[1,2,3],8);view(3)
gh(1) = hggroup; gh(2) = hggroup; gh(3) = hggroup;
for k=1:length(phandles)
   zd = get(phandles(k),'ZData');
   plane = num2str(zd(1));
   switch plane
  case '1'
         set(phandles(k),'Parent',gh(1),'EdgeColor','r')
      case '2'
         set(phandles(k),'Parent',gh(2),'EdgeColor','g')
      case '3'
         set(phandles(k),'Parent',gh(3),'EdgeColor','b')
       otherwise   disp('Don''t know what to do with it')
   end
end
