clear all , close all ;
clc , clf ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mahmudullah Riad in last 10 winning match
match = 1: 10 ;
mahmudullah_run = [ 62 62; 103 138 ; 5 18 ; 17 28 ; 4 10; 50 64 ; 9 20 ;...
                     4 20 ; 52 40 ] ;
% bar3 plot
bar_plot = bar3 ( mahmudullah_run ) ;
% making variation in color
for k = 1: length ( bar_plot )
    zdata = bar_plot(k).ZData ;  
    bar_plot(k).CData = zdata ;
    bar_plot(k).FaceColor = 'interp' ;
end

% showing run and ball in the bar graph
for i = 1 : 9   
    c_run = num2str( mahmudullah_run(i,1) ) ; % number to string conversion
    c_ball = num2str( mahmudullah_run(i,2) ) ;
    y = i ;
    z_run = (mahmudullah_run(i,1)+ 6 ) ; % plus 6 for showing run above bar graph 
    z_ball = (mahmudullah_run(i,2)+ 6 ) ;
    
    text ( 1,y,z_run, c_run,'FontWeight','Bold' );
    text ( 2,y,z_ball, c_ball,'FontWeight','Bold' ) ;
end

text(1,11,'Run','FontWeight','Bold');
text(2,11,'Ball','FontWeight','Bold');
ylabel ('Matches','FontWeight','Bold');
title('Mahmudullah Riad in last 10 winning match','FontWeight','Bold')
view(-111.5,40) ;
