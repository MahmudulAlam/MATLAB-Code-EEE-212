clear all ;
clc , close all ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% x = [0 30 60 90 120 150 180] ;
% y = cosd(x) ;
x = [ 23.5 14.4 10.3 6.3 5.3 2.4 .2 .18 2 3.54 4.3 3.73 5 5.53 6.56 ...
      7.1 7.9 8.2 8.2 ] ; 
y = 200:50:1100 ; 
subplot(2,1,1) ;
plot(x,y,'-O','MarkerSize',5,'MarkerEdgeColor','r','LineWidth',2,...
     'MarkerFaceColor','w') ;
title('Linear Interpolation','LineWidth',2);

% Newtonian Interpolation 
d = y ; 
d = d' ; 
n = length(x) ;

for j = 2 : n 
    for i = j : n  
        a = d(i,j-1) - d(i-1,j-1) ;
        b = x(i) - x(i-j+1) ;
        d(i,j) = a/b ;
    end
end

% d is the van der monde matrix
d = diag(d) ;
d = d' ; 
newton_x = linspace(0,180,1000) ;
newton_y = [] ;

order = length(x)-1 ; 

for i = 1 : length(newton_x) 
    sum = d(1) ;
    for j = 1 : order   
        p = 1 ;
        for k = 1 : j
            p = p * (newton_x(i) - x(k));
        end
        sum = sum + p * d(j+1) ;
    end
    newton_y = [newton_y sum] ;
end









subplot(2,1,2) ;
plot(newton_x,newton_y,'LineWidth',2) ;
title('Newtonian Interpolation','LineWidth',2);

figure 

original_x = linspace(0,180,1000) ;
original_y = cosd(original_x) ;

error = abs (original_y - newton_y) ;
plot(error,'LineWidth',2) ;
title('Error','LineWidth',2) ;




