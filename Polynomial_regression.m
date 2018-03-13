clear ;
clc , close all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Polynomial Regression 
format long g
x = [0 1 2 3 4 5 ] ;
y = [2.1 7.7 13.6 27.2 40.9 61.1] ;
plot(x,y,'O') ;
hold on ;
n = length(x) ;

order = 3 ;
power = 0 ;
for row = 1 : order 
    for col = 1 : order
        A(row,col) = sum(x.^power) ;
        power = power + 1 ;
    end
    power = row ;
end
    
for row = 1 : order 
    a = x.^(row-1) ;
    b = y ;
    B(row,1) = sum(a.*b) ;
end

c = A\B ;
% ym = polyval(coefficient,x) ;
% plot(x,ym) ;
sum = 0 ; 
for co = 1 : length(c) - 1
    sum = sum + c(co+1) * (x.^co) ;
end
ym = sum + co(1) ;
plot(x,ym) ;
    















% A = [ n          sum(x)     sum(x.^2)
%       sum(x)     sum(x.^2)  sum(x.^3) 
%       sum(x.^2)  sum(x.^3)  sum(x.^4)  ];
% b = [sum(y) ; sum(x.*y) ;  sum((x.^2).*y) ] ;
% 
% coefficient = A\b ;
% a0 = coefficient(1) ; 
% a1 = coefficient(2) ; 
% a2 = coefficient(3) ; 
% 
% ym = a0 + a1.*x + a2.*(x.^2) ;
% plot(x,ym) ;
