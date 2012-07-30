load mrit
D = squeeze(D);
phandles = contourslice(D,[],[],[1,15,27],8);view(3)
gh(1) = hggroup; gh(2) = hggroup; gh(3) = hggroup;
%set(gh,'Parent',gca)
for k=1:length(phandles)
   zd = get(phandles(k),'ZData');
   plane = num2str(zd(1));
   switch plane
      case '1'
         set(phandles(k),'Parent',gh(1),'EdgeColor','r')
      case '15'
         set(phandles(k),'Parent',gh(2),'EdgeColor','g')
      case '27'
         set(phandles(k),'Parent',gh(3),'EdgeColor','b')
      otherwise
         disp('Don''t know what to do with it')
   end
end
hA = get(gh,'Annotation');
hLL = get([hA{:}],'LegendInformation');
set([hLL{:}],{'IconDisplayStyle'},...
   {'on','on','on'}')
set(gh,{'DisplayName'},{'Level=1','Level=15','Level=27'}')
legend show

