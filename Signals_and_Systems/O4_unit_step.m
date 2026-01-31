clc; 
clear all;

% Unit Step Signal

t = -5:25;
amp = [zeros(1,5) ones(1,26)];

figure(1)

subplot(121)
plot(t,amp,'LineWidth',2)
axis([-5 25 -0.5 1.5])
title('Unit Step (Continuous)')
xlabel('Time'); ylabel('Amplitude')

subplot(122)
stem(t,amp,'LineWidth',2)
axis([-5 25 -0.5 1.5])
title('Unit Step (Discrete)')
xlabel('Time'); ylabel('Amplitude')
