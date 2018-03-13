clear all , close all ; 
clc , clf ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bangladesh vs pakistan 2nd ODI 2015
shakib_all_ball = [ 0 0 0 0 0 0 0 0 0 0    
                    0 0 0 0 0 0 0 0 0 0      
                    0 0 0 0 0 0 0 0 0 0 
                    0 0 1 2 1 1 0 0 0 0      
                    0 0 2 1 3 1 1 1 0 0     % numbers indicate balls in that 
                    0 1 2 4 4 3 0 0 0 0     % particular length
                    0 2 3 3 5 3 1 2 0 0    
                    0 0 0 0 3 0 1 3 3 0 
                    0 0 0 0 1 0 0 0 0 0 
                    0 0 0 0 0 0 0 0 0 0 
                    0 0 0 0 1 1 0 0 0 0 
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
% contuor plot 
contourf (shakib_all_ball,'edgecolor','none') ;  
% limiting x axis 
xlim([-4 16]);

colormap summer ;
box off ; 
view(90,90) ;
axis off ;
title ('Bangladesh vs Pakistan 2nd ODI 2015',...
       'FontWeight','Bold') ;

text (-3,9,'Shakib''s ball pitched in different length','FontWeight','Bold') ;
l = legend('Most Ball Pitched') ;
set(l,'position', [.8 .8 .12 .12]) ;
set(l,'fontweight','bold') ;

% adding information
text(7,-.4,0, 'Batsman','rotation',90,'FontWeight','Bold') ;
text(7,23,0, 'Shakib','rotation',90,'FontWeight','Bold') ;
text(0,10,0,'Length','FontWeight','Bold') ;
text(12,2,0,'Yorker','FontWeight','Bold') ;
text(12,5,0,'Full','FontWeight','Bold') ;
text(12,7,0,'Good','FontWeight','Bold') ;
text(12,9,0,'Short','FontWeight','Bold') ;
text(12,12,0,'Very Short','FontWeight','Bold') ;
