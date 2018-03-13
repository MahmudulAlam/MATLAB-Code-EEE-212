clc , clear all ; 
close all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exercise 03
disp('Newton Raphson Method') ;
% defining function
f = @(x) exp(-x)-1 ;
d = @(x) -exp(-x) ;
% calculating Actual value using built in fzero funcion
actual_value = fzero(f,0) ;
fprintf('Actual value is : %d \n',actual_value) ;
% setting initail guess
x0 = 0 ;
tol = 10e-8 ; 
iteration = 0 ;
root = x0 - ( f(x0)/d(x0) ) ;
while abs((f(x0)/d(x0))) > tol 
    x0 = root;
    root = x0 - (f(x0)/d(x0)) ;
    iteration = iteration + 1 ; 
end
fprintf('Real root of x using Newton Raphson Method : %d\n',root) ;
fprintf('Total Iteration number : %d\n',iteration) ;

