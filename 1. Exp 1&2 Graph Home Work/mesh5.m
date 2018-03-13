clear all ,close all ;
clc , clf ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mashrafe Mortaza's Strike Rate in last 10 winning match 
mortaza_ball = [60 48 60 60 30 30 36 54 54 ] ;% one match data is removed
wicket = [2 1 2 1 1 1 2 1 1 ] ;             % as that match was wicketless

[ball,wic] = meshgrid( mortaza_ball , wicket );
strike_rate = ball ./ wic;
% mesh plot 
mesh( strike_rate, 'FaceColor','interp');
colormap summer ;
% labeling
zlabel('Strike rate','FontWeight','Bold');
title('Mashrafe Mortaza''s Strike Rate in last 10 winning match',...
      'FontWeight','Bold');
view(39.5,72);
