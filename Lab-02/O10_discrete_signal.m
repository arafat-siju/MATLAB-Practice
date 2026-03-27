clc; clear; close all;

n = -10:10;

x = sin(0.5*n);

figure(1);
stem(n,x, 'filled', 'LineWidth',1.5, 'Color',[0.73, 0.2117, 0.89]);
grid on;
title('Discrete Time Signal');
xlabel('n');
ylabel('Amplitude');