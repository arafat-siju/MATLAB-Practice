clc; clear; close all;

t = linspace(0,10,1000);
fs = 1;

% Signal
x = sin(2*pi*fs*t) + cos(2*pi*fs*t);

% Call function
O2_components(t,x);