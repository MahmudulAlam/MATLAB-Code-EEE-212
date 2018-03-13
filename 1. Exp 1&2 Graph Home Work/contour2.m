clear all , close all ; 
clc , clf ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bangladesh vs India 2nd ODI 2015
mustafizur_all_ball = [ 0 0 0 0 0 1 2 0 0 0    
                        0 0 0 0 0 0 0 0 0 0     
                        0 0 1 1 0 0 0 0 0 0 
                        0 0 2 2 3 0 0 0 0 0  
                        0 0 1 0 1 0 0 0 0 0 
                        0 0 2 3 2 1 0 0 0 0 
                        0 0 3 5 3 1 2 2 0 0    
                        0 0 1 4 1 3 5 1 0 0 
                        0 0 2 0 0 4 0 1 0 0 
                        0 0 0 0 0 0 0 0 0 0 
                        0 0 0 0 3 1 0 0 0 0 
                        0 0 0 0 0 0 0 0 0 0
                        0 0 0 0 0 1 0 0 0 0  
                        0 0 0 0 0 1 0 0 0 0 
                        0 0 0 0 0 0 0 0 0 0 
                        0 0 0 0 0 0 0 0 0 0 
                        0 0 0 0 0 0 0 0 0 0     
                        0 0 0 0 0 0 0 0 0 0 
                        0 0 0 0 0 0 0 0 0 0 
                        0 0 0 0 0 0 0 0 0 0 
                        0 0 0 0 0 0 0 0 0 0 
                        0 0 0 0 0 0 0 0 0 0 ] ;
% contour plot
contourf(mustafizur_all_ball,'edgecolor','none') ;
% limiting x axis 
xlim([-4 16]);

colormap jet ;
box off ; 
view(90,90) ;
axis off ;
title ('Bangladesh vs india 2nd ODI 2015',...
       'FontWeight','Bold') ;

text (-3,9,'Mustafizur''s ball pitched in different length','FontWeight','Bold') ;
l = legend('Most Ball Pitched') ;
set(l,'position', [.8 .8 .12 .12]) ;
set(l,'fontweight','bold') ;


% adding information
text(7,-.4,0, 'Batsman','rotation',90,'FontWeight','Bold') ;
text(7,23,0, 'Mustafizur','rotation',90,'FontWeight','Bold') ;
text(0,12,0,'Length','FontWeight','Bold') ;
text(12,2,0,'Yorker','FontWeight','Bold') ;
text(12,5,0,'Full','FontWeight','Bold') ;
text(12,7,0,'Good','FontWeight','Bold') ;
text(12,9,0,'Short','FontWeight','Bold') ;
text(12,12,0,'Very Short','FontWeight','Bold') ;

