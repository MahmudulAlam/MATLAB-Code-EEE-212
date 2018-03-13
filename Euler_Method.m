clc , clear , clf , close all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E = 5 ;
R = 10 ;
L = 5 ;
f = @(t,i) E/L - (R/L) * i ; 
max = 3 ;
h = .01 ;
n = max / h ;
x(1) = 0 ; 
y(1) = 0 ;
for j = 1 : n 
    y(j+1) = y(j) + f(x(j),y(j)) * h  ;
    x(j+1) = x(j) +  h ; 
end
i = y ; 
v = E - R * i ; 
plot(x,v) ;
    
    
    
    
    
    
    