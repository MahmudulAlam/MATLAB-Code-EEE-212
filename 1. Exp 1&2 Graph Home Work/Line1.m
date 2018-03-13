clear all , close all;
clc , clf ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bangladesh vs Zimbabwe 3rd ODI 2015
over = 1:50 ;
bd_run_rate =[4.00 2.00 3.00 3.75 4.20 5.00 4.28 4.50 4.11 4.70 5.18 ...
              5.00 4.84 4.71 4.66 4.50 4.52 4.55 4.47 4.50 4.52 4.31 ...
              4.30 4.33 4.40 4.65 4.92 5.00 4.89 4.96 5.00 5.12 5.00 ...
              5.08 5.00 5.05 5.05 5.00 5.05 5.12 5.07 5.26 5.20 5.13 ...
              5.24 5.36 5.44 5.47 5.48 5.52 ] ;

plot(over,bd_run_rate,'LineWidth',2.5,'Color',[0 .5 0]); 
hold on ;
bd_wic_over = [30 35 41 43 44 44 48 50 50] ; % these are the over that 
wic_run= 1: length(bd_wic_over);            % contain wicket

for i = 1: length(bd_wic_over) % getting the run rate of the overs that
    wic_run(i) = bd_run_rate(bd_wic_over(i)) ; % contain wicket
end
wic_run(1,6) = wic_run(1,6) + .2 ; % increase run rate that corresponds 
wic_run(1,9) = wic_run(1,9) + .2 ; % more than one wicket to get clear 
                                   % graphical view
                                   
% ploting wickets of Bangladesh in the run rate vs over graph 
% wickets are shown as 'O' character 

bd = plot(bd_wic_over , wic_run,'O','MarkerFaceColor','w',...
    'MarkerEdgeColor',[0 .5 0],'MarkerSize',7,'LineWidth',1.5 );

zim_over = 1 : 44 ;
zim_run_rate= [4.00 7.00 7.66 6.50 6.00 6.33 6.42 5.75 5.77 5.60 5.45 ...
               5.58 5.61 5.50 5.53 5.37 5.47 5.61 5.63 5.50 5.57 5.50 ...
               5.52 5.41 5.40 5.42 5.37 5.28 5.17 5.06 5.03 5.25 5.21 ...
               5.20 5.20 5.16 5.10 5.13 5.07 5.17 5.12 5.07 4.97 4.94 ] ;
          
plot(zim_over,zim_run_rate,'LineWidth',2.5,'Color','r'); 
zim_wic_over= [1 7 9 23 36 37 41 41 43 44] ;
wic_run= 1: length(zim_wic_over);
for i = 1: length(zim_wic_over); % getting the run rate of the overs that
    wic_run(i) = zim_run_rate(zim_wic_over(i)) ; % contain wicket
end
wic_run(1,8) = wic_run(1,9) - .085 ; % decrease run rate that corrensponds
                                     % more than one wicket to get clear 
                                     % graphical view
                                     
% ploting wickets of Zimbabwe in the run rate vs over graph
% wickets are shown as 'O' character                                      
zim = plot(zim_wic_over , wic_run,'O','MarkerFaceColor','w',...
     'MarkerEdgeColor','r','MarkerSize',7,'LineWidth',1.5 );
% adding information in the graph
title('Bangladesh vs Zimbabwe 3rd ODI 2015','FontWeight','Bold') ;
xlabel('Overs','FontWeight','Bold') ;
ylabel('Run rate','FontWeight','Bold') ;
axis([1 50 0 9]);
text(20.5,8.5,'Over vs Run rate','FontWeight','Bold') ;
legend([bd zim],'Bangladesh','Zimbabwe','Orientation',...
    'horizontal','Location','South');
