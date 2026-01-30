% Exponential, Sinusoidal & Random signals in one figure

clc; clear;

figure(1)

% Exponential Signal
a = 2;
t = -5:0.5:5;
amp = exp(-a*t) + exp(a*t);
subplot(131)
plot(t,amp,'LineWidth',2)
title('Exponential Signal')
xlabel('Time'); ylabel('Amplitude')

% Sinusoidal Signal
A = 5; f = 1;
t = linspace(1,10,1000);
amp = A*sin(2*pi*f*t);
subplot(132)
plot(t,amp,'LineWidth',2)
title('Sinusoidal Signal')
xlabel('Time'); ylabel('Amplitude')

% Random Signal
t = -10:20;
amp = rand(1,length(t));
subplot(133)
plot(t,amp,'LineWidth',2)
title('Random Signal')
xlabel('Time'); ylabel('Amplitude')
