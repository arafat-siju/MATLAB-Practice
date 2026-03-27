% 1. Determine the odd and even components of 𝑥(𝑡)=𝑒𝑗𝑡

clc; clear; close all;

t = -10:0.01:10;

x = exp(1j*t);      % x(t)
x_neg = exp(-1j*t); % x(-t)

xe = (x + x_neg)/2; % even component
xo = (x - x_neg)/2; % odd component

figure

subplot(3,1,1)
plot(t,real(x), 'm')
title('Original Signal x(t) = e^{jt}')
xlabel('t')
ylabel('Amplitude')

subplot(3,1,2)
plot(t,real(xe), 'r')
title('Even Component')

subplot(3,1,3)
plot(t,real(xo), 'k')
title('Odd Component')