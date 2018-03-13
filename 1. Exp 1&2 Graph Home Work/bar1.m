clear all , close all ;
clc , clf ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tamim Iqbal in last 10 winning match
match = 1: 10 ;
tamim_iqbal_run = [ 132 116 64 60 13 5 61 40 19 73 ] ;

bar (match , tamim_iqbal_run ,'FaceColor',[0 .5 0]) ;
for i = 1 : 10                      % showing score in the bar graph
    c = num2str(tamim_iqbal_run(i));% number to string conversion
    
    x = i ;                      
                                    % of the bar graph
    y = (tamim_iqbal_run(i)+ 5 ) ;  % plus 5 for showing run above bar graph 
    text (x,y,c,'fontweight','bold');
end
axis([0 11 0 150]);
xlabel('Last 10 Winning Match','fontweight','bold') ;
ylabel ('Run','fontweight','bold');
title('Tamim Iqbal in last 10 winning match','fontweight','bold')
