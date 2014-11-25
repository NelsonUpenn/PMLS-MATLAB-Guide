% solveODE.m: MATLAB R2014a:  illustrate solution of an ODE
clear all; close all
y0 = [1, 2]; % solve equation for two different initial values
t0 = 0;      % starting time
tfinal = 100;% ending time
kvalue = 0.05;
[t, y] = ode45(@expGrowth, [t0, tfinal], y0);
plot(t, y(:, 1), 'og'); hold('on');
plot(t, y(:, 2), 'or'); 
plot(t, y0(1)*exp(kvalue*t), 'g');    %check against explicit solution for y0 = 1
plot(t, y0(2)*exp(kvalue*t), 'r');    %check against explicit solution for y0 = 2
hold('off');
