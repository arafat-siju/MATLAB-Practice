function y = shift_signal(x,k)

if (k > 0)
    % Right shift (delay)
    y = [zeros(1,abs(k)) x(1:end-abs(k))];
else
    % Left shift (advance)
    y = [x((abs(k)+1):end) zeros(1,abs(k))];
end

end


clc;
clear;

n = -5:1:25;
x = [zeros(1,5) ones(1,26)];

k = input('Enter shifting unit: ');

y = shift_signal(x,k);

figure(1);
subplot(211)
stem(n,x);
title('Original Unit Step Signal');
grid on

subplot(212)
stem(n,y)
title('Shifted Unit Step Signal');
grid on