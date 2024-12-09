function [BMI, classification] = myBMI(height, weight)
    % calculates BMI based on formula from https://www.barmer.de/gesundheit-verstehen/leben/abnehmen-diaet/body-mass-index/bmi-rechner-1004244
    BMI = weight/height.^2;
    %classifies BMI in "untergewichtig", "normal" and "übergewichtig".
    %classification based on BMI<18.5 "untergewichtig", BMI>25 "übergewichtig".
    if BMI < 18.5
        classification = 'untergewichtig';
    elseif BMI > 25
        classification = 'übergewichtig';
    else
        classification = 'normal';
    end
end