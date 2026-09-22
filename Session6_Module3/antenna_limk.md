# 6. Assignmentand Deliverables
1. At 12 GHz, assuming a standard aperture efficiency of 0.6:
    + 1.0 m Dish: Gain = 39.8 dBi, Beamwidth = 1.75 deg
    + 2.4 m Dish: Gain = 47.4 dBi, Beamwidth = 0.73 deg
As the dish diameter increases, pointing difficulty increases drastically

2. The main lobe is the central, highest-gain peak directed along boresight, while the sidelobes are the smaller secondary radiation ripples flanking it, separated by sharp nulls. The beamwidth (the 3 dB Half-Power Beamwidth, HPBW) is read directly off the pattern by measuring the angular separation between the two points on the main lobe where the gain drops 3 dB below its maximum peak.

3. In the Session 5 Link Budget, the ground dish acts as the receiver antenna. Its gain directly feeds into the receiver's figure of merit (G/T).

Replacing the 1 m dish with a 2.4 m dish delivers a direct gain increase of approximately +7.6 dB:
Delta_G = 20log_10(D_2/D_1) = 20log_10(2.4/1) = 7.60 dB

Assuming all conditions remain nominal: the link margin improves by roughly +7.6 dB when using a 2.4 m dish instead of a 1.0 m dish.

4. The gain, beamwidth, pointing tradeoff:
- Gain vs Beamwidth: Gain is inversely proportional to beam solid angle. When you increase antenna gain, the Beamwidth is narrows down.
- Beamwidth vs. Pointing: A high-gain beam provides massive signal amplification, but its pointing tolerance drops below a fraction of a degree.

LEO Demands Tracking Dishes or Phased Arrays because a LEO link requires both high gain (narrow beam) and continuous coverage across a rapidly moving trajectory, the beam must dynamically follow the satellite.

# 7. Check your understanding
1. Write the relationship between frequency and wavelength, and give the wavelength at 12 GHz.
                        λ = c / f
where c = 3e8 m/s is the speed of light, f is frequency, and λ is wavelength.
At f = 12 GHz: λ = 0.025 m = 2.5 cm

2. Give two independent reasons a system might move to a higher frequency band, and the main penalty it pays.
- Two reasons to move higher:
    + Larger available bandwidth: Higher frequency offer much wider spectrum allocations, supporting substantially higher data throughputs.
    + Smaller antenna apertures for the same gain: Because wavelength shrinks, you can achieve high directional gain and narrow beamwidths using physically smaller, lighter antennas.
- The main penalty: Much higher propagation losses—specifically increased free-space path loss and severe atmospheric/rain attenuation.

3. How does polarization let engineers reuse the same frequency and roughly double capacity?
Electromagnetic waves can oscillate in orthogonal  orientations—such as Horizontal vs Vertical linear polarization, or Right-Hand (RHCP) vs. Left-Hand Circular Polarization (LHCP). Because orthogonal polarizations do not couple into each other at the receiver (providing high cross-polarization isolation), engineers can transmit two completely independent data streams on the exact same carrier frequency at the same time, effectively doubling capacity.

4. A dish gain depends on two quantities in the formula. Name both and state how gain responds to each.
- Dish gain formula:
                    G = η ( π D / λ ) squared
Where D is the dish diameter, λ the wavelength, and η the aperture efficiency (typically 0.5 to 0.7). Read what
it says: gain rises with the square of diameter.
Two primary quantities:
Aperture diameter (D): Gain is proportional to the square of the diameter; increasing diameter increases gain quadratically (+6 dB per doubling).
Wavelength (λ) (or Frequency (f)): Gain is inversely proportional to the square of wavelength, or proportional to frequency squared; shorter wavelengths (higher frequencies) yield higher gain for a fixed size.

5. You double a dish's diameter. What happens to its gain, and what happens to its beamwidth?
Gain: Increases by a factor of 4, which is a +6 dB increase.
Beamwidth: Decreases by a factor of 2.

6. Explain the chain from high gain to narrow beam to difficult pointing, and link it to the pointing loss in a link
budget.
High gain -> narrow beam -> difficult pointing -> pointing loss.
- High antenna gain does not create extra energy; it focuses radiated power into a tightly constrained spatial angle.
- Consequently, higher gain directly forces a narrower half-power beamwidth.
- As the beam shrinks to a sharp needle (often under $1^\circ$), the tolerance for mechanical mispointing, wind deflection, and tracking lag drops drastically.
- In a link budget, any angular offset between the antenna's boresight and the true line-of-sight to the satellite maps directly to the steep skirts of the radiation pattern. This offset is budgeted as pointing loss, which subtracts directly from received power and eats away at the link margin.

7. Why is a phased array, rather than a big dish, the natural choice for a terminal that must track LEO satellites?
- A LEO satellite moves across the sky at high angular rates and drops below the horizon within 5 to 10 minutes.
- A large dish relies on heavy mechanical gimbals that suffer from mechanical wear, inertia, and slow slew times.
- An electronically steered phased array steers its beam purely by adjusting phase shifters at the microsecond level without moving parts. It can track fast angular motion with zero mechanical wear, and conform to flat aerodynamic surfaces.