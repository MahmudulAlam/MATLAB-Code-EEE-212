clc , clear all ; 
close all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exercise 4
% The Secant Method
disp('The Secant Method') ;
f = @(x) 3*x + + sin(x) - exp(x) ;
% calculating Actual value using built in fzero funcion
actual_value = fzero(f,[0,1]) ;
fprintf('Actual value is : %f \n',actual_value) ;
% setting initial guesses
xk = 0 ;
xkminus = 1 ; 
tol = 10e-7 ; 
iteration = 1 ; 
yk = f(xk) ;
ykminus = f(xkminus) ;
root = (xkminus*yk-xk*ykminus)/(yk-ykminus) ;
ykplus = f(root) ;
while abs(root - xk) > tol 
    xkminus = xk ; 
    ykminus = yk ;
    xk = root ; 
    yk = ykplus ;
    root = (xkminus*yk-xk*ykminus)/(yk-ykminus) ;
    ykplus = f(root) ;
    iteration = iteration + 1 ; 
end
fprintf('Real root of x using the secant method : %f\n',root) ;
fprintf('Total Iteration number : %d\n',iteration) ;


