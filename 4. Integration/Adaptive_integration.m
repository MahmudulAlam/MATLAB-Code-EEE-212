clc , clear all ; 
close all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = @(x) x.*exp(-2*(x.^2)) ;
actual_value = integral(f,0,2) ; 
fprintf('Actual value : %f\n', actual_value) ;

a = 0 ; 
b = 2 ; 
e = 10e-10 ;
h = (b-a) ;
sum = .5 * h * (f(a)+f(b)) ;
i0 = sum ; 
x = a + h/2 ;
h = h/2 ;
sum = .5 * h * (f(a)+2*f(x)+f(b)) ;
i1 = sum ; 
while abs(i1-i0) > e 
    h = h/2 ; 
    x = a : h : b ;
    n = length(x) ;
    sum = 0 ;
    for i = 1 : n -1 
        sum = sum + .5 * h * (f(x(i))+f(x(i+1))) ;
    end
    i0 = i1 ; 
    i1 = sum ; 
end
fprintf('Approximate value : %f\n', i1) ;










