clc;
clear all;


%% for variable = initial_value : increment : final_value
%        code 1
%  end

for i = 1 : 2 : 10
    disp(i)
end

%% while loop

i = 0;
while (i <= 7)
    fprintf('%d \n', i)
    i = i + 2;
end