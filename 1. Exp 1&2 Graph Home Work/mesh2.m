clear all , close all ; 
clc , clf ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run_rate of Bangladesh in last 10 winning matches
bd_run = [ 329 240 251 307 200 167 170 273 241 276 ] ; 
over_played = [ 50 38.167 39.5 49.67 38 27.67 26.167 50 50 50 ] ;

[run , over] = meshgrid( bd_run,over_played );
run_rate = run ./ over; 
% mesh plot
mesh( run_rate );
% labeling 
zlabel('Run Rate','FontWeight','Bold');
title('Run rate of Bangladesh in last 10 winning matches',...
      'FontWeight','Bold');
view(103,47);
box off ; 
