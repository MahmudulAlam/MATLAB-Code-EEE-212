clear all , close all ;
clc , clf ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bangladesh vs Pakisthan 3rd ODI 2015
shakib_run_given = [1 0 0 0 0 1 1 0 0 0 0 2 1 0 0 1 1 0 0 2 0 0 1 1 1 0 ...
    0 1 0 0 1 1 1 1 0 0 0 0 1 0 1 0 1 0 1 0 0 0 2 4 0 0 0 0 4 0 1 0 1 0 ] ;

ball =  [ 1 2 3 4 5 6 ] ;       % defining the number of the ball in a over

[ball,run] = meshgrid( ball, shakib_run_given) ;                         
% it will produce ball and run matrix of size ( row,col ) = ( 60,6 )

total_run =0;% it will count total_run of the run matrix from the beginning 
over_count=0;%it will count total_over from the ball matrix

for i = 1: 60                
    for j= 1 : 6
        total_run = total_run + run(i,j) ;
        over = over_count + ( ball(i,j) ) / 6 ;
        if ( ball(i,j) ) / 6 == 1
            over_count = over_count + 1 ;
        end
        economy_rate(i,j) = total_run / over ;
    end
end

% total ball is converted into over . as there is 60 row for 60 ball but 
% at the same time each row has 6 columns. So, 1 row equal 1 over and 
% finally total over will equal to 60. Total run will be 6 times more than
% real run as it counts the run that has equal 6 column but ratio will be
% same as it really is. Shakib's original economy in that match was 3.40.
% total_run/over is also 3.40. Surf plot will show the variation of the
% economy throughout the match.

shakib_economy = total_run / over ;  
disp(shakib_economy);   

surf(economy_rate) ;   
set(gca,'Color',[.93,.93,.93] );
shading interp ;
view(99.5,20) ;
title('Bangladesh vs Pakisthan 3rd ODI 2015','FontWeight','Bold') ;
zlabel('Shakib''s Economy Rate','FontWeight','Bold') ;
text(0,10,5.6,'Bangladesh won by 8 wickets (with 63 balls remaining)', ... 
    'FontWeight','Bold','FontSize',11);
