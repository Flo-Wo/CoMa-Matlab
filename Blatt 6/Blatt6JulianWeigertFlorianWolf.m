% CoMa Blatt 6
% Gruppe Florian Wolf, Julian Weigert

%% Aufgabe 16 %%
% Teil (a)
% Vektor für x-Schritte
x = 0:0.01:5;
% Definiere die Funktionen f,g,h
f = exp(-x.^2);
g = cos(2.*x);
h = sqrt(x);
% Plotte f
plot(x,f, 'm');
hold on;
% Plotte g in gleiches Koordinatensystem
plot(x,g, 'c');
hold on;
% Plotte h in gleiches Koordinatensystem
plot(x,h, 'k');
legend('exp', 'cos', 'Wurzel', 'Best');
% 
% % Teil (b)
% % Vektor t initialisieren
% t = 0:0.01:10;
% % Funktion definieren
% p = 10./(1+exp(5-t));
% % Funktion plotten
% plot(t,p);
% hold on;
% % Umkehrfunktion plotten
% plot(p,t);

%% Aufgabe 17 %%
% Teil (a)
% Definiere Parameter t von 0 bis 10
t = 0:0.01:10;
% Funktion x-Koord. der Raumkurve
x = t.*cos(5.*t);
% Funktion y-Koord. der Raumkurve
y = t.*sin(5.*t);
% Funktion z-Koord. der Raumkurve
z = exp(-0.1.*t);
% Zeichnen der Raumkurve
plot3(x,y,z);
% Gitter einschalten
grid on;

% Teil (b)
% Teil (1)
% Erstelle Definitionsbereich
[X,Y] = meshgrid(-1:0.01:1,-1:0.01:1);
Z = X.*Y.*(X.^2 + Y.^2 - 1);
% Ausgabe der Funktion
%mesh(X,Y,Z);
%surf(X,Y,Z);
%surfl(X,Y,Z);

% Teil (2)
 %contour(X,Y,Z, 15 , 'ShowText','on');

% Teil (3)
% Abgelesene lokale Extremwerte:
%   lokale Minima bei (-0.5,-0.5) und bei (0.5,0.5)
%   lokale Maxima bei (0.5,-0.5) und bei (-0.5,0.5)

