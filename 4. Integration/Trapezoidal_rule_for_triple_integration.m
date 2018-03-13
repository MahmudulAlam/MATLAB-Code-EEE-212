clc , clear all ; 
close all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms x y z ; 
% defining function 
f = @(x,y,z) exp(-( x.^2 + 2.*y.^2 + 3.*z.^2 )) ;
% limits of tiple integration
a1 = -31 ; a2 = 31 ; b1 = -31.5 ; b2 = 31.5 ; c1 = -32 ; c2 = 32 ;

% by using integral3 we will get actual value
actual_value = integral3(f,a1,a2,b1,b2,c1,c2) ;
fprintf('Actual value of this Integration is : %.5f\n',actual_value) ;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Trapezoidal Rule %%%%%% Trapezoidal Rule %%%%%% Trapezoidal Rule %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hx = (a2-a1) ; 
hy = (b2-b1) ; 
hz = (c2-c1) ; 

g = (hz/2) * (f(x,y,c1) + f(x,y,c2)) ;  % it will be an expression
% converting g as a function
g = matlabFunction(g) ;
k = (hy/2) * (g(x,b1) + g(x,b2)) ;
% again converting k as a function 
k = matlabFunction(k) ;

i0 = (hx/2) * ( k(a1) + k(a2) ) ;

hx = (a2-a1)/2 ; 
hy = (b2-b1)/2 ; 
hz = (c2-c1)/2 ; 
g = 0 ;
k = 0 ;
g = (hz/2) * (f(x,y,c1) + 2*f(x,y,c1+hz) + f(x,y,c2)) ; 
g = matlabFunction(g) ;
k = (hy/2) * (g(x,b1) + 2*g(x,b1+hy) + g(x,b2)) ;
k = matlabFunction(k) ;

i1 = (hx/2) * ( k(a1) + 2 * k(a1+hx) + k(a2) ) ;
iteration = 0 ; 

e = 10e-2 ; 
while abs(i1-i0) > e 
    hx = hx / 2 ; 
    hy = hy / 2 ; 
    hz = hz / 2 ; 
    p = c1 : hz : c2 ; 
    n = length(p) ;
    g = 0 ; 
    for i = 1 : n - 1  
        g = g + .5 * hz * ( f(x,y,p(i))+f(x,y,p(i+1)) ) ;
    end
    g = matlabFunction(g) ;
    p = b1 : hy : b2 ; 
    n = length(p) ;
    k = 0 ; 
    for i = 1 : n - 1  
        k = k + .5 * hy * ( g(x,p(i))+g(x,p(i+1)) )  ;
    end
    k = matlabFunction(k) ;
    p = a1 : hx : a2 ; 
    n = length(p) ;
    sum = 0 ; 
    for i = 1 : n - 1 
        sum = sum + .5 * hx * (k(p(i))+k(p(i+1))) ;
    end
    i0 = i1 ; 
    i1 = sum ; 
    iteration = iteration + 1 ; 
end

fprintf('Approximate value by using trapezoidal rule : %.5f\n',i1) ;
error = (abs(actual_value - i1)/actual_value) * 100 ; 
accuracy = 100 - error ;
fprintf('Percentage of Accuracy : %.5f%%\n',accuracy) ;
fprintf('Percentage of Error : %.5f%%\n',error) ;
fprintf('Total Iteration number = %d\n',iteration) ;

