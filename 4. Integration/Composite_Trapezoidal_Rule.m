clc , clear all ; 
close all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = @(x) (x.^2).*exp(-x) ;
actual_value = integral(f,0,4) ;
fprintf('Actual value of this function : %.10f\n',actual_value) ;

a = 0 ; 
b = 4 ; 
n = 30 ;
h = (b-a)/n ;
x = a ; 
sum = 0 ;
for i = 1 : n 
    sum = sum + .5 * h * (f(x)+f(x+h)) ;
    x = x + h ; 
end
fprintf('Approximate value of this function : %.10f\n',sum) ;

