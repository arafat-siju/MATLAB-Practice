clc; clear; close all;

plotindex=1;
for i=4:7
    N=1000;             % Number of points in one cycle
    t=linspace(0,pi,N);
    sum=0.504;
    M=2^i;              % How many harmonics used in particular plot
    for j=1:M;
        sum=sum+((0.504*2)/(1+16*j^2))*(cos(2*j*t)+4*j*sin(2*j*t));
    end
    subplot(2,2,plotindex);
    plot(t,sum,'r');
    title(['Number of Harmonics used:',num2str(M)]);
    hold on
    %ideal case
    y=exp(-.5*t);
    subplot(2,2,plotindex);
    plot(t,y,'g','Linewidth',2)
    hold on
    subplot(2,2,plotindex);
    error=abs(sum-y);
    plot(t,error,'k');
    xlim([0,3]);grid
    legend('Fourier representation','Ideal shape','Error');
    plotindex=plotindex+1;
end