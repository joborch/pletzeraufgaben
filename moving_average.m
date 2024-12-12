function [movAve] = moving_average(input)
% calculates a moving average
    l = length(input);

    disp(l)

    for i = 1:l
        if i == 1
            movAve(i) = mean([input(i) input(i) input(i+1)]);
            disp(["Gleitender Mittelwert " i " berechnet! mit Indexen" i " " i " und " i+1])
        elseif i < l
            movAve(i) = mean([input(i-1) input(i) input(i+1)]);
            disp(["Gleitender Mittelwert " i " berechnet! mit Indexen" i-1 " " i " und " i+1])
        elseif i == l
            movAve(i) = mean([input(i-1) input(i) input(i)]);
            disp(["Gleitender Mittelwert " i " berechnet! mit Indexen" i " " i+1 " und " i+3])
            %Anwendung von Padding! Auffüllung mit dem letzten Wert!
        end
    end
end