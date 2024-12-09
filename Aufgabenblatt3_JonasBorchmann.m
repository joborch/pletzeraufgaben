%% Aufgabe 1
%Beispielsignal erstellen
x = 0:pi/16:2*pi;
y=sin(x);
rauschen=rand(size(y));
signal=y+0.2*rauschen-0.1;

smooth_signal = moving_average(signal);

smooth_signal


%Plots Planen
plot(x, y, 'black*'); %Sinus Plot erstellen
hold on; %Hold an damit Graph ergänzt wird
plot(x, signal, 'r-'); %Signal Graph ergänzen
plot(x, smooth_signal, 'b-'); %Gleitenden Mittelwert Graph ergänzen

%Legende schreiben
title('Noisy Sine Wave'); %Graph einen Titel geben
legend('Original Sine Wave', 'Sine with Random Noise', 'Smoothed Sine Wave','Location', 'south', 'Orientation', 'horizontal'); %Legende programmieren
grid on; %Gitternetz anschalten

hold off; %Graph anzeigen

%% Aufgabe 2
mynoise = @(x) rand(size(x));

mynoisetest = mynoise(y)

%% Aufgabe 3
%Test der myBMI.m Funktion

[testBMI klassifikation] = myBMI(186,70)