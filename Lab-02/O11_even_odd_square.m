clc; 
clear all;
t = linspace(-5, 5, 1000);
x = double(t >= 0); % Unit step as square-like signal

x_reverse = fliplr(x);
xe = 0.5*(x + x_reverse);
xo = 0.5*(x - x_reverse);

subplot(3,1,1); 
plot(t,x,'b'); 
title('Original Signal'); 
grid on;

subplot(3,1,2);
plot(t,xe,'g'); 
title('Even Component'); 
grid on;

subplot(3,1,3);
plot(t,xo,'r'); 
title('Odd Component'); 
grid on;