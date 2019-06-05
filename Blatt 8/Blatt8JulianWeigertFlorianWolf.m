% CoMa Blatt 8
% Gruppe: Florian Wolf, Julian Weigert

clear all;
close all;

%% Aufgabe 22 %%
% Teil (a)
% a = 0;
% b = 1000;
% eps = 0.0001;
% 
% f = @(x)( x^6 + x^5 + x^4 + x^3 + x^2 + x - 10);
% 
% nullstelle(f, a, b, eps);

% Teil (b)
% f besitzt eine positive Nullstelle, bei approx. 1.148

a = input('a = ' );
b = input('b = ' );
eps = input('epsilon (Schwelle für Näherungen) = ' );

f = @(x)( x^6 + x^5 + x^4 + x^3 + x^2 + x - 10);
nullstelle(f, a, b, eps);


%% Aufgabe 23 %%

% Teil (a)
% points = input('points: ');
% switch points
%     case {27, 28, 29, 30}
%         disp('Note: sehr gut');
%     case {23, 24, 25, 26}
%         disp('Note: gut');
%     case {19, 20, 21, 22}
%         disp('Note: befriedigend');
%     case {15, 16, 17, 18}
%         disp('Note: ausreichend');
%     case {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
%         disp('Nicht bestanden.');
%     otherwise
%         disp('Falsche Eingabe, bitte Punkte im Bereich 0 bis 30.');
% end
% 
% % Teil (b)
% if ((27 <= points) && (points <= 30))
%     disp('Note: sehr gut');
% elseif (23 <= points) && (points <= 30)
%     disp('Note: gut');
% elseif (19 <= points) && (points <= 30)
%     disp('Note: befriedigend');    
% elseif (15 <= points) && (points <= 30)       
%     disp('Note: ausreichend');    
% elseif (0 <= points) && (points <= 30)       
%     disp('Nicht bestanden.');
% else
%     disp('Falsche Eingabe, bitte Punkte im Bereich 0 bis 30.');
% end    
    
    
