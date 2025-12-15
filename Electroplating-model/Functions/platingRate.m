function rate_um_per_min = platingRate(I, params, geom)
% Computes ideal plating rate in µm/min

F = 96485; % C/mol

% Geometry (mm -> cm)
R = geom.D / 2 / 10; % cm
h = geom.h / 10;     % cm
A = 2 * pi * R * h;  % cm^2

% Rate (µm/s)
rate_um_per_s = (I * params.C / (params.n * F * params.rho * A)) * 1e4;

% Convert to µm/min
rate_um_per_min = rate_um_per_s * 60;
end
