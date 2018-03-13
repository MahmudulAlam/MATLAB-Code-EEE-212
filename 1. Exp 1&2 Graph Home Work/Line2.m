clear all , close all ;
clc , clf ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bangladesh vs Zimbabwe 3rd ODI 2015
over = 1:50 ;
bd_run =[ 4 4 9 15 21 30 30 36 37 47 57 60 63 66 70 72 77 82 85 90 95 ...
          95 99 104 110 121 133 140 142 149 155 164 165 173 175 182 187 ...
          190 197 205 208 221 224 226 236 247 256 263 269 276 ] ;
      
plot(over,bd_run,'LineWidth',2.5,'Color',[0 .5 0]); 
hold on ;
bd_wic_over= [30 35 41 43 44 44 48 50 50] ; % these are the over that 
wic_run= 1: length(bd_wic_over);            % contain wicket

for i = 1: length(bd_wic_over) % getting the run of the overs that
    wic_run(i) = bd_run(bd_wic_over(i)) ; % contain wicket
end
wic_run(1,6) = wic_run(1,6) + .2 ; % increase run that corresponds 
wic_run(1,9) = wic_run(1,9) + .2 ; % more than one wicket to get clear 
                                   % graphical view
                                   
% ploting wickets of Bangladesh in the run vs over graph 
% wickets are shown as 'O' character 

bd = plot(bd_wic_over , wic_run,'O','MarkerFaceColor','w',...
    'MarkerEdgeColor',[0 .5 0],'MarkerSize',7,'LineWidth',1.5 );

zim_over = 1 : 44 ;
zim_run=[4 14 23 26 30 38 45 46 52 56 60 67 73 77 83 86 93 101 107 110 ...
         117 121 127 130 135 141 145 148 150 152 156 168 172 177 182 186 ...
         189 195 198 207 210 213 214 215 ] ;
          
plot(zim_over,zim_run,'LineWidth',2.5,'Color','r'); 
zim_wic_over= [1 7 9 23 36 37 41 41 43 44] ;
wic_run= 1: length(zim_wic_over);
for i = 1: length(zim_wic_over); % getting the run of the overs that
    wic_run(i) = zim_run(zim_wic_over(i)) ; % contain wicket
end
wic_run(1,8) = wic_run(1,9) - .085 ; % decrease run that corrensponds
                                     % more than one wicket to get clear 
                                     % graphical view
                                     
% ploting wickets of Zimbabwe in the run vs over graph
% wickets are shown as 'O' character                                      
zim = plot(zim_wic_over , wic_run,'O','MarkerFaceColor','w',...
     'MarkerEdgeColor','r','MarkerSize',7,'LineWidth',1.5 );
% adding information in the graph
title('Bangladesh vs Zimbabwe 3rd ODI 2015') ;
xlabel('Overs','FontWeight','Bold') ;
ylabel('Run','FontWeight','Bold') ;
axis([1 50 0 300]);
text(23,275,'Over vs Run','FontWeight','Bold') ;
legend([bd zim],'Bangladesh','Zimbabwe','Orientation',...
    'horizontal','Location','South');
