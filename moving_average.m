function [movAve] = moving_average(input)
% calculates a moving average
    l = length(input);

    disp(l)

    for i = 1:l
        if (i < l-2)
            output(i) = mean([input(i) input(i+1) input(i+3)]);

            disp(["Gleitender Mittelwert " i " berechnet! mit Indexen" i " " i+1 " und " i+3])
        %Anwendung von Padding! Auffüllung mit dem letzten Wert!
        elseif i == l-2
            output(i) = mean([input(i) input(i+1) input(l)]);
            disp(["Gleitender Mittelwert " i " berechnet! mit Indexen" i " " i+1 " und " l])
        elseif i == l-1
            output(i) = mean([input(i) input(l) input(l)]);
            disp(["Gleitender Mittelwert " i " berechnet! mit Indexen" i " " l " und " l])

        else
            output(i) = input(i);
            disp(["Gleitender Mittelwert " i " berechnet! Letzter Wert"])
        end
    end

    movAve = output;
end