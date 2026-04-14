clc;clear all;close all;

tx=[0:0.01:4];
x=ones(1,length(tx));
th=[0:0.01:4];
h=ones(1,length(th));
[y ty]=convint(x,tx,h,th);

figure;
plot(ty,y, 'LineWidth',1.5, 'Color',[0.91, 0.51, 0.1]);
xlabel('Time');
ylabel('Amplitude');
axis([0 8 0 4]);