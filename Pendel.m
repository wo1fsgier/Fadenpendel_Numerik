%Diese Funktion ist die Allgemeine Pendelfunktion. Mit dieser wird in den
%folgenden Funktionen weitergearbeitet

function dydt = Pendel(t, y, L)

    g = 9.81;

    dydt = zeros(2,1);
    dydt(1) = y(2);                 % phi' = omega
    dydt(2) = -(g/L)*sin(y(1));     % omega' = -(g/L)*sin(phi)
end