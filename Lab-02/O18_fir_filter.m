% Finite Impulse Response (FIR) filter
clc; clear all;

fs = 1000; 
T = 1/fs;
t  = 0:T:1-T;
N  = length(t);

% Mixed signal: 30Hz (keep) + 200Hz (remove)
x = sin(2*pi*30*t) + sin(2*pi*200*t);

% Design FIR filter using window method
order   = 50;
cutoff  = 80;                                       % Hz
Wn      = cutoff / (fs/2);                         % Normalized [0,1]
b       = fir1(order, Wn, 'low', hamming(order+1));

% Apply filter
y = filter(b, 1, x);

% Frequency responses
[H, f] = freqz(b, 1, 512, fs);

subplot(3,1,1); 
plot(t, x, 'b'); 
title('Input: 30Hz + 200Hz'); 
grid on;

subplot(3,1,2); 
plot(t, y, 'r'); 
title('Filtered output (FIR low-pass)');
grid on;

subplot(3,1,3);
plot(f, 20*log10(abs(H)), 'k', 'LineWidth', 1.5);
xline(cutoff, 'r--', 'Cutoff');
title('FIR filter frequency response (dB)');
xlabel('Frequency (Hz)'); 
ylabel('Magnitude (dB)'); 
grid on;

% SNR improvement estimate
noise_before = rms(x  - sin(2*pi*30*t));
noise_after  = rms(y(51:end) - sin(2*pi*30*t(51:end)));
fprintf('Noise RMS before: %.4f\n', noise_before);
fprintf('Noise RMS after:  %.4f\n', noise_after);