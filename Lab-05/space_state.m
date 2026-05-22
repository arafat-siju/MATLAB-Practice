clc; clear; close all;

R1 = 1;
R2 = 2;
L1 = 1;
L2 = 1;
C  = 0.1;

A = [ -R1/L1      0        1/L1;
        0      -R2/L2      1/L2;
      -1/C      -1/C        0   ];

B = [ -1/L1;
       0;
       0 ];


Cm = [0 R2 0];

D = 0;

sys = ss(A,B,Cm,D);

disp('State Space Model:')
sys;

tf_sys = tf(sys);

disp('Transfer Function:')
tf_sys;

figure;
step(sys);
grid on;
title('Step Response');