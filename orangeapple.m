clc
clear all
close all
  LS1 = [1 2 4 6 8 -4 -6 -7 -.02 -.3;3 5 4.2 7 12 -2 -5.3 -4 3 1]
  LS2 = [11 3 5 -2 -4 0.25 -.5 7 -.2 -3;3 -4 4.2 -7 -5.2 0 -5.3 -4 -3 -4.3]
n=input('number of iterations');
 W1(1)=5;
 W2(1)=-5;
 k=1;
for p=1:1:100
   eta=p/10;
end
 eta=1
 for l=1:1:10
for i=1:1:l
    s=0;
    for j=1:1:10
       if( (W1(k)*LS1(1,j)+W2(k)*LS1(2,j)) <= 0 )
           W1(k+1)=W1(k)+eta*LS1(1,j);
           W2(k+1)=W2(k)+eta*LS1(2,j);
       else
           W1(k+1)=W1(k);
           W2(k+1)=W2(k);
           s=s+1;
       end
       k=k+1;
    end
    for j=1:1:10
       if( (W1(k)*LS2(1,j)+W2(k)*LS2(2,j)) > 0 )
           W1(k+1)=W1(k)-eta*LS2(1,j);
           W2(k+1)=W2(k)-eta*LS2(2,j);
       else
           W1(k+1)=W1(k);
           W2(k+1)=W2(k);
           s=s+1;
       end
       k=k+1;
    end
    if(s == 20)
       k
        break
    end
end
N1(l)=W1(k);
N2(l)=W2(k);
 end
%end
plot(W1,W2)

