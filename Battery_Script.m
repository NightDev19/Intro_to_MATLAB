Data = xlsread('Intro_to_MATLAB/Battery_Parameters.xlsx');
%%
SOC = Data(:,1);
OCV = Data(:,2);
R_Charge = Data(:,3);
R_Discharge = Data(:,4);

%% Plot

%plot(SOC,OCV);
%figure
%plot(SOC,R_Charge);
%figure
%plot(SOC,R_Discharge);
%% Define parameter

I = 2.3 ; % Current
Cn = 2.3 * 3600; % Capacity
Sim_Time = 3600;

%%
sim('Intro_to_MATLAB/Simulations/Intro_To_Simulink/Battery')