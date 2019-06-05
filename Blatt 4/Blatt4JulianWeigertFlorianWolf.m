%Aufgabenblatt 4, Gruppe: Julian Weigert, Florian Wolf
clear all
close all
clc
%% Aufgabe 10 %%

%Teil (a), Definiere die Matrix B
B = [1, 4, 7, 10; 2, 5, 8, 11; 3, 6, 9, 12],

%Teil (b), Vektor (0,0,0,10) als letzte Zeilge einfügen
B_2 = [B; 0 0 0 10],

%Teil (c), Zweite Zeile Vektor (0,0,0,20) einfügen
B_3 = [B(1,:); 0 0 0 20; B(2:3,:)],

%Teil (d) Dritte Spalte den Vektor (11, 22, 33)
B_4 = [B(:,1:2), [11; 22;  33], B(:,3:4)],

%Teil (e), Streichen der 1. Zeile und der 2. Spalte
B_5 = B;
B_5(1,:) = [];
B_5(:,2) = [];
B_5,
%Teil (f), 2. Zeile in Vektor "zeile" speichern
zeile = B(2,:)

%Teil (h), Vertauschen von b_14 und b_31
temp = B(1,4);
B(1,4) = B(3,1);
B(3,1) = temp,

%% Aufgabe 11 %%
%Teil (a)
ans0 = pi/2 + pi.^3 - 17/13,
ans1 = pi/(2+pi.^3) - 17/13,
ans2 = pi/(2+pi).^3 - 17/13,

x = [1/9, -2*pi, 13];
ans3 = ((2.*x+7).^4 .*(3.*x.^2 -2.*x -9))./(4.*(x-2).^2 .* (x.^2 - x +4)),
%x = 13;
%ans3 = ((2*x+7)^4 *(3*x^2 -2*x -9))/(4*(x-2)^2 * (x^2 - x +4)),

%Teil (b)
e = ones(19,1);
A = 4*eye(20,20) + -2*diag(e,1) + -2*diag(e,-1),

C = 5*ones(20,20) - 5*eye(20,20),

