clc , clear all ; 
close all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = @(x) ((x.^3)./(exp(x)-1)) ;
actual_value = integral(f,31,32) ;
fprintf('Actual value : %d\n',actual_value) ;
% trapezoidal rule 

a = 31 ;
b = 32 ; 
h = (b-a) ; 
i0 = .5 * h * (f(a)+f(b)) ;
h = h /2 ;
x = a + h ; 
i1 = .5 * h *(f(a)+f(x)) + .5 * h * (f(x)+f(b) ) ;
e = 10e-13 ;
iteration = 0 ;
while abs(i1-i0) > e
    h = h /2 ; 
    x = a : h : b ; 
    n = length(x) ;
    sum = 0 ;
    for i = 1 : n -1
        sum = sum + .5*h * ( f(x(i))+f(x(i+1)) ) ;
    end
    i0 = i1 ; 
    i1 = sum ;
    iteration = iteration + 1 ; 
end
fprintf('Approximate value using trapezoidal rule : %d \n',i1);
format short g ; 
error = ( abs(actual_value-i1)/actual_value ) * 100 ;
fprintf('Error for trazoidal rule %.2f\n', error) ;
fprintf('Iteration number : %f\n' , iteration ) ;


% simpson's 1/3 rule 


a = 31 ;
b = 32 ; 
h = (b-a) ;
x = a ; 
i0 = (h/3) * ( f(x)+4*f(x+h)+f(x+2*h) ) ;
h = h /2 ;
x = a ; 
i1 = (h/3)*( f(x)+4*f(x+h)+f(x+2*h)) ;

e = 10e-14 ;
iteration = 0 ;
while abs(i1-i0) > e
    h = h /2 ; 
    x = a : h : b ; 
    n = length(x) ;
    sum = 0 ;
    for i = 1 :2: n -1 
        sum = sum + ( f(x(i)) + 4*f(x(i+1)) + f(x(i+2)) )  ;
    end
    sum = sum * (h/3) ;
    i0 = i1 ; 
    i1 = sum ;
    iteration = iteration + 1 ; 
end
fprintf('Approximate value using simpson''s 1/3 rule: %d \n',i1);
error = ( abs(actual_value-i1)/actual_value ) * 100 ;
fprintf('Error for simson''s 1/3 rule %.5f\n', error) ;
fprintf('Iteration number : %f\n' , iteration ) ;


% simson's 3/8 rule 
 

a = 31 ;
b = 32 ; 
h = (b-a) ;
x = a ; 
i0 = ((3*h)/8) * ( f(x)+3*f(x+h)+3*f(x+2*h)+f(x+3*h) ) ;
h = h /3 ;
x = a ; 
i1 = ((3*h)/8) * ( f(x)+3*f(x+h)+3*f(x+2*h)+f(x+3*h) ) ;

e = 10e-15 ;
iteration = 0 ; 
while abs(i1-i0) > e
    h = h /2 ; 
    x = a : h : b ; 
    n = length(x) ;
    sum = 0 ;
    for i = 1 : 3 : n - 2 
        sum = sum + ( f(x(i)) + 3*f(x(i+1)) + 3*f(x(i+2)) +f(x(i+3)) );
    end
    sum = sum * ((3*h)/8) ;
    i0 = i1 ; 
    i1 = sum ;
    iteration = iteration + 1 ; 
end
fprintf('Approximate value using simpson''s 3/8 rule: %d \n',i1);
error = ( abs(actual_value-i1)/actual_value ) * 100 ;
fprintf('Error for simson''s 3/8  %.5f\n', error) ;
fprintf('Iteration number : %f\n' , iteration ) ;












