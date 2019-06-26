%% Function: getCoefficients
% this function returns the coefficients for a taylor polynom
function coefficients = getCoefficients(coefficient, xi)
    coefficients = getCoefficient(coefficient, xi, length(coefficient));
end

