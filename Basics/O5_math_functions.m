clc;
clear all;

x = pi/3;   % 60 degrees in radians

%% Trigonometric Functions
cos_x = cos(x);      % Cosine of x
sin_x = sin(x);      % Sine of x
tan_x = tan(x);      % Tangent of x

fprintf('cos(%f) = %f\n', x, cos_x);
fprintf('sin(%f) = %f\n', x, sin_x);
fprintf('tan(%f) = %f\n\n', x, tan_x);

%% Inverse Trigonometric Functions
% Values must be in the range [-1, 1] for acos and asin

y = 0.5;

acos_y = acos(y);    % Inverse cosine (result in radians)
asin_y = asin(y);    % Inverse sine (result in radians)
atan_y = atan(y);    % Inverse tangent (result in radians)

fprintf('acos(%f) = %f radians\n', y, acos_y);
fprintf('asin(%f) = %f radians\n', y, asin_y);
fprintf('atan(%f) = %f radians\n\n', y, atan_y);

%% Square Root Function
a = 25;
sqrt_a = sqrt(a);    % Square root of a

fprintf('sqrt(%d) = %f\n\n', a, sqrt_a);

%% Logarithmic Functions
b = 10;

ln_b = log(b);       % Natural logarithm (base e)
log10_b = log10(b);  % Common logarithm (base 10)

fprintf('log(%f) = %f (Natural Log)\n', b, ln_b);
fprintf('log10(%f) = %f (Base 10 Log)\n\n', b, log10_b);

%% Exponential Function
c = 2;
exp_c = exp(c);      % Exponential of c (e^c)

fprintf('exp(%f) = %f\n', c, exp_c);
