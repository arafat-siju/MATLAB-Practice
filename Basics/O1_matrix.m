clear all;
clc;

% Columns are separated by comma (,) or space.
% Rows are separated by semicolon (;)

a = [12 34 23]
b = [4;97;21]
c = [1 2 3;4 5 6;7 8 9]

zeros(2,4)  % only zeros
ones(3,5)  % only ones 


x = rand(3,4)  % random numbers of (row × column) size

y = randn(3,4) % random numbers with Gaussian distribution of (m × n) size

z = randi([1,5], [4,5]) % integer numbers in between (imin, imax) of (m × n) size

