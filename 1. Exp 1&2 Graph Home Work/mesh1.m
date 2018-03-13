clear all , close all ; 
clc , clf ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mashrafe Mortaza's Bowling Average in last 10 winning match  
mortaza_given_run = [ 48 52 44 53 17 29 13 47 40 ] ;
wicket = [2 1 2 1 1 1 2 1 1] ;   % without wicket bowling average is invalid
                                 % as in last 6th match mashrafe was
                                 % wicketless so that match score is removed
[run,wic] = meshgrid( mortaza_given_run,wicket );
% finding the Bowling average
bowling_average = run ./ wic ;
% mesh plot
mesh(  bowling_average ,'FaceColor','interp','edgecolor','interp');
% labeling
zlabel('Bowling Avearge','FontWeight','Bold');
% adding detail
title('Bowling Average of Mortaza in last 10 winning matches',...
      'FontWeight','Bold');
view(35.5,58) ;