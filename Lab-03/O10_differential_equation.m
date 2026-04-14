clc; close all; clear;

y = dsolve('D2y+3*Dy+2*y=-30*exp(-3*t)', 'y(0)=0', 'Dy(0)=5', 't');
disp (['y(t) = (', char(y), ')u(t)']);