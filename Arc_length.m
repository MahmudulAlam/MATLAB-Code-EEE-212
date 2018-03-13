clc , clear ; 
close all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = @(x) (x.^3/6)+1/(2*x) ;
g = @(x) sqrt(1+(derivative(f,x)).^2) ;
h = .0001 ; 
a = 1+ eps ;
b = 2 ;
n = (b-a) / h ;
x = a ; 
sum = 0 ;
for i = 1 : n 
    sum = sum  + .5 * h * (g(x)+g(x+h))  ;
    x = x + h ; 
end
fprintf('Arc length in this range is : %.3f\n',sum) ;




