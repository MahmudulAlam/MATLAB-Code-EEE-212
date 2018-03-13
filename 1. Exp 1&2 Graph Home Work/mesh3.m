clear all , close all ; 
clc , clf ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mashrafe Mortaza's Economy rate in last 10 winning match 
mortaza_given_run = [ 48 52 44 53 17 29 13 47 40 ] ;
over = [ 10.0 8.0 10.0 10.0 7.0 5.0 5.0 6.0 9.0 9.0 ] ;
[run , over] = meshgrid( mortaza_given_run,over);
% finding economy rate 
economy_rate = run ./ over;
% mesh plot 
mesh(economy_rate,'facecolor','interp');
colormap spring ;
%labeling
zlabel('Economy rate','FontWeight','Bold');
title('Economy Rate of Mashrafe Mortaza in last 10 winning matches',...
    'FontWeight','Bold');
view(38,40) ;
