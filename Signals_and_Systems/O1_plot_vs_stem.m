% Demonstrates continuous (plot) and discrete (stem) plotting

clc; clear;

x = 1:10;
y = rand(1,10);

figure(1)

subplot(121)
plot(x,y,'LineWidth',2)
title('Connuous Plot')
xlabel('x'); ylabel('y')

subplot(122)
stem(x,y,'LineWidth',2)
title('Discrete Plot')
xlabel('x'); ylabel('y')
