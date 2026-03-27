clc; clear; close all;

t = 0:0.01:2*pi;

x1 = sin(t);
x2 = cos(t);

x3 = x1 + x2;

plot(t,x1,'r')
hold on
plot(t,x2,'b')
plot(t,x3,'k')

legend('sin(t)','cos(t)','sin(t)+cos(t)')
grid on
title('Signal Addition')