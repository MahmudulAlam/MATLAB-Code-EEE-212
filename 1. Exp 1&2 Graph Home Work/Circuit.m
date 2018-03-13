clear all , close all ;
clc , clf ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
A = [ 11 -5 -5 ; 0 -3 4 ; 2 -5 3 ] ; % coefficient matrix
b = [100 ; 80 ; 0 ] ;                % constant matrix
v= A\b ;             % solution of the circuit. v is a column vector that
                     % includes v1,v2,v3 of the circuit 
vnot = v(1) - v(2) ; % voltage between node v1 and v2
inot = ( v(1)-v(3) ) / 10 ; % current through resistance R2
disp('vnot : ') ;
disp(vnot) ;
disp('inot : ') ;
disp(inot) ;

% now varying supply voltage 
supply_voltage = 0 : .1 : 100 ;
k=1 ; % k is the index number of Vnot and Inot 

for i = 0 : .1 : 100 
    b = [i ; 80 ; 0 ] ;   % A  declared before
    v = A\b ;
    vnot = v(1) - v(2) ;
    inot = ( v(1)-v(3) ) / 10 ;
    Vnot(k) = vnot ;      % Vnot and Inot keeps all the value of vnot and  
    Inot(k) = inot ;      % inot for every iteration
    k = k + 1 ;
end
    
p1 = plot( supply_voltage , Vnot ,'LineWidth',2,'Color','r') ;
hold on ;
p2 = plot( supply_voltage , Inot, 'Linewidth',2,'Color','b') ;
xlabel('Supply Voltage','FontWeight','Bold') ;
ylabel('Vnot and Inot','FontWeight','Bold');
legend([p1,p2],'Vont','Inot','Location','Northwest') ;
grid on ;
title('Different value of Inot and Vnot for DC sweeping Supply Voltage');