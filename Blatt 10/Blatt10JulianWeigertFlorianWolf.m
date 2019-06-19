% CoMa Blatt 10
% Group: Florian Wolf, Julian Weigert

clear all;
close all;

%% Aufgabe 28 %%
L = load('Math_Stud.mat');
datei28 = fopen("Aufgabe28.txt", "w");
% header
fprintf(datei28,'Gruppe: Florian Wolf, Julian Weigert\nAufgabe 28 \n\n\n');

% Part (1)

% iterate through list and check for "BA Math"
fprintf(datei28, "Studiengang BA Math:\n\n");
for n = 1:length(L.liste)
    %disp(L.liste(n).name);
    if(strcmp(L.liste(n).studiengang, "BA Math"))
        fprintf(datei28, '%s', L.liste(n).name);
        fprintf(datei28, ' %s', L.liste(n).vorname);
        fprintf(datei28, ' %i \n', L.liste(n).matrikel);
    end
end

% Part (2)
% iterate through list and check for birth date
fprintf(datei28, "\n\nJahrgang 1994:\n\n");
for n = 1:length(L.liste)
    if(L.liste(n).geb.jahr == 1994)
        fprintf(datei28, '%s', L.liste(n).name);
        fprintf(datei28, ' %s', L.liste(n).vorname);
        fprintf(datei28, ' %s \n', L.liste(n).studiengang);
    end
end

% Part (3)
% calculate the average of all results
fprintf(datei28, "\n\nNotenschnitt:\n\n");
for n = 1:length(L.liste)
    % init temp variables
    gesamt = 0;
    anzahl = 0;
    % check Ana1
    if(L.liste(n).note.ana1 ~= 0)
        gesamt = gesamt + L.liste(n).note.ana1;
        anzahl = anzahl + 1;
    end
    % check Ana2
    if(L.liste(n).note.ana2 ~= 0)
        gesamt = gesamt + L.liste(n).note.ana2;
        anzahl = anzahl + 1;
    end
    % check LA1
    if(L.liste(n).note.la1 ~= 0)
        gesamt = gesamt + L.liste(n).note.la1;
        anzahl = anzahl + 1;
    end
    % check LA2
    if(L.liste(n).note.la2 ~= 0)
        gesamt = gesamt + L.liste(n).note.la2;
        anzahl = anzahl + 1;
    end
    % check CoMa
    if(L.liste(n).note.coma ~= 0)
        gesamt = gesamt + L.liste(n).note.coma;
        anzahl = anzahl + 1;
    end
    
    % calculate average
    schnitt = gesamt/anzahl;
    % print results
    if(L.liste(n).geb.jahr == 1994)
        fprintf(datei28, '%s', L.liste(n).name);
        fprintf(datei28, ' %s', L.liste(n).vorname);
        fprintf(datei28, ' %1.2f\n', schnitt);
    end
    
    % Sorry for this bad solution :)
end
% close file
fclose(datei28);

%% Aufgabe 29 %%
% open file, write header
datei29 = fopen("Aufgabe29.txt", 'w');
fprintf(datei29,'Gruppe: Florian Wolf, Julian Weigert\n Aufgabe 29 \n\n\n');
% calculation accuracy in Matlab
fprintf(datei29, 'eps: %g\n', eps);
% 1 + eps
fprintf(datei29, '1 + eps: %1.28e \n', (1 + eps));
% 1 + 0.5eps (too small to display correctly --> interpreted as zero)
fprintf(datei29, '1 + 1/2*eps: %1.60e \n\n\n', (1 + 0.5*eps));
% Fill Matrix with values
A = zeros(80,3);
for k=1:80
    A(k,1) = k;
    A(k,2) = 2^(-k);
    A(k,3) = 1 + 2^(-k);
end
A = A';
% Return results
fprintf(datei29, '%g       %g            %1.25f\n', A);
fclose(datei29);
%--> relativ precision is 2^(-52), (tabular and eps)