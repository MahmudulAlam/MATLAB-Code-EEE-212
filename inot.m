function return_value = inot(x)
sum = 1 ;
for l= 1:32 
    val = ( ((x/2).^l)/factorial(l) ).^2 ;
    sum= sum + val ;
end
return_value = sum; 