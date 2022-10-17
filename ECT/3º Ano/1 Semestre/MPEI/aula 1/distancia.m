function [y1] = distancia(x1,x2)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
y1 = sqrt(sum(x1-x2)^2);
end