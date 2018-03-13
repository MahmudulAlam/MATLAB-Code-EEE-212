clear all , close all ;
clc , clf ; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% South Africa vs. Bangladehs 3dr ODI
% Soumya Sarker run all around the field
field = ones(1,8) ;
labels = {'Fine-leg (10)','Square-leg (4)','Mid-wicket (32)','Mid-on (6)',...
    'Mid-off (6)','Cover (18)','Point (2)','Third man (12)' };
pie(field,labels) ;  
title ('Soumya Sarker Scores all around the ground') ;
set( gcf,'Color',[.76 .87 .78] ) ;