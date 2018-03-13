clear all ; 
clc , close all ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ac Circuit Solve 
Vs = input('Enter the magnitude and Phase angle of Voltage source : ' ) ;
fprintf('Voltage Source = %d<%d \n' , Vs(1) , Vs(2) ) ;
f = input('Enter the frequency : ') ;
fprintf('Frequency : %d Hz\n', f) ;
% converting r<theta into a+bi form 
m = Vs(1) * cosd(Vs(2)) ;
n = Vs(1) * sind(Vs(2)) ;
v = complex(m,n) ; 

matrix=[ 26    -12                          -4              0 ;
        -4     0                            12-(16000j/f)   (16000j/f) ;
        -12    20-(-(.00101j)*f+(3390j/f))   0               (3390j/f) ;
         0     3390j/f                      (16000j/f)      -(19390j/f)+.00101j*f];

B = [ v ; 0 ; 0 ; 0 ] ;


%   ########################   %
% Solution using x = A\B formula

x = matrix\B ; % x = mesh current
fprintf('\n') ;
disp('Mesh Current');
% Displaying Current
for i = 1 : length(x) 
    fprintf('I%d',i) ;
    disp(x(i)) ;
    fprintf('\n') ;
end
% Current in Phasor form 
for i = 1 : length(x) 
    fprintf('\nI%d = %.2f>%.2f\n',i , abs(x(i)),angle(x(i)) ) ;
end



%   ########################   %
% Solution using x = pinv(A)*B formula

current = pinv(matrix) * B ;
% Displaying current
x = current ;
for i = 1 : length(x) 
    fprintf('\nI%d = %.2f>%.2f\n',i , abs(x(i)),angle(x(i)) ) ;
end



%     ############################      %
% Solution using Gauss Jordan Elimination
a = matrix ;
b = B ;
aug = [ a  b ] ;
n = length (a) ;
r = 0 ; 
for row = 1 : n - 1 
    c = aug(row:end,row) ;
    maxx = max(abs(c)) ;
    max_row = find ( c == maxx ) + r ; 
    r = r+ 1 ;
    aug([row max_row] , : ) = aug([max_row row] , : ) ;
    for col = row+1 : n
       multiplier = aug(col,row) / aug(row, row) ;
       subtructor = aug(row,: ) .* multiplier ;
       aug(col , : ) = aug(col, : ) -  subtructor ; 
    end
end

row = n ;
x = zeros(1,n) ;
while row > 0 
    sum = aug(row,n+1) ; 
    for col = 1 : n 
        if row~= col 
            sum = sum - aug(row,col) * x(col) ;
        end
        x(row) = sum / aug(row, row) ;
    end
    row = row - 1 ; 
end
x = x' ; 
disp('Mesh current Using Gauss Jordan Elimination') ;
for i = 1 : length(x) 
    fprintf('\nI%d = %.2f>%.2f\n',i , abs(x(i)),angle(x(i)) ) ;
end









