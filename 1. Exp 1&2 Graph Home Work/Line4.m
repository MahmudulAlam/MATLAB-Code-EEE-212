clear all , close all ;
clc , clf ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bangladesh vs India 2nd ODI 2015
ind_over = 1 : 45;
ind_per_over_run = [ 3 8 5 5 7 4 5 5 12 11 3 5 1 7 7 4 3 3 2 4 5 1 4 7 ...
                     3 1 5 2 6 4 5 1 4 3 7 2 3 2 4 6 3 2 9 3 4 ];
                 
bd_over = 1: 38; 
bd_per_over_run = [ 6 10 8 3 6 1 1 4 2 8 1 7 3 5 6 15 0 5 7 1 7 3 3 3 2 ...
                    16 8 4 6 3 9 5 3 3 7 1 12 6 ] ;

p1 = plot (ind_over , ind_per_over_run,'LineWidth',2,'Color','b') ;
hold on ; 
p2 = plot (bd_over,bd_per_over_run,'LineWidth',2,'Color',[0 .5 0]); 
axis([ 1 45  0 18]);
% adding information
legend ([p2 p1],'Bangladesh','India') ;
grid on ;
xlabel ('Overs');
ylabel ('Per Over Run');
title ('Bangladesh vs India 2nd ODI 2015');
text (19.7,17,'Per Over Run Comparison','FontWeight','Bold',...
    'BackgroundColor',[.8 .88 .97]);
text (3.2,15.83,'Bangladesh won by 6 wickets') ;
text (2.23,15.1,'(with 54 balls remaining) (D/L method)') ;
