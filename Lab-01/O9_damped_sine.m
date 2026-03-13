% Damped Sinusoidal Signal;

clc; clear;

t = 0:0.01:10;
x = exp(-0.5*t).*sin(2*pi*t);

figure(1);
plot(t,x,'LineWidth',2,'Color',[0.33, 0.75, 0.49]);
grid on;
title("Damped Sinusoidal Signal");
xlabel('Tiime');
ylabel('Amplitude');