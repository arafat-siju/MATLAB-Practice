clc; clear; close all;

tx=[0:0.01:10];
tx1=[0:0.01:3];
tx2=[0:0.01:5];
x=[zeros(1,length(tx1)) ones(1,(length(tx)-length(tx1)-length(tx2))) zeros(1,length(tx2))];
th=[0:0.01:10];
h1 =3* exp(-3*th);
[y1 ty1]=convint(x,tx,h1,th);
h2 =(2)* exp(-2*th);
[y ty]=convint(y1,ty1,h2,th);
%using equivalence
[he, the]=convint(h1,th,h2,th);
[yy, tyy]=convint(x,tx,he,the);

figure;
subplot(611)
plot(tx,x, 'LineWidth',1.5 , 'Color',[0.101, 0.55, 0.066])
xlabel('Time')
ylabel('Amplitude');
title('input x(t)')
ylim([-.05 1.5])

subplot(612)
plot(th,h1, 'LineWidth',1.5 , 'Color',[0.101, 0.55, 0.066])
title('impulse response of first system, h1(t)')
xlabel('Time')
ylabel('Amplitude');

subplot(613)
plot(ty1,y1, 'LineWidth',1.5 , 'Color',[0.101, 0.55, 0.066]);
xlabel('Time')
ylabel('Amplitude');
title('intermediate output, y1(t)')

subplot(614)
plot(th, h2, 'LineWidth',1.5 , 'Color',[0.101, 0.55, 0.066])
title('impulse response of second system, h2(t)')
xlabel('Time')
ylabel('Amplitude');

subplot(615)
plot(ty,y, 'LineWidth',1.5 , 'Color',[0.101, 0.55, 0.066])
xlabel('Time')
ylabel('Amplitude');
title('final output, y(t)')

subplot(616)
plot(tyy,yy, 'LineWidth',1.5 , 'Color',[0.101, 0.55, 0.066])
xlabel('Time')
ylabel('Amplitude');
title('final output(using equiavalence), y(t)')