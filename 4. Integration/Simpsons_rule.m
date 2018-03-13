clc , clear all ; 
close all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Simpson's 1/3 formula %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

f = @(x) exp(x) ;
actual_value = integral(f,1.6,3.8) ;
fprintf('Actual value of this function : %.13f\n',actual_value) ;

a = 1.6 ; 
b = 3.8 ; 
n = 30 ;
h = (b-a)/n ;
sum = 0 ;
x = a ; 
for i = 1 :2: n-1 
    sum = sum + f(x) + 4*f(x+h) + f(x+2*h) ;
    x = x + 2*h ;
end
sum = sum * (h/3) ;
fprintf('Approximate value using Simpson''s 1/3 rule : %.13f\n',sum) ;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Simpson's 3/8 formula 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

h = (b-a)/n ;
sum = 0 ;
x = a ; 
for i = 1 : 3 : n-2 
    sum = sum + f(x) + 3*f(x+h) + 3*f(x+2*h) + f(x+3*h) ;
    x = x + 3*h ;
end
sum = sum * (3*h/8) ;
fprintf('Approximate value using Simpson''s 3/8 rule : %.13f\n',sum) ;
