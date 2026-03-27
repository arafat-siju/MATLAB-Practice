clc; clear; close all;

fs = 1000; 
f = 2;
t = 0:1/fs:1;

x1 = sin(2*pi*f*t);
x2 = sin(2*pi*f*t - pi/2);   % 90°
x3 = sin(2*pi*f*t - pi);     % 180°
x4 = sin(2*pi*f*t - 3*pi/2); % 270°

plot(t,x1,'k', t,x2,'r', t,x3,'b', t,x4,'g', 'LineWidth', 1.5);
grid on;
xlabel('Time (sec)');
ylabel('Amplitude');
title('Sinusoids with 0°, 90°, 180°, 270° Phase Shifts');
legend('0°','90°','180°','270°');