%%  This script works out the amps needed for a certain thickness based on a set amount of time 

%% Variables

pi = 3.141;   % Value of the constant Pi 
IW = 0.2;     % Initial Weight (grams)
FW = 0.45;     % Final Weight (grams) 

C   = 63.546; % Atomic weight Copper
rho = 8.92;   % Density of copper (g/cm3)
n   = 2;      % Charge

I = 2;           % Amps 
T = 10600;       % Time (seconds)
F = 96500;       % Faradays Constant 

%% Change in weight
CW = FW-IW;

%% Area characteristics (mm) 
h = 12; % height mm 
D = 12;   % diameter mm
R = D/2;  % Radius mm

%% Surface Area 
sf = 2*pi*R*h; % surface area (mm2)
SF = sf/10;    % surface area (cm2)

%% Calculating theoretical thickness

TW = (I*T*C)/(n*F); % Theoretical Weight

CE = CW/TW; % Current efficiency 

Thickness = 10000*(CW/(rho*SF*CE));

disp('This is the theoretical thickness')
disp(Thickness)

%% Rate of Plating (um/min)

R = ((600000*I*C)/(n*F*rho*SF))*CE;
disp('The rate of plating (in um/min) is')
disp(R)
    
