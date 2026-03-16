clc;clear;

fs = 1000; % sampling frequency
f = 2;     % signal frequency

t = 0:1/fs:1;

% Convert 90 degree to radian
phase = 90*(2*pi/360);

x1 = sin(2*pi*f*t);
x2 = sin(2*pi*f*t - phase);

hold on

plot(t,x1,'k')
plot(t,x2,'r')

grid on
xlabel('Time (sec)')
ylabel('Amplitude')

legend('x1(t)','x2(t)')
title('Two Sinusoids with 90 Degree Phase Difference')