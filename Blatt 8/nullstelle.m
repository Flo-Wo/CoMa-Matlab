function xi = nullstelle(g, a, b, eps)
% if (g(a)*g(b) >= 0)
%     disp('Die Funktion hat in diesem Intervall keine Nulstelle.');
if (eps <= 0)
    disp('Epsilon muss echt größer als Null sein');
    
else
    while (abs(b-a) >= eps)
        s = (a+b)/2;
        if (g(s) == 0)
            xi = s;
            break;
        elseif (g(a)*g(s) < 0)
            b = s;
        elseif (g(b)*g(s) < 0)
            a = s;
        end
    end
    if (abs(b-a) < eps)
        xi = s;
    end
    text = sprintf("Die (Näherung der) Nullstelle ist: %f", xi);
    disp(text);
end
end

