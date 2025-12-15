function thickness_um = thicknessFromMass(IW, FW, params, geom)
% Computes plating thickness (µm) from experimental mass gain

% Geometry (mm -> cm)
R = geom.D / 2 / 10; % cm
h = geom.h / 10;     % cm
A = 2 * pi * R * h;  % cm^2

% Deposited mass
m = FW - IW;

% Thickness (µm)
thickness_um = (m / (params.rho * A)) * 1e4; % cm -> µm
end
