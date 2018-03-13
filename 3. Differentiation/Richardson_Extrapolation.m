clc , clear all ; 
close all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
format short ; 
f = @(x) 2*exp(1.5*x) ; 
err = 1 ;
relerr = 1 ; 
h = 1 ; 
j = 1 ; 
x = 3 ; 
toler = 10e-10 ;
delta = 10e-20 ;
d(1,1) = (f(x+h)-f(x-h))/(2*h) ;
while relerr>toler && err>delta && j<20
    h = h / 2 ; 
    d(j+1,1) = (f(x+h)-f(x-h))/ (2*h) ;
    for k = 1 : j 
        d(j+1,k+1) = d(j+1,k) + (d(j+1,k) - d(j,k)) /(4^k - 1) ;
    end
    err = abs(d(j+1,j+1)-d(j,j)) ;
    relerr = (2*err) / (abs(d(j+1,j+1))+abs(d(j,j))+eps) ; 
    j = j + 1 ; 
end
disp(d) ;
d = diag(d) ; 
l = length(d) ; 
disp(d(l)) ;
    
