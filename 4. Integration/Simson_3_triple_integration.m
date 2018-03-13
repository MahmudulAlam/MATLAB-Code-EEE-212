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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% simson's 3/8 rule %%%% simson's 3/8 rule %%%% simson's 3/8 rule %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hx = (a2-a1) ; 
hy = (b2-b1) ; 
hz = (c2-c1) ; 

g = ((3*hz)/8) * (f(x,y,c1) + 3*f(x,y,c1+hz)+3*f(x,y,c1+2*hz)+ f(x,y,c1+3*hz)) ;
g = matlabFunction(g) ;

k = ((3*hy)/8) * (g(x,b1) + 3*g(x,b1+hy)+3*g(x,b1+2*hy)+ g(x,b1+3*hy)) ;
k = matlabFunction(k) ;

i0 = ((3*hx)/8) * ( k(a1) + 3*k(a1+hx)+3*k(a1+2*hx)+k(a1+3*hz) ) ;

hx = hx/2 ; 
hy = hy/2 ; 
hz = hz/2 ; 

g = ((3*hz)/8) * (f(x,y,c1) + 3*f(x,y,c1+hz)+3*f(x,y,c1+2*hz)+ f(x,y,c1+3*hz)) ;
g = matlabFunction(g) ;

k = ((3*hy)/8) * (g(x,b1) + 3*g(x,b1+hy)+3*g(x,b1+2*hy)+ g(x,b1+3*hy)) ;
k = matlabFunction(k) ;

i1 = ((3*hx)/8) * ( k(a1) + 3*k(a1+hx)+3*k(a1+2*hx)+k(a1+3*hz) ) ;
iteration = 0 ;
e = 10e-2 ; 
while abs(i1-i0) > e 
    hx = hx / 2 ; 
    hy = hy / 2 ; 
    hz = hz / 2 ; 
    
    p = c1 : hz : c2 ; 
    n = length(p) ;
    g = 0 ; 
    for i = 1 :3: n - 3  
        g = g+ ((3*hz)/8)*( f(x,y,p(i))+3*f(x,y,p(i+1))+3*f(x,y,p(i+2))+f(x,y,p(i+3)) );
    end
    g = matlabFunction(g) ;
    p = b1 : hy : b2 ; 
    n = length(p) ;
    k = 0 ; 
    for i = 1 :3: n - 3  
        k = k + ((3*hy)/8) * ( g(x,p(i))+3*g(x,p(i+1))+3*g(x,p(i+2))+g(x,p(i+3)) ) ;
    end
    k = matlabFunction(k) ;
    p = a1 : hx : a2 ; 
    n = length(p) ;
    sum = 0 ; 
    for i = 1 :3: n - 3 
        sum = sum + ((3*hx)/8) * ( k(p(i))+3*k(p(i+1))+3*k(p(i+2))+k(p(i+3)) ) ;
    end
    i0 = i1 ; 
    i1 = sum ; 
    iteration = iteration + 1 ; 
end

fprintf('Approximate value by using simson''s 3/8 rule is : %.5f\n',i1) ;
error = (abs(actual_value - i1)/actual_value) * 100 ; 
accuracy = 100 - error ;
fprintf('Percentage of Accuracy : %.5f%%\n',accuracy) ;
fprintf('Percentage of Error : %.5f%%\n',error) ;
fprintf('Total Iteration number = %d\n',iteration) ;

