clc; clear; close all;

% Coefficient matrix
A = [1 0 0;
     2 2 0;
     3 3 3];

% Constant matrix
b = [2 2 2]';

% Solution
x = inv(A)*b;

disp('Equation: Ax = b')

A
b
x