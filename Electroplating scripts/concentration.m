%% This scripts job is to take the variables set by the user and compute the
% necessary grams needed

function conc = concentration (cop, Volume) 

% Parameters set 
mol = 0.006265; % number of moles for 1 gram of Copper Sulphate 

%% Calculating the amount of grams for a set concentrations 

% Choosing the concentration in mol/dm3. Advised range is 0 - 1 (mol/dm3)

vol = Volume/1000; % converting from cm3 to dm3 

moles = cop*mol; % Total moles of Copper(II) Sulphate 

conc = moles/vol; % Concentation of mixutre mol/dm3

 
    disp('This is the closest to the set value for concertration')
    disp(conc)

    disp('This is the grams used to achieve this result')
    disp(cop)    
end


 




