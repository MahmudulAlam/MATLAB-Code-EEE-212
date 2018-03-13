clc , clear , close all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f1 = @(x,y,z)  .5*(11*exp(-x)-3*z-5*y) ;
f2 = @(x,y,z) z ; 
max = 1 ;
h = .01 ;
n = max / h ; 
x(1) = 0 ;
y(1) = 7 ; 
z(1) = 13 ;
for i = 1 : n 
    y(i+1) = y(i) + h * f2(x(i),y(i),z(i)) ;
    z(i+1) = z(i) + h * f1(x(i),y(i),z(i)) ;
    x(i+1) = x(i) + h ; 
end
plot(x,y) ;
