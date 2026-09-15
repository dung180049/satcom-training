startTime = datetime(2026,9,8,12,0,0);
stopTime = startTime + hours(24);           % 24 h so we capture passes
sc = satelliteScenario(startTime, stopTime, 60);

sat = satellite(sc, 6928e3, 0, 53, 0, 0, 0, "Name","LEO-Sat");
gs = groundStation(sc, 21.03, 105.85, "Name","Hanoi");

gSat = gimbal(sat);
gGS = gimbal(gs);

% Downlink transmitter on the satellite
tx = transmitter(gSat, "Frequency", 12e9, "Power", 10, "BitRate", 10e6);
gaussianAntenna(tx, "DishDiameter", 0.5);   % meters

% Receiver at the ground station
rx = receiver(gGS, "GainToNoiseTemperatureRatio", 20, "RequiredEbNo", 10.5);
gaussianAntenna(rx, "DishDiameter", 1.2);

pointAt(gSat, gs);
pointAt(gGS, sat);

lnk = link(tx, rx);
linkIntervals(lnk)              % when does the link actually close?
[e, t] = ebno(lnk);             % Eb/No over time

figure;
plot(t, e, '.-', 'LineWidth', 1.5, 'MarkerSize', 10);
grid on;
xlabel("Time");
ylabel("E_b/N_0 (dB)");
title("Downlink E_b/N_0 across the day");
