
% HOW THE SCRIPT WORKS  
% First input the correct the values. Some values you will need to input
% from your own experiment such as weights. others can be pulled from the
% table provided 

clear, clc
disp('Find below a table of the most used elements in terms of electroplating')

% VariableNamingRule
Metalprop = readtable("metalprop.xlsx","VariableNamingRule","preserve");
head(Metalprop,10)

%% setting the initial paramenters 
IW  = 1.1;     % Initial Weight (grams)
FW  = 2.2;     % Final Weight (grams) 
C   = 63.546;  % Atomic weight Copper
rho = 8.92;    % Density of copper (g/cm3)
n   = 2;       % Charge
T   = 10800;   % Time (seconds)
I   = 1.1 ;    % Amps 

%% Change in weight
CW = FW-IW;

%% Area characteristics (mm) 
h = 24;   % height  
D = 24;   % diameter

%% Setting the thickness 
s = 80; % (micro-meters)

%% Ideal values (function part)
A = Thickness(s,IW,FW,C,rho,n,h,D,T);  % Ideal amps to acheive a certain thickness. Use ideal thickness as input
co = concentration(200, 600);        % Choosing the concentration in mol/dm3 as well the volume of distilled water. Advised range is 0 - 1 (mol/dm3)
Time = Time(s,IW,FW,C,rho,n,h,D,I);    % Using the selected Thickness to calculate the ideal time needed

%% Total Percentage calculator
PDC = ((FW-IW)/((FW+IW)/2))*100;
disp('The total percentage difference is')
disp(PDC)

%% Rate of plating (um/min)
R = ((600000*I*C)/(n*F*rho*SF))*CE;
disp('The rate of plating (in um/min) is')
disp(R)



