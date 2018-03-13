clear all , close all ; 
clc , clf ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mashrafe Mortaza's Economy rate in last 10 winning match 
mortaza_ecn = [ 4.80 6.50 4.40 5.30 5.00 3.40 5.80 2.16 5.22 4.44 ] ;
over = [ 10.0 8.0 10.0 10.0 7.0 5.0 5.0 6.0 9.0 9.0 ] ; 
match = 1: 10 ;

plot3( over , match , mortaza_ecn, 'LineWidth', 2 , 'Color','r' ) ;
% adding information
xlabel('Over','FontWeight','Bold');
ylabel('Match','FontWeight','Bold');
zlabel('Economy Rate','FontWeight','Bold');
axis([2 10 0 10 1 8]);
view(97.5,36.44) ;
grid on ;
title('Mashrafe Mortaza''s Economy rate in last 10 winning match',...
      'FontWeight','Bold');
set(gcf,'Color',[.76 .87 .78] );
set(gca,'Color',[1 1 .6] ) ;
