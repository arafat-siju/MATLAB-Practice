% continuous (plot) and discrete (stem) plotting

clc; clear all;

x = 1:10;
y = rand(1,10);

figure(1)

%% Continous graph
subplot(121)
plot(x,y,'LineWidth',2)
title('Connuous Plot')
xlabel('x'); ylabel('y')

%% Discrete graph
subplot(122)
stem(x,y,'LineWidth',2)
title('Discrete Plot')
xlabel('x'); ylabel('y')
