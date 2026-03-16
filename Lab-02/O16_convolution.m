clc; clear all;

n = 0:20;
x = double(n >= 0) - double(n >= 6);   % Rectangular pulse input
h = (0.8).^n .* double(n >= 0);        % Exponential impulse response

y = conv(x, h);                        % Convolution = system output
ny = 0 : length(y)-1;

%% input Signal
subplot(3,1,1); 
stem(n, x, 'b'); 
title('Input signal x[n]');
grid on;
%% Impulse Response
subplot(3,1,2); 
stem(n, h, 'color', 'r');
title('Impulse response h[n]'); 
grid on;
%% Convolution
subplot(3,1,3); 
stem(ny, y, 'Color',"g"); 
title('Output y[n] = x[n] * h[n]'); 
grid on;

%% Energy of each signal
fprintf('Energy of x: %.4f\n', sum(x.^2));
fprintf('Energy of h: %.4f\n', sum(h.^2));
fprintf('Energy of y: %.4f\n', sum(y.^2));