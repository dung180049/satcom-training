startTime = datetime(2026,9,8,12,0,0);
stopTime = startTime + hours(3);
sampleTime = 60;
sc = satelliteScenario(startTime, stopTime, sampleTime);

semiMajorAxis = 6928e3;
eccentricity = 0;
inclination = 53;
raan = 0;
argPeriapsis = 0;
trueAnomaly = 0;

sat = satellite(sc, semiMajorAxis, eccentricity, inclination, raan, argPeriapsis, trueAnomaly, "Name", "LEO-Sat");

gs = groundStation(sc, 21.03, 105.85, "Name", "Hanoi");
ac = access(sat, gs);
intervals = accessIntervals(ac);
v = satelliteScenarioViewer(sc);
play(sc);