clear all
close all
clc

a = [3 0 0 2 -10];
xi = -1;
% 
% a = [1 0 -5 0 4 1];
% xi = 2;

t = horner(a,xi);
t(0)