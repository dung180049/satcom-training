# Connecting Receiver Cascaded Noise to G/T and Link Margin

### 1. Where Receiver Noise Temperature Sits Inside G/T
In Session 5, we treated the ground station's figure of merit, $G/T = 20\text{ dB/K}$, as a single black-box parameter. Opening up that parameter reveals two physical quantities:

- G_r (dBi) is the receive antenna gain from Session 6 (for  1.0 m dish at 12 GHz with 60% efficiency, G_r ~ 39.8 dBi).
- T_sys is the total system noise temperature (in Kelvin), which equals the antenna noise temperature (T_ant) plus the receiver chain's equivalent noise temperature (T_e) that we computed in `noise_budget.m`: T_sys = T_ant + T_e

### 2. Computing G/T with Our 1 m Dish and Baseline Receive Chain
From Part A, our baseline receive chain (`LNA NF = 1.0 dB`) yields an equivalent receiver noise temperature of T_e = 80.1K:
* Considering receiver noise alone (T_sys = 80.1 K):
  10log_{10}(80.1) = 19.04 dBK
  \frac{G}{T} = 39.8 dBi - 19.04 dBK = 20.76 dB/K
* Including a realistic sky/antenna noise temperature:
  For T_ant = 20 K, T_sys = 20 + 80.1 = 100.1 K (20.0 dBK), which gives:
  \frac{G}{T} = 39.8 dBi - 20.0 dBK = 19.8 dB/K ~ 20 dB/K
  This reproduces the exact 20 dB/K figure we used in the Session 5.

### 3. Impact of a Worse LNA on Link Margin
If we replace the 1.0 dB LNA with the cheaper 2.0 dB LNA from Experiment 1:
1. **Noise Temperature Spikes:** T_e jumps from 80.1 K to 174.6 K.
2. **G/T Drops Directly:**
   * Looking at the receiver noise contribution alone, 10log_{10}(174.6 / 80.1) = +3.39 dB higher thermal noise floor, pulling G/T down from 20.76 dB/K to 17.38 dB/K.
   * Even with T_ant = 50 K included (T_sys rising from 130.1 K to 224.6 K, G/T drops by 2.37 dB from 18.66 dB/K down to 16.29 dB/K).
3. **Link Margin Penalty:** Because received E_b/N_0 scales 1-for-1 with G/T in the link budget equation, a 2.4 to 3.4 dB drop in G/T erodes our **Link Margin by the exact same 2.4 to 3.4 dB. In our Session 5, losing 3 dB of margin means the link closes at a higher elevation angle, stays open for a shorter duration, and becomes far more vulnerable to cutting out during light rain.