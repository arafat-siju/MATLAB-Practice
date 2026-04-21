clc; clear; close all;

A = 1;       
T = 2*pi;    
w0 = 2*pi/T;   

t = linspace(0, T, 1000);

f = A*sin(t);
f(f < 0) = 0;

N = 10; 
a0 = (1/pi)*integral(@(x) A*sin(x).*(sin(x)>0), 0, 2*pi);

an = zeros(1,N);
bn = zeros(1,N);

for n = 1:N
    an(n) = (1/pi)*integral(@(x) (A*sin(x).*(sin(x)>0)).*cos(n*x), 0, 2*pi);
    bn(n) = (1/pi)*integral(@(x) (A*sin(x).*(sin(x)>0)).*sin(n*x), 0, 2*pi);
end

fs = a0/2;
for n = 1:N
    fs = fs + an(n)*cos(n*w0*t) + bn(n)*sin(n*w0*t);
end

figure;
plot(t, f, 'LineWidth', 2); hold on;
plot(t, fs, '--r', 'LineWidth', 2);
legend('Original', 'Fourier Approximation');
title('Half-Wave Rectified Signal Fourier Series');
xlabel('t'); ylabel('Amplitude');
grid on;