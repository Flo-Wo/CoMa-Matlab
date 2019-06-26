% CoMa Blatt 11
% Group: Florian Wolf, Julian Weigert
%% Task 31

clear all;
close all;

% initialize f as a testing function
syms x;
f(x) = x.^4 - 2.*x.^3 + 4.*x.^2 -5.*x +7;
g(x) = 8.*x.^10 + 7.*x.^5 + 2.*x.^4 + x.^3 -7.*x.^2 +1;
xi_f = 1;
xi_g = -1;

% get coefficients of the taylor polynom
% get Taylor expansion of f at the point xi
getTaylor(getCoefficients(coeffs(g(x), 'All'), xi_g), xi_g);
