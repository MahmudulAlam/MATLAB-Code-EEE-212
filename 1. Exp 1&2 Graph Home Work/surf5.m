clear all , close all ; 
clc , clf ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bangladesh vs India 2nd ODI 2015
mustafizur_ball = [ 0 1 0 0 0 0      
                    0 0 0 0 0 0          % 1 indicates wicket
                    0 0 0 0 0 0          % each row indicates a over
                    0 0 0 0 0 0 
                    0 0 0 0 0 0     
                    0 0 1 0 0 0 
                    0 0 0 0 0 0 
                    0 0 1 1 0 0 
                    0 0 0 0 0 1 
                    0 0 0 0 0 1 ]  ;
ball_count = 0 ;
wic_count = 0 ;

for i = 1:10 
    for j = 1:6
        ball_count = ball_count + 1 ;
        if mustafizur_ball(i,j) == 1   % that mean a wicket 
            wic_count = wic_count + 1 ;
        end
        if wic_count ~= 0  % without wicket strike rate is not valid    
            strike_rate(i,j) = ball_count / wic_count ;
        end
    end
end
mustafizur_final_strike_rate = ball_count / wic_count ; 
disp( mustafizur_final_strike_rate ) ;
% surf plot will show the variation of the strike rate throughout the match 
surf(strike_rate) ;
box off ;
shading interp;
title('Mustafizur''s Strike Rate vs India 2nd ODI 2015') ;
hidden off ;
view(105,46) ;
zlabel('Strike Rate','FontWeight','Bold') ;
set(gca,'Color',[.93 .93 .93]) ;
        