% Inputs are ax = off-axis distance array and prof = prof array
function [penumbra_l, penumbra_r,FWHM_l, FWHM_r,FS] = AnalyzeBeamprof(x_data, prof)
prof = prof ./ max(prof);
% take care of unique things
[prof,idx]=unique(prof);
x_data = x_data(idx);
idx = find(x_data < 0);
i20_l = interp1(prof(idx), x_data(idx), 0.2);
i80_l = interp1(prof(idx), x_data(idx), 0.8);
penumbra_l = abs(i20_l) - abs(i80_l);

idx = find(x_data > 0);
i80_r = interp1(prof(idx), x_data(idx), 0.8);
i20_r = interp1(prof(idx), x_data(idx), 0.2);
penumbra_r = i20_r - i80_r;



FWHM_l = interp1(prof(1:idx(1)), x_data(1:idx(1)), 0.5);

FWHM_r = interp1(prof(idx(1)+1:end), x_data(idx(1)+1:end), 0.5);


FS = FWHM_r - FWHM_l;
end