%{
  2. Plot and label each of the following signals
    i. 𝑥(2𝑛)
    ii. 𝑥(−𝑛)
    iii. 𝑥(𝑛+2)
    iv. 𝑥(−𝑛+2)
    v. 𝑥(𝑛−2)
%}


clc; clear all;

%% (i) x(2n)
n = -10:10;
x = sin(n);

y = sin(2*n);

figure(1)
subplot(3,2,1)
stem(n,y, 'b', 'LineWidth',1.5 )
title('x(2n)')
xlabel('n')
ylabel('Amplitude')
%% (ii) x(-n)
n = -10:10;
x = sin(n);

y = sin(-n);

figure(1)
subplot(3,2,2)
stem(n,y, 'r', 'LineWidth',1.5)
title('x(-n)')
xlabel('n')
ylabel('Amplitude')
%% (iii) x(n+2)
n = -10:10;
x = sin(n);

y = sin(n+2);

figure(1)
subplot(3,2,3)
stem(n,y, 'c', 'LineWidth',1.5)
title('x(n+2)')
xlabel('n')
ylabel('Amplitude')
%% (iv) x(-n+2)
n = -10:10;
x = sin(n);

y = sin(-n+2);

figure(1)
subplot(3,2,4)
stem(n,y, 'k', 'LineWidth',1.5)
title('x(-n+2)')
xlabel('n')
ylabel('Amplitude')
%% (v) x(n-2)
n = -10:10;
x = sin(n);

y = sin(n-2);

figure(1)
subplot(3,2,5)
stem(n,y, 'm', 'LineWidth',1.5)
title('x(n-2)')
xlabel('n')
ylabel('Amplitude')