function [x,y] = circlefn(r);
%Circlefn - Function to draw a circle of radious r.
%File written by Md Mahmudul Alam ...
%Call syntax : [x,y] = circlefn(r);
%Input : r= specified radious 
%output : [x,y] = the x and y cordinate of sata points 
%__________________________
theta = linspace (0, 2* pi,100);
x=r* cos(theta) ; 
y= r*sin (theta ) ;
plot (x,y) ; 
axis ('equal')
title ('cirle of unit radious')