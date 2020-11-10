%% Init Parameter
m = 0.111;
r = 0.015;
g = -9.8;
L = 1.0;
d = 0.03;
J = 9.99e-6;

R = 5;
SW_Control = 1;

K = (m*g*d)/(L*(J/r^2+m)); %simplifies input

Num = [-K];
Den = [1 0 0];

Kp = 15;
Kd = 40;

% numPD = [Kd Kp];
% numh = conv(Num, numPD);
% 
% [numc, denc] = cloop(numh, Den);

%% Run Simulink and GUI
Ballbeam2020a
ballbeamgui