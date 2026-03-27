clc; clear; close all;

fs = 1000;
f = 2;

t = 0:1/fs:1;

x = sin(2*pi*f*t);

xmin = min(x)
xmax = max(x)

xmean = mean(x)

xvar = var(x)

xstd = std(x)

RMS = sqrt(mean(x.^2))