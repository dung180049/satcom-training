c = 3e8;
f = 12e9; % Hz (Ku-band downlink)
lambda = c/f; % m
eff = 0.6; % aperture efficiency
D = 0.3:0.1:3; % dish diameters in meters
G_lin = eff .* (pi*D/lambda).^2;
G_dBi = 10*log10(G_lin);
HPBW = 70*lambda ./ D; % approximate half-power beamwidth, degrees
figure;
yyaxis left; plot(D, G_dBi, 'LineWidth',1.5); ylabel('Gain (dBi)');
yyaxis right; plot(D, HPBW, 'LineWidth',1.5); ylabel('Beamwidth (deg)');
xlabel('Dish diameter (m)'); grid on;
title('Dish gain and beamwidth vs diameter at 12 GHz');
% Take a 1 m dish and use its gain in the link budget
D0 = 1;
G0 = 10*log10(eff*(pi*D0/lambda)^2);
fprintf('%.1f m dish at %.0f GHz -> gain %.2f dBi, beamwidth %.2f deg\n', ...
D0, f/1e9, G0, 70*lambda/D0);
