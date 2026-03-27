clc; clear; close all;

fs = 1000;
f = 2;
t = 0:1/fs:1;
x1 = sin(2*pi*f*t);
x2 = cos(2*pi*f*t);

fprintf('--- Sin Wave ---\n');
fprintf('Min: %.4f | Max: %.4f\n', min(x1), max(x1));
fprintf('Mean: %.4f | Variance: %.4f\n', mean(x1), var(x1));
fprintf('Std Dev: %.4f | RMS: %.4f\n\n', std(x1), sqrt(mean(x1.^2)));

fprintf('--- Cos Wave ---\n');
fprintf('Min: %.4f | Max: %.4f\n', min(x2), max(x2));
fprintf('Mean: %.4f | Variance: %.4f\n', mean(x2), var(x2));
fprintf('Std Dev: %.4f | RMS: %.4f\n', std(x2), sqrt(mean(x2.^2)));

subplot(2,1,1);
plot(t,x1,'r');
title('Sin Wave');
grid on;

subplot(2,1,2); 
plot(t,x2,'b'); 
title('Cos Wave'); 
grid on;