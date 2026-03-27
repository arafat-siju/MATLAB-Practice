% Function to find even and odd components of a signal

function [xe,xo] = O2_components(t,x)

x_reverse = fliplr(x);   % reverse the signal (time reversal)

xe = 0.5*(x + x_reverse); % even component
xo = 0.5*(x - x_reverse); % odd component


% Plot signals
subplot(3,1,1)
plot(t,x,"r")
title('Original Signal x(t)')
grid on

subplot(3,1,2)
plot(t,xe,"g")
title('Even Component')
grid on

subplot(3,1,3)
plot(t,xo,"b")
title('Odd Component')
grid on

end