clear all ,close all ;
clc , clf ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bangladesh vs India 1st ODI 
bd_run = [5 3 6 7 6 18 10 11 10 3 2 12 4 8 3 12 1 5 1 2 4 2 10 2 2 2 8 ...
          3 6 7 8 6 3 6 15 2 11 4 2 13 5 7 7 3 6 9 4 8 5 8] ;
over = ones(1,50) ;
[ run , over ] = meshgrid ( bd_run , over );
run_count = 0 ;
over_count = 0 ;

for i = 1 : 50
    for j = 1 : 50
        run_count = run(i,j) + run_count ; 
        over_count = over(i,j) + over_count ;
        run_rate(i,j) = run_count / over_count ;
    end
end
% displaying final data 
final_run_rate = run_count / over_count ;
disp(final_run_rate) ;
% mesh plot 
mesh(run_rate,'facecolor','interp') ;
colormap jet ;
% labeling 
zlabel('Run rate');
title('Bangladesh run rate change throughout the match','FontWeight','Bold');
view (131.5,50) ;
text(22.6,18.3,-1.7,'Bangladesh won by 79 runs','fontweight','bold') ;


