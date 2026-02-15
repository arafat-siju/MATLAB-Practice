% Exponential, Sinusoidal & Random signals in one figure

clc; clear;


%% Exponential Signal
figure(1)
a = 2;
t = -5:0.5:5;
amp = exp(-a*t) + exp(a*t);
subplot(111)
plot(t,amp,'LineWidth',2)
title('Exponential Signal')
xlabel('Time'); ylabel('Amplitude')

%% Sinusoidal Signal
figure(2)
A = 5; f = 1;
t = linspace(1,10,1000);
amp = A*sin(2*pi*f*t);
subplot(211)
plot(t,amp,'LineWidth',2)
title('Sinusoidal Signal')
xlabel('Time'); ylabel('Amplitude')

subplot(212)
stem(t,amp,'LineWidth',2)
title('Sinusoidal (Discrete)')

%% Random Signal
figure(3)
t = -10:20;
amp = rand(1,length(t));
subplot(211)
plot(t,amp,'LineWidth',2)
title('Random Signal')
xlabel('Time'); ylabel('Amplitude')
