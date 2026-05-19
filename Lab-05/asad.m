clc; clear; close all;

R1 = 100;
R2 = 100;
L1 = 0.22e-6; 
L2 = 0.22e-6;      
C  = 1e-6;  

A = [ -R1/L1, 0, -1/L1 ; 0, -R2/L2, 1/L2; 1/C, -1/C, 0];

B = [1/L1; 0; 0];

C_mat = [0 0 1];

D = 0;

sys = ss(A,B,C_mat,D);


figure(1)
step(sys)
title('Step Response')


figure(2)
bode(sys)
title('Bode Plot')


if isstable(sys)
    disp('System is Stable')
else
    disp('System is Not Stable')
end


Co = ctrb(sys);
if det(Co) == 0
    disp('Not Controllable')
else
    disp('Controllable')
end


Ob = obsv(sys);
if det(Ob) == 0
    disp('Not Observable')
else
    disp('Observable')
end