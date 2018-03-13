clear all , close all ;
clc , clf ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bangladesh vs Pakisthan 2nd ODI 2015
over = 1: 38 ;
req_run_rate = [4.79 4.79 4.63 4.56 4.48 4.29 4.32 4.38 4.14 3.92 3.92 ...
                3.89 3.91 3.88 4.00 4.05 4.03 3.96 3.80 3.76 3.75 3.39 ...
                3.44 3.50 3.08 3.08 3.04 2.95 2.80 2.85 2.84 2.66 2.52 ...
                2.50 2.00 1.57 1.23 0.08 ] ;

wicket_fall_over = [3 15 37] ; % over that contains wickets
wicket_fall_over_req_run_rate = [0 0 0] ; % initializing
wicket_fall = zeros(1,38) ;
for i = 1:3 
   wicket_fall_over_req_run_rate(i) = req_run_rate(wicket_fall_over(i)) ;
end                            % collecting the run rate of the over that
                               % contains wicket
p1 = plot(over,req_run_rate,'LineWidth',2,'Color',[0 .5 0]) ;
hold on ;                      % plotting over vs required run rate

p2 = plot (  wicket_fall_over  ,  wicket_fall_over_req_run_rate ,'O','LineWidth',...
          2,'MarkerFaceColor','w','MarkerEdgeColor','b') ;
                               % plotting wickets
axis([1 40 .07 5]);       
% adding inoformation 
xlabel('Overs','FontWeight','Bold');
ylabel('Required Run Rate','FontWeight','Bold');
legend([p1 p2],'Required Run Rate','Wicket Fall');
title('Bangladesh vs Pakistan 2nd ODI 2015','FontWeight','Bold');
text(13,.3,'Bangladesh won by 7 wickets (with 71 balls remaining)',...
    'FontWeight','Bold');
