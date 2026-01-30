% Unit Impulse Signal (Continuous & Discrete)

clc; clear;

t = -3:3;
amp = [0 0 0 1 0 0 0];

figure(1)

subplot(121)
plot(t,amp,'LineWidth',2)
title('Unit Impulse (Continuous)')
xlabel('Time'); ylabel('Amplitude')

subplot(122)
stem(t,amp,'LineWidth',2)
title('Unit Impulse (Discrete)')
xlabel('Time'); ylabel('Amplitude')
