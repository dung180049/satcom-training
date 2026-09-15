# 9 Assignment and Deliverables

2. Link budget table
# Line item                               Value                      Where it comes from
Transmit power, Pt                      0.00 dBW                        1 watts
Transmit antenna gain, Gt               15.00 dBi                       satellite antenna
EIRP                                    15.00 dBW                       Pt + Gt
Free space path loss                    -177.60 dB                      550 km, 8.2 GHz
Other losses                            -3.50 dB                        atmosphere, rain, pointing
Receiver figure of merit, G/T           +24.31 dB/K                     ground station
Boltzmann term                          +228.60 dB                      -10 log10(k)
C/N0 (received)                         84.81 dB-Hz                     the running sum
Data rate term                          -70.00 dB                       10 Mbps
Eb/N0 achieved                          14.81 dB                        C/N0 - 10 log10(Rb)
Eb/N0 required                          10.50 dB                        QPSK, target error rate, uncoded
Link margin                             +4.31 dB                        link quality is good enough

3. With two or three sentences explaining why the Eb/N0 curve peaks and dips during a pass
During a pass, the slant range between the satellite and the ground station decreases to a minimum at the point of closest approach and expands as the satellite approaches or recedes toward the horizon. Because free-space path loss follows an inverse-square relationship with distance—and atmospheric attenuation is lowest directly overhead—the received signal power peaks near zenith and drops sharply near the horizon, creating the distinctive peaked E_b/N_0 curve.

4. why do engineers design for spare link margin rather than a margin of just above zero?
Engineers design satellite links with a comfortable spare link margin—typically 3 to 6 dB or more—because a theoretical link budget models near-ideal conditions, whereas the real world is chaotic and unpredictable such as: rain, aging hardware, and bad pointing.

# 10 Check your understanding

1. Why are link budgets calculated in decibels rather than in watts?
The numbers in a link budget span an enormous range, from watts of transmit power down to received powers of a millionth of a millionth of a watt. Decibels tame that range by working in logarithms, and they bring one magical convenience.

2. What is EIRP, and how do you get it from transmit power and antenna gain?
Two things set how strongly a signal leaves: the transmit power and how well the antenna concentrates it in the right direction. Combined, they give EIRP
EIRP = Pt + Gt (in dB terms, transmit power in dBW plus antenna gain in dBi, minus any feed losses)

3. Free space path loss grows with two things. Name both.
Carrier frequency & Distance (Slant range) between the transmitter and receiver

4. In one sentence, what does a receiver's G/T tell you?
The receiver must gather the faint signal and compare it to its own noise

5. What is link margin, and why is a margin of exactly 0 dB a bad design?
Link margin is what you achieve minus what you need: margin = Eb/N0 achieved - Eb/N0 required 
A margin of exactly 0 dB is a bad design because it assumes a perfect theoretical world; the moment real-world losses occur—such as rain, aging hardware, and bad pointing.

6. If you double the data rate and change nothing else, what happens to Eb/N0, and by how many dB?
E_b/N_0 drops by a factor of 2, which is a decrease of approximately 3dB

7. Tie it to Session 4: as a satellite rises from the horizon to directly overhead, what happens to the slant range, to path loss, and to the received Eb/N0?
Slant range: Decreases to its minimum distance.
Path loss (FSPL and atmospheric loss): Decreases significantly.
Received E_b/N_0: Increases to its peak value.