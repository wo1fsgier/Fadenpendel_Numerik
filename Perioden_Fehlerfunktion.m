%Diese Funktion bereitet das suchen der Länge für eine Frequenz vor, indem
%sie den Nullpunkt der Funktion verschiebt

function F = Perioden_Fehlerfunktion(L, phi0, Periodendauer_gesucht)
    T = Pendel_Periodendauer(L, phi0);
    F = T - Periodendauer_gesucht;
end