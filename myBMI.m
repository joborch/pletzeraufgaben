function [BMI, classification] = myBMI()
    % calculates BMI based on formula from https://www.barmer.de/gesundheit-verstehen/leben/abnehmen-diaet/body-mass-index/bmi-rechner-1004244
    height = input("Bitte geben Sie Ihre Größe in m an: ");
    weight = input("Bitte geben Sie Ihr Gewicht in kg an: ");    
    
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