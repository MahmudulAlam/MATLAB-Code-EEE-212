function return_value = derivative(f,value) 
err = 1 ; 
relerr = 1 ; 
h = 1 ;
j = 1 ; 
x = value ;
d(1,1) = (f(x+h)-f(x-h)) / (2*h) ;
toler = 10e-8 ;
delta = 10e-10 ; 
while relerr > toler && err > delta && j<12 
    h = h /2 ; 
    d(j+1,1) = (f(x+h)-f(x-h)) / (2*h) ; 
    for k = 1 : j
        d(j+1,k+1) = d(j+1,k) + (d(j+1,k)-d(j,k)) / (4^k-1) ;
    end
    err = abs(d(j+1,j+1)-d(j,j)) ;
    relerr = 2*err / (abs(d(j+1,j+1)+d(j,j)+eps)) ;
    j = j + 1 ; 
end
return_value = d(j,j) ; 
    