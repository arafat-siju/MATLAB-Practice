% Using subplot and hold on for multiple signals

clc; clear;

x = 1:10;
y1 = rand(1,10);
y2 = rand(1,10);
y3 = rand(1,10);

figure(1)

subplot(121)
plot(x,y1,'LineWidth',2)
hold on
plot(x,y2,'LineWidth',2)
title('Two Signals Using Hold On')
xlabel('Time'); ylabel('Amplitude')
hold off

subplot(122)
plot(x,y3,'LineWidth',2)
title('Single Signal')
xlabel('Time'); ylabel('Amplitude')
