ant = horn; % a standard pyramidal horn antenna object
figure; show(ant); % view the geometry
figure; pattern(ant, 12e9); % 3D radiation pattern at 12 GHz
% Read the half-power beamwidth in the azimuth plane
bw = beamwidth(ant, 12e9, 0, 0:1:359);
c = 3e8; f = 12e9; lambda = c/f;
array = phased.URA('Size',[8 8], 'ElementSpacing',[lambda/2 lambda/2]);
figure;
pattern(array, f, -90:90, 0, 'CoordinateSystem','rectangular', ...
'Type','powerdb', 'PropagationSpeed', c);
title('8 by 8 array pattern (beam can be steered electronically)');