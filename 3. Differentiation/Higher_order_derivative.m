clear all ; 
clc , close all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x = 3 ; 
h = 10e-10 ;  
a = 2*exp(1.5*(x+h)) ; 
b = 2*exp(1.5*(x-h)) ; 
f = (a - b) / (2*h) ;
fprintf('First order derivative :  %.2f \n',f) ;
h = 10e-5 ;
a = 2*exp(1.5*(x+h)) ; 
b = 2*exp(1.5*(x-h)) ; 
f = a + b - 2*(2*exp(1.5*(x))) ; 
f = f / (h.^2) ;
fprintf('Second order derivative :  %.2f \n',f) ;




