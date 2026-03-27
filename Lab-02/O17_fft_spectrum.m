% Fast Fourier Transform (FFT)

clc; clear; close all;

fs = 1000; 
T = 1/fs;
t  = 0 : T : 1-T;
N  = length(t);

% Composite signal: 3 frequencies + white noise
f1=50; f2=120; f3=200;
x = 1.5*sin(2*pi*f1*t) + 0.8*sin(2*pi*f2*t) + sin(2*pi*f3*t);
noise = 0.5 * randn(size(t));
x_noisy = x + noise;

% FFT
X = fft(x_noisy, N);
X_mag = (2/N) * abs(X(1:N/2+1));
f_axis = (0:N/2) * (fs/N);

subplot(3,1,1);
plot(t, x_noisy);
title('Noisy time-domain signal'); 
xlabel('t (s)'); 
grid on;

subplot(3,1,2);
plot(f_axis, X_mag); 
title('Single-sided FFT magnitude spectrum');
xlabel('Frequency (Hz)');
ylabel('|X(f)|'); 
grid on;

% Power Spectral Density
subplot(3,1,3);
psd = (1/(fs*N)) * abs(X).^2;
psd_one = psd(1:N/2+1); psd_one(2:end-1) = 2*psd_one(2:end-1);
semilogy(f_axis, psd_one);
title('Power Spectral Density (log scale)');
xlabel('Frequency (Hz)'); 
grid on;

fprintf('Peaks detected at approx: %d Hz, %d Hz, %d Hz\n', f1, f2, f3);