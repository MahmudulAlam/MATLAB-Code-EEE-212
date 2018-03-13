clc , close all ;
clear all ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
x = [ 0 30 60 90 120 150 180 ] ;
y = cosd (x) ;
plot(x,y,'-O','LineWidth',2,'MarkerEdgeColor','r','MarkerSize',6,...
    'MarkerFaceColor','w') ;
xlabel('x','LineWidth',2);
ylabel('cos(x)','LineWidth',2);
title('Linear Interpolation of given value','LineWidth',2);

% Linear Interpolation
lin_x = linspace(0,180) ;   % lin_x is choosen
lin_y = [] ;      % lin_y will be found out by linear interpolation

for i = 1 : length(lin_x);
    if  lin_x(i) >=0 && lin_x(i) < 30
        n = 1;
        a = ( lin_x(i) - x(n+1) ) / (x(n) - x(n+1)) ;
        b = ( lin_x(i) - x(n) ) / (x(n) - x(n+1)) ;
        c = a * y(n) - b * y(n+1) ;
        lin_y = [ lin_y c ] ;

    elseif lin_x(i) >=30 && lin_x(i) <60
        n = 2;
        a = ( lin_x(i) - x(n+1) ) / (x(n) - x(n+1)) ;
        b = ( lin_x(i) - x(n) ) / (x(n) - x(n+1)) ;
        c = a * y(n) - b * y(n+1) ;
        lin_y = [ lin_y c ] ;
    elseif lin_x(i) >=60 && lin_x(i) <90
        n = 3;
        a = ( lin_x(i) - x(n+1) ) / (x(n) - x(n+1)) ;
        b = ( lin_x(i) - x(n) ) / (x(n) - x(n+1)) ;
        c = a * y(n) - b * y(n+1) ;
        lin_y = [ lin_y c ] ;    
     elseif lin_x(i) >=90 && lin_x(i) <120
        n = 4;
        a = ( lin_x(i) - x(n+1) ) / (x(n) - x(n+1)) ;
        b = ( lin_x(i) - x(n) ) / (x(n) - x(n+1)) ;
        c = a * y(n) - b * y(n+1) ;
        lin_y = [ lin_y c ] ;   
     elseif lin_x(i) >=120 && lin_x(i) <150
        n = 5;
        a = ( lin_x(i) - x(n+1) ) / (x(n) - x(n+1)) ;
        b = ( lin_x(i) - x(n) ) / (x(n) - x(n+1)) ;
        c = a * y(n) - b * y(n+1) ;
        lin_y = [ lin_y c ] ;
     elseif lin_x(i) >=150 && lin_x(i) <=180
        n = 6;
        a = ( lin_x(i) - x(n+1) ) / (x(n) - x(n+1)) ;
        b = ( lin_x(i) - x(n) ) / (x(n) - x(n+1)) ;
        c = a * y(n) - b * y(n+1) ;
        lin_y = [ lin_y c ] ;
    end
end



order = length(x) - 1 ;
sum = 0 ;
lagrange_x = linspace(0,180,1000) ;         % lagrange_x is choosen 
lagrange_y = [] ;            % lagrange_y will be found out by lagrange 
                             % interpolaion   

% Lagrange Interpolation 

while order > 0
    for n = 1 : length(lagrange_x) 
        for i = 1 : order + 1 
            weight = 1 ;
            for j = 1 : order + 1
                if j ~= i 
                   a = lagrange_x(n) - x(j) ;
                   b = x(i)-x(j) ;
                   weight = weight * ( a/b ) ;
                end
            end   
            sum = sum + weight * y(i) ;
        end
        lagrange_y = [lagrange_y sum ];
        sum = 0 ;
    end
    figure
    
    subplot(3,1,1) ;
    plot(lin_x,lin_y,'LineWidth',2) ;
    xlabel('x','LineWidth',2);
    ylabel('cos(x)','LineWidth',2);
    title('Linear Interpolation','LineWidth',2);
    
    subplot(3,1,2) ;
    plot(lagrange_x, lagrange_y,'LineWidth',2);
    xlabel('x','LineWidth',2);
    ylabel('cos(x)','LineWidth',2);
    title('Lagrange Interpolation') ;
    
    original_x = linspace(0,180,1000) ; 
    original_y = cosd(original_x) ;
    
    error = lagrange_y - original_y ;
    error = abs(error) ;
    subplot(3,1,3) ; 
    plot(error,'LineWidth',2) ;
    title('Error','LineWidth',2);
    value = max(abs(error));
    fprintf('Error of Lagrange interpolation when order is %d : %d \n',order,value);
     
    lagrange_y = [] ;
    order = order - 1 ;
end
