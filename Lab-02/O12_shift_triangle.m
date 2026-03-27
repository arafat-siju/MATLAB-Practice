clc; clear; close all;

n = -10:1:10;
x = max(0, 5 - abs(n)); % Triangular signal

k = 4; % Right shift
y_right = [zeros(1,k), x(1:end-k)];

k2 = 4; % Left shift
y_left = [x(k2+1:end), zeros(1,k2)];

subplot(3,1,1); 
stem(n, x, 'b'); 
title('Original Triangular Signal'); 
grid on;

subplot(3,1,2); 
stem(n, y_right, 'g');
title('Right Shifted by 4');
grid on;

subplot(3,1,3); 
stem(n, y_left, 'r'); 
title('Left Shifted by 4'); 
grid on;