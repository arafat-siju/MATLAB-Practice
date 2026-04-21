clc; clear; close all;

fs = 8000;  
recObj = audiorecorder(fs, 16, 1);

disp('Start speaking...');
recordblocking(recObj, 3); 
disp('Recording finished.');

x = getaudiodata(recObj);

N = length(x);
X = fft(x);
f = (0:N-1)*(fs/N);

figure;
subplot(2,1,1);
plot(x);
title('Recorded Voice Signal');
xlabel('Samples'); ylabel('Amplitude');

subplot(2,1,2);
plot(f, abs(X));
title('Frequency Spectrum');
xlabel('Frequency (Hz)'); ylabel('|X(f)|');
xlim([0 fs/2]);
grid on;