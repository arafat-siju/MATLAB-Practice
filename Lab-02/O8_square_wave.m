clc;
clear;

fs = 1000;
t = 0:1/fs:1;

f = 5;

x = square(2*pi*f*t);

plot(t,x, "Linewidth",1.5, 'Color',[0.32, 0.98, 0.13])

grid on
title('Square Wave Signal')
xlabel('Time')
ylabel('Amplitude')