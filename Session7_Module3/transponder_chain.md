[1. Receive Antenna] ---> [2. Band-Pass Filter] ---> [3. LNA] ---> [4. Frequency Converter (Mixer + LO)]
                                                                               |
[7. Transmit Antenna] <--- [6. HPA (TWTA/SSPA)] <--- [5. Channel Filter] <-----+

Stage-by-Stage Functions
1. Receive Antenna: Captures the faint incoming uplink RF wave from the ground station and feeds it into the payload waveguide.

2. Band-Pass Filter (BPF): Rejects out-of-band interference and spurious signals so they cannot saturate the sensitive front-end amplifier.

3. Low Noise Amplifier (LNA): Boosts the weak uplink signal immediately while introducing minimal thermal noise, locking in a low noise figure for the entire chain.

4. Frequency Converter (Mixer + Local Oscillator): Shifts the signal from the higher uplink frequency band down to the downlink frequency band so the high-power transmitter does not swamp the sensitive receiver, without altering the modulated information.

5. Channel Filtering: Slices the converted spectrum into individual transponder channels (typically 36 MHz wide) and cleans up mixer byproducts.

6. High Power Amplifier (HPA — TWTA or SSPA): Amplifies the channelized signal to tens or hundreds of watts so it can survive the long downlink path loss back to Earth.

7. Transmit Antenna: Focuses and radiates the high-power downlink signal toward the target coverage footprint on Earth.