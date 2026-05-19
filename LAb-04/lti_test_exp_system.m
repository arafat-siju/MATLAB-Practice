clc; clear; close all;

x1 = [0 1 2 3 0 0 0];
x2 = [0 0 1 1 1 0 0];
a = 2;
b = 3;
len = length(x1);
tx = 0:1:len-1;
th = 0:1:4;
h = 3 * exp(-3 * th);

[y1, ty1] = convint(x1, tx, h, th);
[y2, ty2] = convint(x2, tx, h, th);

LHS = a * y1 + b * y2;
x3 = a * x1 + b * x2;
[y3, ty3] = convint(x3, tx, h, th);
RHS = y3;

LHS = round(LHS, 4);
RHS = round(RHS, 4);

figure(1);
subplot(2,2,1); stem(tx, x1); xlabel('Time'); ylabel('Amplitude'); title('First Input x1(n)');
subplot(2,2,2); stem(tx, x2); xlabel('Time'); ylabel('Amplitude'); title('Second Input x2(n)');
subplot(2,2,3); stem(ty1, LHS); grid; xlabel('Time'); ylabel('Amplitude'); title('LHS: a*y1 + b*y2');
subplot(2,2,4); stem(ty3, RHS); grid; xlabel('Time'); ylabel('Amplitude'); title('RHS: y for (a*x1+b*x2)');

if LHS == RHS
    disp('System is Linear.');
else
    disp('System is Non-Linear.');
end

yshifted_output = shift(y1, 2);
xshifted_input = shift(x1, 2);
[yshifted_output2, ty4] = convint(xshifted_input, tx, h, th);

yshifted_output = round(yshifted_output, 4);
yshifted_output2 = round(yshifted_output2, 4);

figure(2);
subplot(2,2,1); stem(tx, x1); title('Input x1(n)');
subplot(2,2,2); stem(ty1, y1); title('Output y1(n)');
subplot(2,2,3); stem(ty1, yshifted_output); title('Shifted Output y1(n-2)');
subplot(2,2,4); stem(ty4, yshifted_output2); title('Output for Shifted Input x1(n-2)');

if yshifted_output == yshifted_output2
    disp('System is Time Invariant.');
else
    disp('System is NOT Time Invariant.');
end

x1_extra = [1 2 1 0 0 0 0];
x2_extra = [0 1 0 1 0 0 0];
a_extra = 0.5;
b_extra = 1.5;

[ye1, tye1] = convint(x1_extra, tx, h, th);
[ye2, tye2] = convint(x2_extra, tx, h, th);
LHS_extra = round(a_extra*ye1 + b_extra*ye2, 4);
x3_extra = a_extra*x1_extra + b_extra*x2_extra;
[ye3, tye3] = convint(x3_extra, tx, h, th);
RHS_extra = round(ye3, 4);

figure(3);
subplot(1,2,1); stem(tye1, LHS_extra); grid; title('Extra Example LHS');
subplot(1,2,2); stem(tye3, RHS_extra); grid; title('Extra Example RHS');

if LHS_extra == RHS_extra
    disp('Extra Example: System is Linear.');
else
    disp('Extra Example: System is Non-Linear.');
end
