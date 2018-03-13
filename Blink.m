clear ; clc ; 
a = arduino() ; 
while (1)
    writeDigitalPin(a,'D13',1) ;
    pause(1) ;
    writeDigitalPin(a,'D13',0) ; 
    pause(1) ;
end
