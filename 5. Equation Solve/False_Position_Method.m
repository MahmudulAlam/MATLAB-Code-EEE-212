clc , clear all ;
close all ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exercise 2
disp('False Position Method') ;
f = @(x) x.^5+x+1 ; 
xlow =  -1 ; 
xup = 0 ;
xtol = 10e-4 ;
% calculating Actual value using built in fzero funcion
actual_value = fzero(f,[-1,0]) ;
fprintf('Actual value is : %f \n',actual_value) ;
% False Position Method
x = xup - ( (f(xup)*(xlow-xup))/(f(xlow)-f(xup)) ) ; 
ylow = f(xlow) ;
y = f(x) ;
iteration = 0 ;
while abs(f(x)) > 10e-10 
    if (ylow*y)>0
        xlow = x;
    else
        xup = x ; 
    end
    x = xup - ( (f(xup)*(xlow-xup))/(f(xlow)-f(xup)) ); 
    y = f(x) ;
    iteration = iteration + 1 ; 
end
fprintf('Real root of x using False Position Method : %f\n',x) ;
fprintf('Total Iteration number : %d\n',iteration) ;




