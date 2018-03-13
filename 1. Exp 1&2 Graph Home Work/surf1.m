clear all , close all ; 
clc , clf ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bangladesh vs South Africa 2nd ODI 2015
mustafizur_run_given = [0 0 4 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 4 1 0 ...
   0 0 0 0 1 4 0 0 0 0 0 0 0 1 1 0 0 0 0 1 0 0 4 0 4 1 4 1 1 0 1 0 0 0 1 1 ] ;
wicket = [0 0 1 0 0 0 1 0 1 0 ] ;

[wic,run] = meshgrid ( wicket , mustafizur_run_given ) ;
% wic and run matrix size (row,col) = (60,10)
wic_count = 0 ;    % it will count total wicket from the beginning
run_count = 0 ;    % it will count total run from the beginning
bowling_average = zeros(60,10) ;
for i = 1: 60
    for j = 1: 10 
        wic_count = wic_count + wic(i,j) ;
        run_count = run_count + run(i,j) ;
        if wic_count == 0
           % bowling average is not applicable ; 
        else 
            bowling_average(i,j) = (run_count/10) / (wic_count/60) ; 
% as wic_count has 60 identical row and run_count has 10 identical column 
        end
    end
end
final_bowling_average = (run_count/10) / (wic_count/60) ;
disp(final_bowling_average) ;
% surface plot will show the variation of the bowling average throughout
% the match and the final value of bowling_average will be as same as it
% really was
surf(bowling_average) ;
shading interp ;
title ('Bangladesh vs South Africa 2nd ODI 2015','FontWeight','Bold') ;
view(99.5,20) ;
zlabel('Mustafizur''s Bowling Average','FontWeight','Bold') ;
text(0,11.5,29,'Bangladesh won by 7 wickets (with 134 balls remaining)', ... 
       'FontWeight','Bold','FontSize',11);



