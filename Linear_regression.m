clear all , clc , clf ;
close all ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Linear Regression 
format long g
x = [1 2 3 4 5 6 7] ;
y = [.5 2.5 2 4 3.5 6 5.5] ;
sum_x = sum(x) ;
sum_x2 = sum(x.^2) ;
sum_y = sum(y) ;
sum_y2 = sum(y.^2) ;
sum_xy = sum(x.*y) ;
n = length(x) ;
anot = ((sum_y*sum_x2 - sum_x*sum_xy)/(n * sum_x2 - (sum_x)^2 )) ;
aone = ((n*sum_xy - sum_x*sum_y)/(n * sum_x2 - (sum_x)^2 )) ;
fprintf('a0 = %f\n',anot) ;
fprintf('a1 = %f\n',aone) ;

plot(x,y,'o','MarkerEdgeColor','r','MarkerSize',6,'LineWidth',2) ;
hold on ; 
ym = anot + aone *x ;
plot(x,ym,'b','LineWidth',2) ;
 

