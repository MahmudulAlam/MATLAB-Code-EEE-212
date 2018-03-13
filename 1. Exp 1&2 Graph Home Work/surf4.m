clear all , close all ;
clc , clf ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bangladesh vs Zimbabwe 1st ODI 2015
bd_run=[ 1 1 2 11 4 6 1 4 1 8 2 5 1 5 1 6 3 10 4 8 1 9 5 3 3 7 7 4 3 5 5 ...
         4 1 15 4 3 7 5 6 13 6 6 5 5 14 5 7 3 9 19 ] ;

bd_over = ones(1,50) ;
[over,run] = meshgrid(bd_over,bd_run) ; 
% size of the over and run matrix is : (row,col) = (50,50) 

run_count = 0 ;
over_count = 0 ;

for i = 1 : 50 
    for j = 1 : 50 
        run_count = run_count + run (i,j) ;
        over_count = over_count + over(i,j) ;
        run_rate(i,j) = run_count / over_count ;
    end
end
final_run_rate = run_count / over_count ;
disp(final_run_rate) ;

[cx,cy] = gradient (run_rate) ; % it determines whether the slope of the 
% run rate changes with respect to Run(cx) and Over(cy)  

subplot(2,1,1) ;
surf(run_rate,cx) ;  % color of the surface changes when runrate changes 
                     % with respect to run 
shading interp;
view(41,14) ;
box off ;
% labeling
ylabel('Over','FontWeight','Bold');
zlabel('Run Rate change with Run','FontWeight','Bold') ;
title ('Bangladesh vs Zimbabwe 1st ODI 2015','FontWeight','Bold') ;

hold on ;

subplot(2,1,2) ;
surf(run_rate,cy) ;  % color of the surface changes when runrate changes
                     % with respect to Over 
% labeling
ylabel('Over','FontWeight','Bold');
zlabel('Run Rate change with Over','FontWeight','Bold') ;
shading interp ;
box off ; 
view(41,14) ;
text(-15,62,-2.4,'Bangladesh won by 145 runs', ... 
                'FontWeight','Bold','FontSize',11);
