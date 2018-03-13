clear all , close all ; 
clc , clf ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mashrafe Mortaza Conceded 40 Runs in different length balls
mortaza_run = [ 0 0 0 0 0 0 0 0 0 0    
                0 0 0 0 0 0 0 0 0 0     
                0 0 0 0 0 0 0 0 0 0 
                0 0 0 0 0 0 0 0 0 0     
                0 0 0 1 2 2 0 0 0 0 
                0 0 0 1 2 3 2 1 0 0 
                0 0 3 3 5 1 1 0 0 0     
                0 0 2 2 2 1 0 0 0 0 
                0 0 0 1 1 2 1 0 0 0 
                0 0 0 1 0 0 0 0 0 0 
                0 0 0 0 0 0 0 0 0 0 
                0 0 0 0 0 0 0 0 0 0    
                0 0 0 0 0 0 0 0 0 0  
                0 0 0 0 0 0 0 0 0 0 
                0 0 0 0 0 0 0 0 0 0 
                0 0 0 0 0 0 0 0 0 0 
                0 0 0 0 0 0 0 0 0 0     
                0 0 0 0 0 0 0 0 0 0 
                0 0 0 0 0 0 0 0 0 0 
                0 0 0 0 0 0 0 0 0 0 
                0 0 0 0 0 0 0 0 0 0 
                0 0 0 0 0 0 0 0 0 0 ] ;

% contour plot                
contourf( mortaza_run,'edgecolor','none') ;
colormap hsv;

l = legend('Most Runs') ;
set(l,'position', [.8 .8 .12 .12]) ;
set(l,'fontweight','bold') ;

view (90,90) ;
% limiting x axis 
xlim([-4 16]) ;

axis off ;
box off ;
title('Mashrafe Mortaza Conceded 40 Runs in different length balls',...
    'FontWeight','Bold') ;

% adding information
text(7,-.4,0, 'Batsman','rotation',90,'FontWeight','Bold') ;
text(7,23,0, 'Mashrafe','rotation',90,'FontWeight','Bold') ;
text(0,10,0,'Length','FontWeight','Bold') ;
text(12,2,0,'Yorker','FontWeight','Bold') ;
text(12,5,0,'Full','FontWeight','Bold') ;
text(12,7,0,'Good','FontWeight','Bold') ;
text(12,9,0,'Short','FontWeight','Bold') ;
text(12,12,0,'Very Short','FontWeight','Bold') ;
text(15.07,9.06,'Bangladesh vs Zimbabwe 3rd ODI 2015','FontWeight','Bold') ; 
text(16.32,9.46,'Bangladesh won by 61 runs','FontWeight','Bold') ;

