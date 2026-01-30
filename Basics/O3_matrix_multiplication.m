clc;
clear all;

% Multiplication of matrix

%% element wise multiplication of A and B matrix: A .* B
mat_A = randi([1,9],[3,5])
mat_B = randi([1,9],[3,5])
element_wise = mat_A .* mat_B % Matrix's size should be same



%% dot multiplication of A and B matrix: A*B
mat_AAA = randi([1,9],[2,3])
mat_BBB = randi([1,9],[3,4])
dot_multiplication = mat_AAA * mat_BBB  % size will be (a,b), (b,c)
