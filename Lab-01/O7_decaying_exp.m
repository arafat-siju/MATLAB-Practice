% Decaying Exponential Signal

clc; clear;

t = -2:0.01:5;
x = exp(-2*t).*(t>=0);

figure;
plot(t,x,'LineWidth',2, 'Color',[0.098 0.532 0.3]);  %color divided by 255
grid on;
title("Decaying Exponential Signal");
xlabel("Time");
ylabel('Amplitude');