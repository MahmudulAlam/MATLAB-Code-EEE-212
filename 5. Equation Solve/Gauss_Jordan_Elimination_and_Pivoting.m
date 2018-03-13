clc , close all ; 
clear all ;  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Gauss-Jordan Elimination and Pivoting 
% Forward Substitution 
matrix = [  26   -12        -4       0 ;
            -4    0          12-16j   16j ;
            -12   20-2.38j   0        3.39j ;
            0    3.39j      16j      -18.38j  ] ;

B = [ 20+34.64j ; 0 ; 0 ; 0 ] ;

% matrix = [ 4 8 4 0 ; 1 5 4 -3 ; 1 4 7 2 ; 1 3 0 -2 ] ;
% B = [ 8 ; -4 ; 10 ; -4 ] ;
augment = [matrix B] ;

n = length(matrix) ;

r = 0 ;
for step = 1 : n-1
    col = augment(step:n , step) ;
    maxx = abs(max(col)) ;
    max_row = find(col == maxx) ;
    max_row = max_row + r ;
    r = r + 1 ;
    augment([step max_row], : ) = augment([max_row step], : ) ;
    col = augment(1:n , step) ;
    for row = step : n-1
        multiplier = col(row+1) / col(step) ;
        multiply = multiplier .* augment(step,:) ;
        augment(row+1, : ) = augment(row+1, : ) - multiply ;
    end
end                              % Forward Elimination complete

% Backward Substitution 

coefficient_mat = augment(1:n,1:n) ;
const_mat = augment(1:n,n+1) ;


    
X = zeros(n,1) ;

row = n ;
while row > 0
    sum = const_mat(row) ;
    for col = 1:n
        sum = sum - coefficient_mat(row,col) * X(col) ;
    end
    X(row) = sum  / coefficient_mat(row,row) ;
    row = row - 1 ;
end
X = X' ;
for i = 1 : length(X) 
    X(i) = abs(X(i)) ;
end













