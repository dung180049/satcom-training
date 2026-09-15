% ---- GEO Ku-band downlink link budget (all in dB) ----
Pt_dBW = 10;                % transmit power, 10 W
Gt_dBi = 30;                % transmit antenna gain
EIRP = Pt_dBW + Gt_dBi;     % dBW

f_GHz = 12;                 % downlink frequency
% f_GHz = 20;
d_km = 36000;               % slant range
% d_km = 1000;
FSPL = 20*log10(d_km) + 20*log10(f_GHz) + 92.45;

L_other = 2;                % atmosphere + rain + pointing, dB
GoverT = 20;                % receiver figure of merit, dB/K
boltz = 228.6;              % -10*log10(1.38e-23)

CN0 = EIRP - FSPL - L_other + GoverT + boltz;   % dB-Hz

Rb = 10e6;                  % bit rate, bits per second
EbN0 = CN0 - 10*log10(Rb);  % dB
required = 10.5;            % required Eb/N0
margin = EbN0 - required;   % dB

fprintf('EIRP = %7.2f dBW\n', EIRP);
fprintf('FSPL = %7.2f dB\n', FSPL);
fprintf('C/N0 = %7.2f dB-Hz\n',CN0);
fprintf('Eb/N0 = %7.2f dB\n', EbN0);
fprintf('Margin = %7.2f dB\n', margin);