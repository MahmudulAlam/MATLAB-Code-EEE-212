clc , close all ; 
clf , clear all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Improved Euler's Method
f = @(x,y) (x-y)/2 ;
% Plotting actual value using exact solution
actual_ans = @(x) 3*exp(-x/2) - 2 + x ; 
x = 0 : .01 : 3 ;
y = actual_ans(x) ;
plot(x,y,'LineWidth',2) ;
title('Exact Solution','LineWidth',2) ;
xlabel('x','LineWidth',2) ;
ylabel('y','LineWidth',2) ;
grid on ;
actual_value = actual_ans(3) ;
fprintf('Actual value of y(3) : %f\n\n',actual_value) ;

% Code for Euler's Method to solve ODE 
for k = 1 : 4          % Loop for changing step size
    step_size = [1 1/2 1/4 1/8] ;
    max_value = 3 ; 
    n = max_value / step_size(k) ; 
    x = [] ; 
    y = [] ;
    % Initial value
    x(1) = 0 ;  
    y(1) = 1 ; 
    for i = 1 : n ; 
        p = y(i) + step_size(k) * f(x(i),y(i)) ;
        x(i+1) = x(i) + step_size(k) ;
        y(i+1) = y(i) + step_size(k) * .5 * (f(x(i),y(i))+f(x(i+1),p)) ;
    end
    figure ; 
    plot(x,y,'LineWidth',2) ;
    title('Solution using Improved Euler Method','LineWidth',2) ;
    xlabel('x') ;
    ylabel('y') ; 
    % adding step size to the figure
    string = num2str(step_size(k)) ;
    string = [ 'Step size : ' string ] ;
    text(1.33,1.3,string,'FontSize',12) ;
    grid on ;
    fprintf('For step size %.3f y(3) = %f\n',step_size(k),y(i+1)) ;
    error = (abs(actual_value-y(i+1))/actual_value) * 100 ;
    fprintf('Percentage of error %.2f%%\n\n',error) ;
end

