clc; clear;

n = -10:10;

x1 = rand(1,length(n));
x2 = rand(1,length(n));
a = 2; b = 3;

%% System 1: y[n] = n*(x[n])^2
y1 = n .* (x1.^2);
y2 = n .* (x2.^2);

% Test linearity
lhs1 = n .* ((a*x1 + b*x2).^2);
rhs1 = a*y1 + b*y2;

disp('System 1 (y[n] = n*x[n]^2)');
disp(['Linearity Error: ', num2str(norm(lhs1 - rhs1))]);

% Time invariance test
shift = 2;
x_shift = [zeros(1,shift), x1(1:end-shift)];
y_shift1 = n .* (x_shift.^2);

y1_shifted = [zeros(1,shift), y1(1:end-shift)];

disp(['Time Invariance Error: ', num2str(norm(y_shift1 - y1_shifted))]);

%% System 2: y[n] = n*x[n]
y1 = n .* x1;
y2 = n .* x2;

lhs2 = n .* (a*x1 + b*x2);
rhs2 = a*y1 + b*y2;

disp(' ');
disp('System 2 (y[n] = n*x[n])');
disp(['Linearity Error: ', num2str(norm(lhs2 - rhs2))]);

% Time invariance
y_shift2 = n .* x_shift;
y2_shifted = [zeros(1,shift), y1(1:end-shift)];

disp(['Time Invariance Error: ', num2str(norm(y_shift2 - y2_shifted))]);