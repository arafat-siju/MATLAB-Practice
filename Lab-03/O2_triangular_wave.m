clc; close all;
for i=1:4;
    N=1000;             % Number of points in one cycle
    t=linspace(0,1,N);
    sum=0;
    M=2^i;              % How many harmonics used in particular plot
    sign=-1;            % 'sign' variables to keep track the sign of sine term
    for j=1:2:M;
        sign=sign*(-1);
        sum=sum+(sign*8)/(pi*pi)*sin(2*pi*j*t)/(j^2);
    end
    subplot(2,2,i);
    plot(t,sum,'g');
    title(['Number of Harmonics used:',num2str(M)]);
    hold on
    %ideal case
    y1=linspace(0,1,N/4);      % First (1/4)th signal
    y2=linspace(1,-1,N/2);     % Middle (1/2) signal
    y3=linspace(-1,0,N/4);     % Last (1/4)th signal
    y=[y1 y2 y3];
    subplot(2,2,i);
    plot(t,y,'r','Linewidth',2)
    %error signal
    subplot(2,2,i);
    error=abs(sum-y);
    plot(t,error,'b');
    axis([0 1 -1 1]);grid
    legend('Given shape','Fourier representation','Error');
end