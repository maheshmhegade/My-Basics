
[X,Y] = meshgrid(-2:.1:2);
Z = X.*exp(-X.^2-Y.^2);
[mC hC] = contour(X,Y,Z);
set(get(get(hC,'Annotation'),'LegendInformation'),...
    'IconDisplayStyle','Children');
%{
Assigns each line object's DisplayName property a string 
based on the value of the contour interval it represents
%}
k =1; ind = 1; hLines = get(hC,'Children');
while k < size(mC,2),
   set(hLines(ind),'DisplayName',num2str(mC(1,k)))
   k = k+mC(2,k)+1; ind = ind+1;
end 
% Display the legend using DisplayName labels
legend('show')