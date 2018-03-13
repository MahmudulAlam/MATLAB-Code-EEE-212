clear all , close all ; 
clc , clf ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Shakib al hasan all wickets in different length in last 10 winning
% matches
shakib_wickets = [  0 0 0 0 0 0 0 0 0 0    
                    0 0 0 0 0 0 0 0 0 0   % yorker length
                    0 0 0 0 0 0 0 0 0 0 
                    0 0 0 0 0 0 0 1 0 0   % full length 
                    0 0 0 0 1 1 0 0 0 0   % numbers indicate wickets in that 
                    0 0 1 2 0 0 0 0 0 0   % particuler length
                    0 0 0 1 2 2 1 1 0 0   % good length 
                    0 0 0 0 0 1 0 0 0 0 
                    0 0 0 0 0 0 0 0 0 0 
                    0 0 0 1 0 0 0 0 0 0   % short length
                    0 0 0 0 0 0 0 0 0 0 
                    0 0 0 0 0 0 0 0 0 0     
                    0 0 0 0 0 0 0 0 0 0  
                    0 0 0 0 0 0 0 0 0 0 
                    0 0 0 0 0 0 0 0 0 0 
                    0 0 0 0 0 0 0 0 0 0   % very short length 
                    0 0 0 0 0 0 0 0 0 0    
                    0 0 0 0 0 0 0 0 0 0 
                    0 0 0 0 0 0 0 0 0 0 
                    0 0 0 0 0 0 0 0 0 0 
                    0 0 0 0 0 0 0 0 0 0 
                    0 0 0 0 0 0 0 0 0 0  ] ;
% contour plot                
contourf( shakib_wickets,'edgecolor','none') ;
colormap summer ;
l = legend('Most Wickets') ;
set(l,'position', [.8 .8 .12 .12]) ;
set(l,'fontweight','bold') ;

view (90,90) ;
% limiting x axis 
xlim([-4 16]) ;

axis off ;
box off ;
title('Shakib Al Hasan all wickets in different length in last 10 winning match',...
      'FontWeight','Bold') ;
 
% adding information
text(7,-.4,0, 'Batsman','rotation',90,'FontWeight','Bold') ;
text(7,23,0, 'Shakib','rotation',90,'FontWeight','Bold') ;
text(0,10,0,'Length','FontWeight','Bold') ;
text(12,2,0,'Yorker','FontWeight','Bold') ;
text(12,5,0,'Full','FontWeight','Bold') ;
text(12,7,0,'Good','FontWeight','Bold') ;
text(12,9,0,'Short','FontWeight','Bold') ;
text(12,12,0,'Very Short','FontWeight','Bold') ;

