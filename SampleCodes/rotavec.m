function newvec = rotavec(oldvec, theta)
% MH Flambeau 8/2014 file  rotavec.m   MATLAB R2014a:  rotate a vector
% oldvec = 2D column vector
% theta = angle to rotate, in radians
% returns a 2D column vector
newvec = [cos(theta), -sin(theta); sin(theta), cos(theta)]*oldvec;
