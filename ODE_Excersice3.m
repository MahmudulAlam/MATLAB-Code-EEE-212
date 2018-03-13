clc , close all ; 
clf , clear all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Given
R = 20000 ; 
C = 10e-6 ; 
E = 117 ; 

f = @(t,q) (E/R - q/(R*C)) ;
% Plotting actual value using actual answer
tau = R*C ;
actual_ans = @(t) E*C*(1-exp(-t/tau)) ; 
t = 0 : .01 : 3 ;
q = actual_ans(t) ;
plot(t,q,'LineWidth',2) ;
title('Exact Solution','LineWidth',2) ;
xlabel('t','LineWidth',2) ;
ylabel('Q','LineWidth',2) ;
grid on ;
figure ; 
% calculating actual value
actual_value = actual_ans(3) ;
fprintf('Actual value of Q(3) : %f\n',actual_value) ;

% Improved Euler Method
t(1) = 0 ; 
q(1) = 0 ;
max_value = 3 ; 
step_size = .01 ;
n = max_value / step_size ; 
for i = 1 : n 
    p = q(i) + step_size * f(q(i),q(i)) ;
    t(i+1) = t(i) + step_size ;
    q(i+1) = q(i) + step_size * .5 * (f(t(i),q(i))+f(t(i+1),p)) ; 
end
plot(t,q,'LineWidth',2) ;
title('Solution using Improved Euler''s Method','LineWidth',2) ;
xlabel('t','LineWidth',2) ;
ylabel('Q','LineWidth',2) ;
grid on ;
fprintf('Value of Q(3) using Improved Euler''s Method : %f\n',q(i+1)) ;
