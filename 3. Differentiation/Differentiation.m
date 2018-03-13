clc , clear all ; 
clf , close all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Richardson's Extrapolation for nth order derivative
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
order = input('Enter the order of differentiation : ') ;
syms y ; 
f = @(y) sin(y^3-7*y^2+6*y+8) ;
x = (1-sqrt(5)) / 2 ; 
n = 1 ;

while order > 0 ;
    err = 1 ;
    relerr = 1 ; 
    h = 1 ; 
    j = 1 ; 
    toler = 10e-8 ;
    delta = 10e-10 ;
    error = [] ;
    iteration = [] ; 
    sum = 0 ; 
    p = 1 ; 
    for k = 0 : n  
       p = 1 ;
       p = p * nCr(n,k) * (-1)^k * f(x+(n-2*k)*h) ;
       sum = sum + p ;
    end
    sum = sum / (2*h)^n ; 
    d(1,1) = sum ;  
    while relerr>toler && err>delta && j<12 
        h = h /2 ;
        sum = 0 ;
        for k = 0 : n  
            p = 1 ;
            p = p*nCr(n,k)*(-1)^k*f(x+(n-2*k)*h) ;
            sum = sum + p ;
        end
        sum = sum / (2*h)^n ; 
        d(j+1,1) = sum ;  
        for k = 1 : j 
            d(j+1,k+1) = d(j+1,k) + (d(j+1,k) - d(j,k)) /((2^(2*n))^k - 1) ;
        end
        err = abs(d(j+1,j+1)-d(j,j)) ;
        relerr = ( 2*err) / (abs(d(j+1,j+1))+abs(d(j,j))+eps ) ; 
        original_value = eval(subs(diff(f,y,n),x)) ;
        error = [error abs(d(j+1,j+1)-original_value)] ;
        iteration = [iteration j] ;
        j = j + 1 ; 
    end
    plot(iteration,error,'LineWidth',2) ;
    grid on ;
    title('Error of Richardson''s Extrapolation in each step'...
     ,'LineWidth',2);
    xlabel('Iteration Number','LineWidth',2);
    ylabel('Error','LineWidth',2) ; 
    figure ;
    l = length(d) ;
    d = d(l) ;
    if n == 1 
        fprintf('1st order derivative of this function is : %.13f\n',d);
        elseif n==2 
            fprintf('2nd order derivative of this function is : %.13f\n',d);
            elseif n==3
                fprintf('3rd order derivative of this function is : %.13f\n',d);
                elseif n > 3 
                    fprintf('%dth order derivative of this function is : %.13f\n',n,d);
    end
    n = n + 1 ; 
    order = order - 1 ;
end

