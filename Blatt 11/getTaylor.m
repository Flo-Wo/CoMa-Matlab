%% Function: getTaylor
% this function returns the taylor polynom to given coefficients
function p = getTaylor(coefficient, xi)
    coefficient = fliplr(coefficient);
    syms x;
    % init new polynom
    p = @(x) 0;
    % iterate through all calculated coefficients
    for i=1:length(coefficient)
        p = p + coefficient(i).* (x - xi).^(i-1); %(@x)
    end
    % show the polynom to the console
    disp(p);
end