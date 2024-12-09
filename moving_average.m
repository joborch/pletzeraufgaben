function [movAve] = moving_average(input)
% calculates a moving average
    l = length(input);


    for i = 1:l
        if (i < l-1)
            output(i) = mean([input(i) input(i+1) input(i+3)]);
        
        %Anwendung von Padding! Auffüllung mit dem letzten Wert!
        elseif i == l-1
            output(i) = mean([input(i) input(i+1) input(l)]);
        else
            output(i) = input(i);
        end
    end

end