clc;
clear all;

m = [3,4,5;6,4,8]

%% transpose matrix
transpose = m'

%% Size of a matrix
s = size(m)



%% Accessing Elements
x = randi([1,9], [6,8])
element = x(5,2)
horizontal_elements = x([1],[1:2:8]) % starting : gap : ending
verticle_elements = x([1:4],[3]) % starting : gap : ending



%% Accessing Block
yyy = randi([1,9], [6,8])
block = yyy([3,5,6], [1,2,4,6])
another_block = yyy([2:2:end],[3:7])


%% Inverse Matrix
sq_mtx = randi([1,9],[4,4]) % for inverse, matrix must be square
inv(sq_mtx)


%% Linear spacing
mm = linspace(1,15,6) % linspace(starting, ending, number of elements)