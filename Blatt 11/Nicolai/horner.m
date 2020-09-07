function t = horner(a,xi)
%% bestimmt vollständiges Horner Schema und daraus die Taylorentwicklung

[m,n] = size(a);
if (m ~=1 ) && (n == 1)
    %Ich will einen Zeilenvektor
    a = a';
elseif m > 1
    %falsche Eingabe über Dimension pruefen
    disp('Fehler in der Eingabe!');
    t = 0;
else
    %% erstellen des Tableaus
    A = zeros(n+1,n);
    A(1,:) = a;
    
    %erste Zeile mit Ausgangsparameter belegen
    A(:,1) = a(1);
    
    %% horner Schema auf die Zeile anwenden anwenden
    k = 1;
    while k <= n
        for i = 2:n+1-k
            A(k+1,i) = A(k,i) + A(k+1,i-1)*xi;
        end
        k = k+1;
    end
    
    %% Taylorentwicklung
    %Ausgabe als Funktion abhängig von x
    t = @(x) 0;
    for i = 1:n
        t = @(x) (x-xi).^(i-1) .* A(i+1,n+1-i) + t(x);
    end
end
end