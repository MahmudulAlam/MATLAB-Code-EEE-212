function A = fibonacci(n)
prev= 0 ; new =1 ; 
A = [0] ;
for i = 1:n-1
    A = [A new] ;
    temp = prev  ;
    prev= new ;
    new = new + temp;
end