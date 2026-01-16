% Diese Funktion löst mit ode45 die nichtlineare Pendelgleichung numerisch
% und bestimmt aus den Nulldurchgängen die Periodendauer des Pendels


function T = Pendel_Periodendauer(L, phi0)

    y0 = [phi0; 0];
    tspan = linspace(0, 4, 10000);
    
    options = odeset("RelTol", 1e-6, "AbsTol", 1e-8);
    [t,y] = ode45(@(t,y) Pendel(t,y,L), tspan, y0, options);
    phi = y(:,1);

    % erster Nulldurchgang
    for i = 2:length(phi)
        if phi(i-1) > 0 && phi(i) <= 0
           t1 = t(i);
            break
        end
    end

    % zweiter Nulldurchgang
    for i = i+1:length(phi)
        if phi(i-1) < 0 && phi(i) >= 0
            t2 = t(i);
            break
        end
    end

    T = 2*(t2 - t1);
end