clear all , close all ;
clc , clf ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bangladesh vs Zimbabwe 2nd ODI 2015
kayes_run = [ 0 0 0 0 2 0 0 0 4 1 1 0 0 4 0 0 1 1 0 0 0 0 0 6 0 0 1 0 4 ...
    0 1 0 0 0 0 0 4 1 0 0 6 1 0 0 1 1 1 1 0 6 1 0 1 1 0 1 0 0 4 0 0 1 0 ...
    1 0 0 1 0 0 0 0 1 0 1 0 1 0 1 4 0 1 0 1 0 1 0 0 6 0 ] ;
ball_faced = ones(1,89) ; 
[ball,run] = meshgrid( ball_faced,kayes_run ) ;
% size of the ball and run matrix  : (row,col) = (89,89)
run_count = 0 ;
ball_count = 0 ;

for i = 1:89
    for j = 1 : 89
        run_count = run_count + run(i,j) ;    % run and ball matrix have 
        ball_count = ball_count + ball(i,j) ; % same size 
        strike_rate(i,j) = 100* ( (run_count) / ball_count) ;
    end
end
kayes_final_strike_rate = 100 * (run_count / ball_count) ;
disp( kayes_final_strike_rate ) ;
% surface plot will show the variation of strike rate throughout the
% innings. final strike rate equals to the actual strike rate 
% surf plot
surf(strike_rate) ;
shading flat ; 
view (102.5 , 12) ;
set(gca,'Color',[.93,.93,.93] );
title('Imrul Kayes Strike Rate vs Zimbabwe 2nd ODI 2015','FontWeight','Bold') ;
zlabel('Strike Rate','FontWeight','Bold') ;
text(0,20,0,'Bangladesh won by 58 runs','FontWeight','Bold','FontSize',11);
               