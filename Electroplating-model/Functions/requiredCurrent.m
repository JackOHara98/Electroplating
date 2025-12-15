function I_required = requiredCurrent(target_thickness_um, params, geom)
% Computes current (A) needed to achieve target thickness (µm) in time T

F = 96485; % Faraday constant (C/mol)

% Geometry (mm -> cm)
R = geom.D / 2 / 10; % cm
h = geom.h / 10;     % cm
A = 2 * pi * R * h;  % cm^2

% Mass needed (g)
m_target = params.rho * A * target_thickness_um * 1e-4; % µm -> cm

% Required current
I_required = (m_target * params.n * F) / (params.C * params.T);
end
