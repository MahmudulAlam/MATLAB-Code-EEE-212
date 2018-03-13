clc , clear all ;
close all ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exercise 1
% Bisection Method
disp('Bisection Method') ;
f = @(x) x.^5+x+1 ; 
xlow =  -1 ; 
xup = 0 ;
xtol = 10e-4 ;
% calculating Actual value using built in fzero funcion
actual_value = fzero(f,[-1,0]) ;
fprintf('Actual value is : %f \n',actual_value) ;
% Bisection Method Algorithm 
xmid = (xlow+xup)/2 ; 
ylow = f(xlow) ;
ymid = f(xmid) ;
iteration = 0 ; 
while ((xup - xlow)/2) > xtol
    iteration = iteration + 1 ; 
    if (ylow*ymid)>0
        xlow = xmid;
    else
        xup = xmid ; 
    end
    xmid = (xup + xlow) /2; 
    ymid = f(xmid) ;
    iteration = iteration + 1 ; 
end
fprintf('Real root of x using Bisection Method : %f\n',xmid) ;
fprintf('Total Iteration number : %d\n',iteration) ;








