clc; clear; close all;

syms n z a w

disp('--- Lab Example: f(n) = exp(-a*n) ---');
f = exp(-a*n);
Z1 = ztrans(f);
Z1s = simplify(Z1);
pretty(Z1s);
disp('Inverse Z:'); pretty(iztrans(Z1s));

disp('--- f(n) = exp(a*n) ---');
f1 = exp(a*n);
Z2 = ztrans(f1);
Z2s = simplify(Z2);
pretty(Z2s);
disp('Inverse Z:'); pretty(iztrans(Z2s));

disp('--- f(n) = n*exp(-a*n) ---');
f2 = n * exp(-a*n);
Z3 = ztrans(f2);
Z3s = simplify(Z3);
pretty(Z3s);
disp('Inverse Z:'); pretty(iztrans(Z3s));

disp('--- f(n) = sin(w*n) ---');
f3 = sin(w*n);
Z4 = ztrans(f3);
Z4s = simplify(Z4);
pretty(Z4s);
disp('Inverse Z:'); pretty(iztrans(Z4s));

disp('--- f(n) = cos(w*n) ---');
f4 = cos(w*n);
Z5 = ztrans(f4);
Z5s = simplify(Z5);
pretty(Z5s);
disp('Inverse Z:'); pretty(iztrans(Z5s));

disp('--- f(n) = exp(-a*n)*sin(w*n) ---');
f5 = exp(-a*n) * sin(w*n);
Z6 = ztrans(f5);
Z6s = simplify(Z6);
pretty(Z6s);
disp('Inverse Z:'); pretty(iztrans(Z6s));

disp('--- Inverse Z: F = (-4z^2 + 8z) / (z^2 + 6z + 8) ---');
F1 = (-4*z^2 + 8*z) / (z^2 + 6*z + 8);
disp('Inverse:'); pretty(iztrans(F1));

disp('--- Inverse Z: F = z^3 / ((z+1)*(z-1)^2) ---');
F2 = z^3 / ((z+1)*(z-1)^2);
disp('Inverse:'); pretty(iztrans(F2));

disp('--- Inverse Z: F = z^3 / (z^2 - 4z + 1) ---');
F3 = z^3 / (z^2 - 4*z + 1);
disp('Inverse:'); pretty(iztrans(F3));

disp('--- Inverse Z: F = (2z^3+3z^2) / ((z+1)*(z+0.5)*(z-2.5)) ---');
F4 = (2*z^3 + 3*z^2) / ((z+1)*(z+0.5)*(z-2.5));
disp('Inverse:'); pretty(iztrans(F4));

disp('--- Experimental Task 2a: F = z / ((z-1)*(z-2)) ---');
F_task2a = z / ((z-1)*(z-2));
disp('Inverse:'); pretty(iztrans(F_task2a));

disp('--- Experimental Task 2b: F = z^2 / ((z-1)*(z-0.2)) ---');
F_task2b = z^2 / ((z-1)*(z-0.2));
disp('Inverse:'); pretty(iztrans(F_task2b));
