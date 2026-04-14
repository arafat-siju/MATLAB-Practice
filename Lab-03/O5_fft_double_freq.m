clc; close all;

Fs = 1000;              % Sampling frequency
T = 1/Fs;               % Sample time
t = 0:1/Fs:1;
L=length(t)
y = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t);

subplot(311)
plot(t(1:50),y(1:50), 'Color',[0.5, 0.12, 0.45])
title('Double frequency Sine Signal');
xlabel('time (seconds)');
NFFT = 2^nextpow2(L);   % Next power of 2 just greater than length of y
Y = fft(y,NFFT)/L;
Abs_Y = abs(Y);

subplot(312)
plot(Abs_Y, 'Color',[0.7, 0.32, 0.45]);
xlabel('Frequency (Hz)');
ylabel('|Y(f)|');
title('Double-Sided Amplitude Spectrum of y(t)');
% Plot single-sided amplitude spectrum.
f = (Fs/2)*linspace(0,1,NFFT/2);

subplot(313)
plot(f,2*(Abs_Y(1:NFFT/2)), 'Color',[0.91, 0.51, 0.1])
title('Single-Sided Amplitude Spectrum of y(t)');
xlabel('Frequency (Hz)');
ylabel('|Y(f)|');