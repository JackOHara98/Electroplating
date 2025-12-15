%% Electroplating Model
% Calculates required current, thickness, and plating rate for an experiment

clear; clc;

%% Material & experiment parameters
params.C   = 63.546;   % Copper molar mass (g/mol)
params.rho = 8.92;     % Density (g/cm^3)
params.n   = 2;        % Charge number
params.T   = 3600;     % Time (s)

%% Geometry (mm)
geom.h = 12; % Height
geom.D = 12; % Diameter

%% Experimental weights (grams)
IW = 0.2; % Initial weight
FW = 0.3; % Final weight

%% Target thickness (microns)
target_thickness_um = 5;

%% Compute required current for target thickness
I_needed = requiredCurrent(target_thickness_um, params, geom);
disp(['Required current (A): ', num2str(I_needed)]);

%% Compute thickness from experimental mass
Thickness_um = thicknessFromMass(IW, FW, params, geom);
disp(['Experimental thickness (µm): ', num2str(Thickness_um)]);

%% Compute plating rate (µm/min)
R_um_per_min = platingRate(I_needed, params, geom);
disp(['Plating rate (µm/min): ', num2str(R_um_per_min)]);

%% Plot thickness over time
time_vec = 0:600:params.T; % every 10 min
thickness_vec = (I_needed * params.n * 96485 * time_vec) ./ ...
    (params.C * params.rho * 2*pi*(geom.D/2/10)*geom.h/10) * 1e4;
figure;
plot(time_vec/60, thickness_vec,'LineWidth',2);
xlabel('Time (min)');
ylabel('Thickness (µm)');
title('Plating Thickness over Time');
grid on;
