clc; clear; close all;

disp('--- Lab Example: X(z) = (z^2 - 2.5z + 1) / (z^2 - 0.75z + 0.075) ---');
num = [1 -2.5 1];
den = [1 -0.75 0.075];
z_tf = tf(num, den, 0.02);
disp(z_tf);
[zeros_tf, poles_tf, gain] = tf2zpk(num, den);
disp('Zeros:'); disp(zeros_tf);
disp('Poles:'); disp(poles_tf);
disp('Gain:'); disp(gain);
[r, p, k] = residuez(num, den);
disp('Residues:'); disp(r);
disp('Poles from residuez:'); disp(p);
disp('Direct Terms:'); disp(k);

figure(1);
zplane(num, den);
title('Pole-Zero Plot: Lab Example');

if all(abs(poles_tf) < 1)
    disp('Lab Example: System is STABLE.');
else
    disp('Lab Example: System is UNSTABLE.');
end

disp('--- Extra Example 1: H(z) = (z + 0.5) / (z^2 - 0.5z + 0.5) ---');
num2 = [1 0.5];
den2 = [1 -0.5 0.5];
[~, p2, ~] = tf2zpk(num2, den2);
figure(2); zplane(num2, den2); title('Pole-Zero Plot: Extra Example 1');
if all(abs(p2) < 1)
    disp('Extra Example 1: System is STABLE.');
else
    disp('Extra Example 1: System is UNSTABLE.');
end

disp('--- Extra Example 2: H(z) = z / (z^2 - 1.5z + 1) ---');
num3 = [1 0];
den3 = [1 -1.5 1];
[~, p3, ~] = tf2zpk(num3, den3);
figure(3); zplane(num3, den3); title('Pole-Zero Plot: Extra Example 2 (Unstable)');
if all(abs(p3) < 1)
    disp('Extra Example 2: System is STABLE.');
else
    disp('Extra Example 2: System is UNSTABLE.');
end

disp('--- Experimental Task 3a: F = (2z^3+3z^2-3.2z-1.6)/(2z^3+2.5z^2+0.25z-0.25) ---');
num_t1 = [2 3 -3.2 -1.6];
den_t1 = [2 2.5 0.25 -0.25];
[~, p_t1, ~] = tf2zpk(num_t1, den_t1);
disp('Poles:'); disp(p_t1);
figure(4); zplane(num_t1, den_t1); title('Pole-Zero: Task 3a');
if all(abs(p_t1) < 1)
    disp('Task 3a: System is STABLE.');
else
    disp('Task 3a: System is UNSTABLE.');
end

disp('--- Experimental Task 3b: F = (2z^3-3.5z^2-2.5z+3)/(2z^3-2z^2-0.5z+0.5) ---');
num_t2 = [2 -3.5 -2.5 3];
den_t2 = [2 -2 -0.5 0.5];
[~, p_t2, ~] = tf2zpk(num_t2, den_t2);
disp('Poles:'); disp(p_t2);
figure(5); zplane(num_t2, den_t2); title('Pole-Zero: Task 3b');
if all(abs(p_t2) < 1)
    disp('Task 3b: System is STABLE.');
else
    disp('Task 3b: System is UNSTABLE.');
end
