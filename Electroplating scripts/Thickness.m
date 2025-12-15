%%  This script works out the amps needed for a certain thickness based on a set amount of time 
function Thickness = Thickness (IW,FW,C,rho,n,h,D,T)
%% Variables
pi = 3.14159;    % Value of the constant Pi 
F = 96500;       % Faradays Constant 

%% Change in weight
CW = FW-IW;

%% Area characteristics (mm) 
R = D/2;  % Radius mm

%% Surface Area 
sf = 2*pi*R*h; % surface area (mm2)
SF = sf/10; % surface area (cm2)

%%
TW = (I*T*C)/(n*F); % Theoretical Weight

CE = CW/TW; % Current efficiency 

Thickness= 10000*(TW/(rho*SF*CE));

    disp('This is the closest theoretical thickness to the set value')
    disp(Thickness)

    disp('This is the amps used to achieve this result')
    disp(I)

end






