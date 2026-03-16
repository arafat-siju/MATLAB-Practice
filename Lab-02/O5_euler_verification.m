clc;
clear;

fs = 1000;
t = 0:1/fs:1;

% Complex exponential
z = exp(1j*2*pi*t);

% Plot real and imaginary parts
plot(t,real(z),'k',t,imag(z),'r')

grid on
xlabel('Time (sec)')
ylabel('Amplitude')

legend('Real Part (cos)','Imaginary Part (sin)')

title('Verification of Euler Equation')