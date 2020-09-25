%% AnalyzeBeamProfile tester

% Generate fictitious beam profile (Gaussian to be easy)
x_data = linspace(-20,20,1000);
mu = 0;
std = 5;
profile = (1./(std*sqrt(2*pi)))*exp(-(x_data-mu).^2./(2*std));
figure;plot(x_data,profile)

[penumbra_l, penumbra_r,FWHM_l, FWHM_r,FS]=AnalyzeBeamProfile(x_data,profile)