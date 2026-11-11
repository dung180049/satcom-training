% Receive chain stages: name, gain (dB), noise figure (dB)
names = {'LNA','Downconverter','IF Amplifier'};
G_dB = [ 30, -6, 20 ];
NF_dB = [ 2.0, 8.0, 12.0 ];
Glin = 10.^(G_dB/10);
Flin = 10.^(NF_dB/10);
% Friis cascade
F = Flin(1);
for k = 2:numel(Flin)
F = F + (Flin(k)-1)/prod(Glin(1:k-1));
end
T0 = 290; % reference temperature, K
NF_total = 10*log10(F);
Te = (F - 1)*T0; % equivalent noise temperature
fprintf('Cascaded noise figure = %.2f dB\n', NF_total);
fprintf('Equivalent noise temp = %.1f K\n', Te);
