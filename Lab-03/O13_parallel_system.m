clc; clear; close all;

tx=[0:0.01:10];
tx1=[0:0.01:3];
tx2=[0:0.01:5];
x=[zeros(1,length(tx1)) ones(1,(length(tx)-length(tx1)-length(tx2))) zeros(1,length(tx2))];
th=[0:0.01:10];
h1 =3* exp(-3*th);
h2 =0.5* exp(-0.5*th);
[y1 ty1]=convint(x,tx,h1,th);
[y2 ty2]=convint(x,tx,h2,th);
y=y1+y2;
%using equivalence
h=h1+h2;
[yy, tyy]=convint(x,tx,h,th);

figure;
subplot(611)
plot(tx,x, 'LineWidth',1.5 , 'Color',[0.73, 0.2117, 0.9])
ylabel('Amplitude');
title('input x(t)')
ylim([-.05 1.5])

subplot(712)
plot(th,h1, 'LineWidth',1.5 , 'Color',[0.73, 0.2117, 0.9])
title('impulse response of first system, h1(t)')
ylabel('Amplitude');

subplot(713)
plot(ty1,y1, 'LineWidth',1.5 , 'Color',[0.73, 0.2117, 0.9]);
ylabel('Amplitude');
title('output of first system, y1(t)')

subplot(714)
plot(th, h2, 'LineWidth',1.5 , 'Color',[0.73, 0.2117, 0.9])
title('impulse response of second system, h2(t)')
ylabel('Amplitude');

subplot(715)
plot(ty2,y2, 'LineWidth',1.5 , 'Color',[0.73, 0.2117, 0.9])
ylabel('Amplitude');
title('output of second system, y2(t)')

subplot(716)
plot(ty2,y, 'LineWidth',1.5 , 'Color',[0.73, 0.2117, 0.9])
ylabel('Amplitude');
title('final output, y(t)')

subplot(717)
plot(tyy,yy, 'LineWidth',1.5 , 'Color',[0.73, 0.2117, 0.9])
ylabel('Amplitude');
title('final output(using quivalent circuit), y(t)')