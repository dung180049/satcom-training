# A short findings note reporting:
How many access windows you found in the three hour period, the length of the longest one, and, in your own words, why a single LEO satellite cannot give you continuous coverage.
- In the three hour period, there is zero access window.
- A single Low Earth Orbit (LEO) satellite cannot provide continuous coverage because:
    + High orbital speed: Orbiting close to Earth requires traveling at roughly 7.5 km/s (completing an orbit in 90–120 minutes). From any fixed point on the ground, the satellite is visible for only 5 to 15 minutes before disappearing below the horizon.
    + Earth's rotation: As the satellite finishes a lap, the Earth rotates beneath it, moving your location away from the satellite's immediate next path.
    + Small footprint: Because it flies at low altitude, its line-of-sight coverage area is relatively narrow compared to high-altitude orbits

For a satellite in a circular orbit at an altitude of h = 550 km, Kepler's Third Law relates the orbital period T to the semi-major axis a: T = 2π sqrt(a cubed / mu)
Step-by-Step Analytical Calculation
For a circular orbit, the semi-major axis a equals the orbital radius: a = R_E + h = 6,378,137 + 550,000 = 6,928,137 (m)
-> a cubed = 3.325e+20
Earth's standard gravitational parameter: mu = GM = 3.986e+14
-> a cubed / mu = 8.343e+5
-> sqrt(a cubed / mu) = 913.4 seconds
Compute the Orbital Period (T): 2π * 913.4 = 5739 seconds = 95.65 minutes

# 9. Check your understanding
1. In one or two sentences, why does a satellite stay in orbit rather than falling to Earth?
A satellite stays in orbit because its high forward velocity causes its path to curve downward at the exact same rate that Earth’s surface curves away beneath it. It is constantly falling toward Earth due to gravity, but it keeps missing.

2. A satellite is at perigee. Is it moving at its fastest or its slowest? Which of Kepler's laws tells you?
It is moving at its fastest. This is governed by Kepler’s Second Law (the Law of Equal Areas), which dictates that an orbiting body sweeps out equal areas in equal intervals of time, requiring it to travel fastest when closest to the central body.

3. Which single orbital element sets both the period and the altitude of a circular orbit?
The semi-major axis (a).

4. What inclination would you choose for a satellite meant to pass over the poles, and why might you want that?
I would choose an inclination of roughly 90 degree, because as the satellite orbits North-to-South and Earth rotates underneath it East-to-West, the satellite  ventually passes over every point on the globe—ideal for global Earth imaging, weather monitoring, and mapping.

5.  Explain in plain words why a LEO ground terminal has to deal with Doppler shift but a GEO one basically does not.
A LEO satellite is moving rapidly across the sky relative to an observer on the ground, so the distance between them is constantly changing at high speeds—compressing or stretching the radio waves (Doppler shift). In contrast, a GEO satellite orbits at the exact same rate Earth rotates, remaining essentially fixed in the sky relative to the ground dish, which results in zero relative motion and virtually no Doppler shift.

6. Why does a Molniya orbit linger over the far north for hours? Point to the law that explains it.
A Molniya orbit is highly eccentric, placing its apogee (highest altitude) over the Northern Hemisphere. According to Kepler’s Second Law, an orbiting object moves slowest when it is farthest from the central body; therefore, the satellite spends the vast majority of its orbital period moving very slowly near apogee over northern latitudes, providing hours of continuous regional coverage.

7. You increase a satellite's altitude. What happens to its coverage footprint, and what happens to its signal strength at the ground?
Coverage footprint: It increases (the satellite sees a larger portion of Earth's surface).
Signal strength at the ground: It decreases (weakens) due to greater free-space path loss governed by the inverse-square law.