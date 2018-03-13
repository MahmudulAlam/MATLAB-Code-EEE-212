clear all ; 
clc , clf , close all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Curve Fitting
x = [0 1 2 3 4 5 ] ;    
y = [ 2.1 7.7 13.6 27.2 40.9 61.1] ;
% plotting x and y as points  
plot(x,y,'O','MarkerSize',6,'MarkerFaceColor','w','MarkerEdgeColor',...
    'b','LineWidth',2) ;                 
hold on ; 

% taking order of polynomial as input
input_value= input('Enter the order of polynomial : ') ;
order =  1 ;
% plotting curve from order 1 to input value
while order <= input_value + 1
    power = 0 ;
    for row = 1 : order 
        for col = 1 : order
            A(row,col) = sum(x .^ power) ;
            power = power + 1 ;
        end
        power = row ;    % as every time power of x start from the previous 
                         % row value  
    end
    
    for row = 1 : order 
        B(row,1) = sum( (x.^(row-1)) .* y) ;
    end

    coefficient = A\B ;

    total = 0 ; 
    for i = 1 : length(coefficient) - 1
        total = total + coefficient(i+1) * (x.^i) ;
    end
    
    new_y = total + coefficient(1) ;
    plot(x,new_y) ;
    % changing order 
    order = order + 1 ;
end
p = coefficient ; 
p = p' ; 
figure  ;

x = 0 : .1 : 5 ;
y = polyval(p,x) ;
plot(x,y) ;


