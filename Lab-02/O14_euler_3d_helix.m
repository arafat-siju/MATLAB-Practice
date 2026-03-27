clc; clear; close all;

fs = 1000;
t = 0:1/fs:3;
z = exp(1j * 2*pi*t);

plot3(t, real(z), imag(z), 'b', 'LineWidth', 1.5);
grid on;
xlabel('Time'); ylabel('Real (cos t)'); 
zlabel('Imag (sin t)');
title('3D Helix — Euler''s Formula Visualization');