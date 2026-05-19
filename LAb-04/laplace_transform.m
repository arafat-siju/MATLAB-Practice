clc; clear all; close all;

syms t s a w

disp('--- Example from Lab: f(t) = exp(-a*t) ---');
f = exp(-a*t);
F = laplace(f);
F_simplified = simplify(F);
pretty(F_simplified);
f_back = ilaplace(F_simplified);
disp('Inverse Laplace:'); disp(f_back);

disp('--- Extra Example 1: f(t) = sin(w*t) ---');
f1 = sin(w*t);
F1 = laplace(f1);
F1s = simplify(F1);
pretty(F1s);
disp('Inverse:'); disp(ilaplace(F1s));

disp('--- Extra Example 2: f(t) = t*sin(w*t) ---');
f2 = t * sin(w*t);
F2 = laplace(f2);
F2s = simplify(F2);
pretty(F2s);
disp('Inverse:'); disp(ilaplace(F2s));

disp('--- Extra Example 3: f(t) = t^3 + 3t^2 - 6t + 4 ---');
f3 = t^3 + 3*t^2 - 6*t + 4;
F3 = laplace(f3);
F3s = simplify(F3);
pretty(F3s);
disp('Inverse:'); disp(ilaplace(F3s));

disp('--- Extra Example 4: f(t) = cos(w*t)^3 ---');
f4 = cos(w*t)^3;
F4 = laplace(f4);
F4s = simplify(F4);
pretty(F4s);
disp('Inverse:'); disp(ilaplace(F4s));

disp('--- Extra Example 5: f(t) = t*exp(-a*t) ---');
f5 = t * exp(-a*t);
F5 = laplace(f5);
F5s = simplify(F5);
pretty(F5s);
disp('Inverse:'); disp(ilaplace(F5s));

disp('--- Extra Example 6: f(t) = u(t) unit step (Heaviside) ---');
f6 = heaviside(t);
F6 = laplace(f6);
pretty(F6);
disp('Inverse:'); disp(ilaplace(F6));

disp('--- Experimental Task 1a: f(t) = t*sin(a*t) ---');
f_task1a = t * sin(a*t);
F_task1a = laplace(f_task1a);
F_task1as = simplify(F_task1a);
pretty(F_task1as);
disp('Inverse:'); disp(ilaplace(F_task1as));

disp('--- Experimental Task 1b: f(t) = (1 - exp(t))/t ---');
f_task1b = (1 - exp(t)) / t;
F_task1b = laplace(f_task1b);
F_task1bs = simplify(F_task1b);
pretty(F_task1bs);
disp('Inverse:'); disp(ilaplace(F_task1bs));
