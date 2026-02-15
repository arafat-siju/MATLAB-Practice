% Using hold on for multiple signals

clc; clear all;

%% First Figure
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
xlabel('Time');
ylabel('Amplitude');
hold on
plot(x,y3,'LineWidth',1)
title('Two Signals Using Hold On')
hold off



%% Second Figure
figure(2)

m = 1:10;
n = rand(1,10);
p = rand(1,10);
q = rand(1,10);
r = rand(1,10);

subplot(224)
xlabel("x axis");
ylabel('y axis');
hold on
plot(m,n, 'LineWidth',1)
plot(m,p, 'LineWidth',1)
plot(m,q,'LineWidth',1)
plot(m,r,'LineWidth',1)
hold off


subplot(223)
plot(m,n,'r-','LineWidth',1)   % red solid
hold on
plot(m,p,'b--','LineWidth',1)  % blue dashed
plot(m,q,'g:','LineWidth',1)   % green dotted
plot(m,r,'k-.','LineWidth',1)  % black dash-dot
xlabel("x axis");
ylabel("y axis");
legend('m vs n','m vs p','m vs q','m vs r')
hold off


subplot(222)
plot(m,n,'LineWidth',1)
hold on
plot(m,p,'LineWidth',1)
plot(m,q,'LineWidth',1)
plot(m,r,'LineWidth',1)
xlabel("x axis");
ylabel("y axis");
legend('m vs n','m vs p','m vs q','m vs r')
hold off


subplot(221)
plot(m,n,'-o','LineWidth',1)   % circles
hold on
plot(m,p,'-s','LineWidth',1)   % squares
plot(m,q,'-d','LineWidth',1)   % diamonds
plot(m,r,'-^','LineWidth',1)   % triangles
xlabel("x axis");
ylabel("y axis");
legend('m vs n','m vs p','m vs q','m vs r')
hold off