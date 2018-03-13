clear all , close all ;
clc , clf ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bangladesh vs. India 2015 1st ODI
left_y = [9 9 0 3 9 38 12 2 15 45] ;
right_y = [0 2 4 8 26 41 5 4 4 55] ;
left_label = char('Tamim Iqbal 45(43)','Tamim Iqbal 15(20)','Musfiqur Rahim 2(5)',...
    'Musfiqur Rahim 12(14)','Shakib Al Hasan 38(43)','Shakib Al Hasan 9(16)',...
    'M Mortaza 3(6)','M Mortaza 0(0)','M Mortaza 9(7)','M Mortaza 9(5)' ); 

right_label = char ('Soumya Sarker 54(40)','Liton Das 4(5)','Liton Das 4(8)',...
    'Shakib Al Hasan 5(9)','Sabbir Rahman 41(44)','Nasir Hossain 26(19)',...
    'Nasir Hossain 8(8)','Rubel Hossain 4(5)','Taskin Ahmed 2(5)','M Rahman 0(0)');

total = char('102(83)','21(25)','6(13)','17(23)','83(87)',...
    '38(35)','15(14)','4(5)','12(12)','9(5)') ;

x = 1: 10 ;
% plotting barh 
a = barh(x,-left_y,.5);  % plotting left side of the partnership
% removing Baseline
a1 = get(a,'BaseLine') ;
set(a1,'LineStyle','none') ;
hold on;

a = barh(x,right_y,.5);  % plotting right side of the partnership
axis([-60 60 0 11]); 
k=10;
for i = 1:10         % adding left side text
    xvalue = -40 ;
    yvalue = k + .5 ;
    k=k-1;
    c =  left_label(i,:) ;
    text(xvalue,yvalue,c,'FontWeight','Bold') ;
end
k=10; 
for i = 1:10         % adding right side text
    xvalue = 20 ;
    yvalue = k + .5 ;
    k=k-1;
    c =  right_label(i,:) ;
    text(xvalue,yvalue,c,'FontWeight','Bold') ;
end
k=10;
for i = 1:10         % adding total partnership in the middle of the plot
    xvalue = -2 ;   
    yvalue = k + .55 ;
    k=k-1;
    c =  total(i,:) ;
    text(xvalue,yvalue,c,'FontWeight','Bold') ;
end
axis off;
title('Partnershiop of Bangladesh Batsman');
