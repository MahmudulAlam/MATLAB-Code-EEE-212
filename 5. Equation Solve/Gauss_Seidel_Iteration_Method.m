close all ; 
clc , clear all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

A = [  26   -12        -4       0 ;
            -4    0          12-16j   16j ;
            -12   20-2.38j   0        3.39j ;
            0    3.39j      16j      -18.38j  ] ;

B = [ 20+34.64j ; 0 ; 0 ; 0 ] ;
 
sol = [ 0 0 0 0 ] ;
n = length(A) ; 
iteration = 25 ;

while iteration > 0 
    old_sol = sol ;
    for row = 1 : n 
        summ = B(row) ;
        for col = 1 : n
            if row ~= col 
            summ = summ - A(row,col) * sol(col) ;
            end
        end
        sol(row) = summ / A(row,row) ;
    end
    iteration = iteration - 1 ;
    err = old_sol - sol ;
    err = abs( err ./ old_sol ) .* 100  ;
    err = max(err) ;
    fprintf('err %d : \n' , err ) ;
end

