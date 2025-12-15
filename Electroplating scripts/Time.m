%%  This script works out the amps needed for a certain thickness based on a set amount of time

function Thickness  = Time (S,IW,FW,C,rho,n,h,D,I)
%% Variables
F = 96500;    % Faradays Constant 

%% Change in weight
CW = FW-IW;

%% Area characteristics (mm) 
R = D/2;  % Radius mm

%% Surface Area 
sf = 2*pi*R*h; % surface area (mm2)
SF = sf/10; % surface area (cm2)


%% Calculating the best time used to achieve the given thickness 
  

TW = (I*T*C)/(n*F); % Theoretical Weight

CE = CW/TW; % Current efficiency 


Thickness = 10000*(FW/(rho*SF*CE));

    disp('This shows the time in hours that will be needed to achieve the chosen theoretical weight')
    disp(T)
      
end


