%Gruppe: Julian Weigert, Florian Wolf

%% Aufgabe 13 %%
% Teil 1): Einlesen einer Datei
data = fopen('Notenliste.txt', 'r');
% Auslesen des Titels
titel = fgetl(data);
% Format der Eingabe 
formatSpec = '%d %f %f %f\n';
% Einlesen
[A, count] = fscanf(data,formatSpec,[4 inf]);
[Am, An] = size(A);
%Schlie�en der Datei
fclose(data);

% Teil 2): Berechnung der Schnitte der einzelnen F�cher
%summiere �ber einzelne Zeilen der Matrix und Teile es durch count/4, da
%Count die Gesamtanzahl der Elemente ist
schnittanalysis  = sum(A(2,:))/(count/4);
schnittalgebra = sum(A(3,:))/(count/4);
schnittnumerik = sum(A(4,:))/(count/4);

datei = fopen('aufgabe13.aus.txt', 'w');
fprintf(datei,'Gruppe: Florian Wolf, Julian Weigert\n\n\n');
fprintf(datei,'Notenschnitte \n\n');
%Ausgabe der Schnitte in die Datei
fprintf(datei, 'Analysis 2: %4.2f\n', schnittanalysis);
fprintf(datei, 'Lineare Algebra 2: %4.2f\n', schnittalgebra);
fprintf(datei, 'Numerik: %4.2f\n\n\n', schnittnumerik);

% Teil 3): Berechnung der Schnitte der einzelnen Studenten

%Laufvariable x definieren
x = 1:1:15;
%Schnitt f�r jeden einzelnen Studenten berechnen und in einen Vektor
%speichern, iteriere daf�r �ber jede einzelne Spalte/jeden Studenten und
%berechne das Mittel der Spaltenvektoreintr�ge
schnitt = (sum(A(2:4,x))/3);
kopf = ["Matrikel-Nr.", "AII", "BII", "Numerik", "Durchschnitt"];
B = [A; schnitt];
fprintf(datei,'Klausurergebnisse \n\n');
%Ausgabe der �berschrift
fprintf(datei, '%s %s     %s       %s    %s\n', kopf);
%Ausgabe der Ergebnisse
fprintf(datei, '  %d     %4.2f    %4.2f       %4.2f          %4.2f \n', B);
%Schlie�en der Datei
fclose(datei);



%% Aufgabe 14 %%
%%Task: Einlesen zweier Konstanten �ber Benutzeroberfl�che, berechnen einer
%%Funktion, sowie Ausgabe einer Wertetabelle in eine .txt-Datei

%clear all;
% Eingabe sigma �ber Bildschirm
sigma = input('sigma: ');
% Eingabe m� �ber Bildschirm
mu = input('mu: ');
%Definitionsbereich festelegen, step=0.1
t = -5:0.1:5;
% Funktion anwenden
y = [t; exp((-(t-mu).^2)./(sigma.^2))];
%plot(t,y(2,:), '-mp'); %%ggf. plotten
% Ergebnisse in die gew�nschte Datei schreiben
fid = fopen('aufgabe14.aus.txt', 'w');
fprintf(fid,'Gruppe: Florian Wolf, Julian Weigert\n\n\n');
fprintf(fid,'Exponentialfunktion\n\n');
% �berschrift
fprintf(fid,'  t     f(t)\n');
% Wertetabelle ausgeben
fprintf(fid,' %1.3f %12.10f\n', y);
fclose(fid);


