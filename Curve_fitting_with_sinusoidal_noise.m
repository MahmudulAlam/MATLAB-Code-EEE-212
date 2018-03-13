clear all ; 
clc , clf , close all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x = 0:360 ; 
y = sind(x) ;
plot(x,y,'LineWidth',2) ;
axis([0 360 -1.5 1.5]) ;
title('Actual Sin wave','LineWidth',2) ;
xlabel('x','LineWidth',2);
ylabel('sin(x)','LineWidth',2) ;

figure ;

min = -.1 ;
max = .1 ;
n = length(x) ;
% Random number generator within limit
noise = min + rand(1,n) * (max-min) ;
y = y + noise ;
plot(x,y,'LineWidth',1.5) ;
axis([0 360 -1.5 1.5]) ;
title('Sin wave with noise','LineWidth',2) ;
xlabel('x','LineWidth',2);
ylabel('sin(x) + Noise','LineWidth',2) ;

figure ;

new_x = [] ;
new_y = [] ;

for i = 1: 15 : 361
    new_x = [new_x x(i)] ;
    new_y = [new_y y(i)] ;
end

plot(new_x,new_y,'O','Linewidth',1.5) ;
axis([0 360 -1.5 1.5]) ;
hold on ;

% Curve Fitting
n = length(new_x) ;
order = 8 ;
power = 0 ;
for row = 1 : order 
    for col = 1 : order
        A(row,col) = sum(new_x .^ power) ;
        power = power + 1 ;
    end
    power = row ;
end

for row = 1 : order 
    B(row,1) = sum( (new_x.^(row-1)) .* new_y) ;
end    

coefficient = A\B ;

total = 0 ; 
for i = 1 : length(coefficient) - 1
    total = total + coefficient(i+1) * (new_x.^i) ;
end

estimated_y = total + coefficient(1) ;
plot(new_x,estimated_y,'Linewidth',2) ;
title('Estimated Sin wave','LineWidth',2) ;
axis([0 360 -1.5 1.5]) ;

x = 0:360 ; 
y = sind(x) ;
actual_y = [] ;
for i = 1: 15 : 361
    actual_y = [actual_y y(i)] ;
end   

error = (actual_y - estimated_y) ./ actual_y ;
error = abs(error .* 100) ;

% Removing Inf and NaN from error matrix
error(~isfinite(error)) = 0;

figure ;

% plotting error
plot(error,'LineWidth',1.5) ;
title('Percentage of error between origianl sin wave and estimated sin wave',...
      'LineWidth',2) ;
ylabel('Error','LineWidth',2) ;

