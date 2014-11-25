% N Charles, 6/2014  quadsolutions.m  MATLAB R2014a: Tabulate some
% quadratic function solutions
clear all
%% parameters:
coef_b = 2; coef_c = 3;   % parameter values for b, c
step_a = 0.5;% stepping value for a
%% initialize
coef_a = -1; 
%% find solutions
while (coef_b^2 - 4*coef_a*coef_c > 0),  % check whether solution will be real
    (-coef_b + sqrt(coef_b^2 - 4*coef_a*coef_c))/(2*coef_a),
    coef_a = coef_a + 0.5,
end;
disp('done!')
