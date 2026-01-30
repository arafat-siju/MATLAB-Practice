clc;
clear all;

% Division of matrix

mat_A = randi([1,9],[4,4])
mat_B = randi([1,9],[4,4])

%% right division of matrix A with matrix B: (𝐴𝐵^-1): A/B
right_division = mat_A / mat_B

%% left division of matrix A with matrix B: (𝐴^−1𝐵): A\B
left_division = mat_A \ mat_B


%% element wise division of matrix A with matrix B: A .\ B
element_division = mat_A .\ mat_B