clear all ; 
clc , close all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x = 3 ; 
h = 10e-10 ;  
a = 2*exp(1.5*(x+h)) ; 
b = 2*exp(1.5*(x)) ; 
f = (a - b) / h ; 
disp(f) ; 











