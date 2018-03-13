function pol(x,y)
plot(x,y,'o') ; 
hold on ; 

lin_x = linspace(0,3,100) ;
lin_y = [] ; 

for i = 1 : length(lin_x) 
    for j = 1 : length(x) - 1  
        if lin_x(i) >= x(j) && lin_x(i) < x(j+1) 
            a = (lin_x(i)-x(j+1))/((x(j)-x(j+1))) ; 
            b = (lin_x(i)-x(j))/((x(j)-x(j+1))) ; 
            c = a*y(j) - b*y(j+1) ;
        end
    end
    lin_y = [ lin_y c ] ;
end

if lin_x(i) >= x(j) && lin_x(i) <= x(j+1) 
    a = (lin_x(i)-x(j+1))/((x(j)-x(j+1))) ; 
    b = (lin_x(i)-x(j))/((x(j)-x(j+1))) ; 
    c = a*y(j) - b*y(j+1) ;
end

plot(lin_x,lin_y) ;
title ('Linear Interpolation') ; 

figure


% #################### %
% Lagrange Interpolation
plot(x,y,'o') ; 
hold on ; 

lag_x = linspace(0,3,100) ;
lag_y = [] ; 
n = length(x) ;
 
for k = 1 : length(lag_x) 
    sum = 0 ;
    for i = 1 : n 
        p = 1 ;
        for j = 1 : n
            if i~=j
                p = p * ((lag_x(k)-x(j))/(x(i)-x(j))) ; 
            end
        end
        sum = sum + y(i) * p ; 
    end
    lag_y = [ lag_y sum ] ;
end
plot(lag_x,lag_y) ; 
title('Lagrange Interpolation' ) ;

figure ; 


% ##################### %
% Newtonian Interpolation

plot(x,y,'o') ;
hold on ; 

d = y ; 
d = d' ; 
for j = 2 : n 
    for i = j : n 
        a = d(i,j-1) - d(i-1,j-1) ;
        b = x(i) - x(i-j+1) ;
        d(i,j) = a/b ; 
    end
end
d = diag(d) ; 
new_x = linspace(0,3,100) ; 
new_y = [] ;
for k = 1 : length(new_x) 
    sum = d(1) ; 
    for i = 2 : n
        p = 1 ; 
        for j = 1 : i-1 
            p = p * (new_x(k)- x(j)) ; 
        end
        sum = sum + d(i) * p ; 
    end
    new_y = [new_y sum ] ; 
end

plot(new_x,new_y) ; 
title('Newtonian Interpolation');

