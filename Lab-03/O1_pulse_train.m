clc;
clear all;
N=1000;
t=linspace(0,1,N);
A=5;
res=A/2;
M=input('Number of harmonics=')
for i=1:2:M
    e=(2*A/pi)*(1/i)*sin(i*2*pi*1*t);
    res=res+e;
    subplot(511)
    plot(t,e);
    hold on
    subplot(512)
    plot(t,res);
    hold on
end
hold off
subplot(511)
ylabel('Amplitude')
xlabel({'time'})
title('sinusoidal signals')
subplot(512)
ylabel('Amplitude')
xlabel({'time'})
title('summation of sinusoidal signals')
subplot(513)
plot(t,res,'k','linewidth',2)
ylabel('Amplitude')
xlabel({'time'})
title(['Resulatant pulse train with ' num2str(M) ' harmonics'])
%ideal pulse train.
y1=A*ones(1,N/2);
y2=zeros(1,N/2);
y=[y1 y2];
subplot(514)
plot(t, y, 'k','linewidth',2)
ylabel('Amplitude')
xlabel({'time'})
ylim([-1 A+1]);
title('Ideal pulse train')
%error signal
subplot(515)
plot(t, (res-y), 'k','linewidth',2)
ylabel('Amplitude')
xlabel({'time'})
title('Error signal')