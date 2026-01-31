% Using hold on for multiple signals

clc; clear all;

x = 1:10;
y1 = rand(1,10);
y2 = rand(1,10);
y3 = rand(1,10);

figure(1)

subplot(121)
plot(x,y1,'LineWidth',2)
title('One Signal')
xlabel('Time'); 
ylabel('Amplitude');


subplot(122)
plot(x,y2,'LineWidth',1)
title('Single Signal')
xlabel('Time');
ylabel('Amplitude');
hold on
plot(x,y3,'LineWidth',1)
title('Two Signals Using Hold On')
hold off