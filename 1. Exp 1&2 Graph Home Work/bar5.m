clear all , close all ;
clc , clf ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Bangladesh vs Pakisthan 1st ODI 2015
bd_score =[ 2 8 4 6 2 9 6 4 2 1 2 1 1 3 2 1 2 3 7 1 7 6 5 7 12 7 5 17 ...
            4 3 8 10 4 5 14 11 18 11 7 8 5 5 16 11 10 4 7 13 10 12 ] ;
        
b = bar3(bd_score);    % plotting 3D bar graph
title('Bangladesh Run in Each Over','fontweight','bold'); 
ylabel('Over','fontweight','bold');
zlabel('Run','fontweight','bold' );
set(b,'FaceColor', 'b' ) ;
ylim([0 51]);   % defining y and z axis limit 
zlim([0 20]);
view(-90,34); % changing default azimuth and elevation
