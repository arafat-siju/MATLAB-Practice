% Unit Ramp Signal

clc; clear;

t = -10:10;
amp = [zeros(1,10) t(11:end)];

figure(1)
%% continuous
subplot(121)
plot(t,amp,'LineWidth',2)
axis([-5 10 -0.5 11])
title('Unit Ramp (Continuous)')
xlabel('Time'); ylabel('Amplitude')
%% discrete
subplot(122)
stem(t,amp,'LineWidth',2)
axis([-5 10 -0.5 11])
title('Unit Ramp (Discrete)')
xlabel('Time'); ylabel('Amplitude')
