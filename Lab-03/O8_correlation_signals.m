clc; close all;

N=1000;             % number of points
fs=1000;            % sampling frequency
t=(0:N-1)/fs;       % time vector
f=1;
x=sin(2*pi*f*t);    % 1 Hz sine wave
y=cos(2*pi*f*t);    % 1 Hz cosine wave
z=[ones(1,N/2),-ones(1,N/2)];  % 1 Hz square wave
[rxx,lag1]=xcorr(x,x);
[rxy,lag2]=xcorr(x,y);
[rxz,lag3]=xcorr(x,z);

subplot(211)
plot(t,x,'r', 'LineWidth',1.5);
hold on
plot(t,y,'b', 'LineWidth',1.5);
plot(t,z,'k', 'LineWidth',1.5);
legend('sine wave','cosine wave','square wave');
hold off

subplot(212)
plot(lag1,rxx, 'r', 'LineWidth',1.5);
hold on;
plot(lag2,rxy, 'b', 'LineWidth',1.5);
plot(lag3,rxz, 'k', 'LineWidth',1.5);
grid
hold off
legend('rxx','rxy','rxz');