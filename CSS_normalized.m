% Definition of the transfer function
% and call of the analysis programm
clear % delete all variables
close all % close all figure windows
% Parameters of the suspension system
CSS_parameters
% Parameters for diagrams
Dia_parameters
% system parameters of the normalized system
% coefficients of numerator of transfer function
num =  [0 0 1;...
        0 0 1;...
        0 0 1;...
        0 0 1];
% coefficients of denominator of transfer function as a matrix
den =  [1/w_0^2 2*delta(1)/w_0^2 1;...
        1/w_0^2 2*delta(2)/w_0^2 1;...
        1/w_0^2 2*delta(3)/w_0^2 1;...
        1/w_0^2 2*delta(4)/w_0^2 1];

% define system by its transfer function
G1 = tf(num(1,:),den(1,:));
G2 = tf(num(2,:),den(2,:));
G3 = tf(num(3,:),den(3,:));
G4 = tf(num(4,:),den(4,:));
lti_analysis_4 % call main program lti_analysis_4.m
% *** end of program***