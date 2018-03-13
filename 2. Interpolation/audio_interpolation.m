clear , clc;
clf , close all ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% record voice %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[stereo,fs] = audioread('voice.wav');
 
% calculate time of the audio 
time = (1/fs) * length(stereo) ;
 
% plotting original audio signal
t = linspace (0, time, length(stereo) ) ;
plot(t,stereo) ;           % turning column vector to row vector 
xlabel('Time (sec)','LineWidth',2);
ylabel('Relative ignal strength','LineWidth',2) ;
title('Original Signal','LineWidth',2) ;
 
figure
 
%plotting reduce audio signal
reduce_wave_length = stereo(44111*4.8540:44111*4.85433);
subplot(2,1,1);
plot(reduce_wave_length,'LineWidth',2);
xlabel('Time (sec)','LineWidth',2);
ylabel('Relative ignal strength','LineWidth',2) ;
title('Reduced audio Signal','LineWidth',2) ;
grid on;
 
% taking points 
taken_x = 1 : 1 : 15;
taken_y = [-.1801 -.183 -.1911 -.208 -.2268 -.2418 -.2575 -.2762 -.2878 -.2924 -.2974 -.295 -.2842 -.2741 -.2582];
 
new_x = [1.002 2.003 3.001 4.00305 5.00201 6.001 7.0035 8.002 9.0011 10.001 11.0016 12.0041 13.0015 14.00224 14.998];
 
for k = 1:length(new_x)
    sum = 0;
    for i = 1:length(taken_x)
        P = taken_y(i);
        for j = 1 : length(taken_x)
            if j~=i
                P = P*(new_x(k)-taken_x(j))/(taken_x(i)-taken_x(j));
            end
        end
        sum = sum + P;
    end
    new_y(k) = sum;
end
 
% plotting interpolated audio signal 
subplot(2,1,2);
plot(new_x,new_y,'LineWidth',2);
xlabel('Time (sec)','LineWidth',2);
ylabel('Relative ignal strength','LineWidth',2) ;
title('Interpolated audio Signal','LineWidth',2) ;
grid on;
 
figure 
 
% plotting error
Error = taken_y - new_y;
plot(Error,'LineWidth',2);
ylabel('Error','LineWidth',2);
title('Error','LineWidth',2) ;
grid on;


