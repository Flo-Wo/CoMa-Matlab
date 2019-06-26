%% Function: getCoefficient
% function to calculate the coefficients for a taylor expansion to a given
% point
function coefficient = getCoefficient(coefficient, xi, counter)
    % if clause to leave recursion
    if(counter > 1)
        % iterate through current coeff an calculate the current last
        % component 
        for i= 2:1:counter
            coefficient(i) = coefficient(i) + xi * coefficient(i-1);
        end
        % reduce counter by 1 to get the next coeff for the taylor series
        % expension
        counter = counter - 1;
        % recursive call with reduced counter to get next taylor series
        % component
        coefficient = getCoefficient(coefficient, xi, counter);
    else
        % break, to stop recursion
        return
    end
    
    % the vector coefficients contains the coefficiets of the taylor
    % expansion at the point xi in reversed order (considering ascending
    % exponents)
end

