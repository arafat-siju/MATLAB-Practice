clc; clear; close all;

th=0:.01:4;
b = [1];
a = [1 3 2];
h=impulse(b,a,th);
tx=[0:0.01:4];
x=[ones(1,length(tx))];
[y ty]=convint(x,tx,h,th);

subplot(211)
plot(th,h,'r' , 'LineWidth',1.5)
xlabel('Time')
ylabel('Amplitude');
title('Impulse response of the system');

subplot(212)
plot(ty,y,'r', 'LineWidth',1.5);
xlabel('Time')
ylabel('Amplitude');
title('Step response of the system');