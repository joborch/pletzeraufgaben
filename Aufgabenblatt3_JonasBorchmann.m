%Beispielsignal erstellen
x = 0:pi/16:2*pi;
y=sin(x);
rauschen=rand(size(y));
signal=y+0.2*rauschen-0.1;
