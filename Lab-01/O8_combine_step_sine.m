% Combination of Step and Sinusoidal Signal

clc; clear;

t = -5:0.01:5;
x = (t>=0) + sin(2*pi*t);

figure(1);
plot(t,x,'Color',[1 0.2 0.2], 'Linewidth', 2);
grid on;
title('Combination of Step and Sinusoidal signal');
xlabel("Time");
ylabel("Amplitude");

figure(2);
xlabel("Time");
ylabel("Amplitude");
stem(t,x, 'Color',[1, 0.2, 0.2])