%% Init Parameter
m = 0.111;        % mass of the ball
r = 0.015;        % radius of the ball
g = -9.8;         % gravitational acceleration
L = 1.0;          % length of the beam
d = 0.03;         % lever arm offset
J = 9.99e-6;      % ball's moment of inertia

R = 5;            % ball position coordinate
SW_Control = 1;   % source signal controller

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