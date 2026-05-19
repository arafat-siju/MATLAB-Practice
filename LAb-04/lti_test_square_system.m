clc; clear; close all;

x1 = [0 1 2 3 0 0 0];
x2 = [0 0 1 1 1 0 0];
a = 2;
b = 3;
len = length(x1);
tx = 0:1:len-1;

y1 = power(x1, 2);
y2 = power(x2, 2);

LHS = a * y1 + b * y2;
x3 = a * x1 + b * x2;
y3 = power(x3, 2);
RHS = y3;

LHS = round(LHS, 4);
RHS = round(RHS, 4);
ty = 0:(length(y1)-1);

figure(1);
subplot(2,2,1); stem(tx, x1); xlabel('Time'); ylabel('Amplitude'); title('First Input x1(n)');
subplot(2,2,2); stem(tx, x2); xlabel('Time'); ylabel('Amplitude'); title('Second Input x2(n)');
subplot(2,2,3); stem(ty, LHS); grid; xlabel('Time'); ylabel('Amplitude'); title('LHS: a*y1 + b*y2');
subplot(2,2,4); stem(ty, RHS); grid; xlabel('Time'); ylabel('Amplitude'); title('RHS: y for (a*x1+b*x2)^2');

if LHS == RHS
    disp('System y(n)=x(n)^2 is Linear.');
else
    disp('System y(n)=x(n)^2 is Non-Linear.');
end

yshifted_output = shift(y1, 2);
xshifted_input = shift(x1, 2);
yshifted_output2 = power(xshifted_input, 2);

yshifted_output = round(yshifted_output, 4);
yshifted_output2 = round(yshifted_output2, 4);

figure(2);
subplot(2,2,1); stem(tx, x1); title('Input x1(n)');
subplot(2,2,2); stem(ty, y1); title('Output y1(n) = x1(n)^2');
subplot(2,2,3); stem(ty, yshifted_output); title('Shifted Output y1(n-2)');
subplot(2,2,4); stem(ty, yshifted_output2); title('Output for Shifted Input x1(n-2)^2');

if yshifted_output == yshifted_output2
    disp('System y(n)=x(n)^2 is Time Invariant.');
else
    disp('System y(n)=x(n)^2 is NOT Time Invariant.');
end

x_extra = [1 3 2 4 0 0 0];
y_extra = power(x_extra, 2);
a_extra = 4;
y_scaled_input = power(a_extra * x_extra, 2);
y_scaled_output = a_extra * y_extra;

figure(3);
subplot(1,2,1); stem(tx, y_scaled_input); title('Output of Scaled Input (a*x)^2');
subplot(1,2,2); stem(tx, y_scaled_output); title('Scaled Output a*x^2');
if round(y_scaled_input,4) == round(y_scaled_output,4)
    disp('Homogeneity holds (Linear in this test).');
else
    disp('Homogeneity fails (Non-Linear confirmed).');
end
