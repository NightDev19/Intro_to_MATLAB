%% Simulation 
Sim_Time = 7;
Step_Val = 1;
M = 1;
b = 10;
k = 20;

% Defining PID Control Parameter
Kp = 1000;
Ki = 0;
Kd = 0;

% Capture simulation output explicitly
out = sim("Intro_to_MATLAB/Simulations/Intro_To_Simulink/Dampler_System_with_PID");

% Extract signals (formerly ans.IN / ans.OUT)
IN  = out.IN;
OUT = out.OUT;

% Plotting Section
figure;
plot(IN.Time, IN.Data);
hold on;
plot(OUT.Time, OUT.Data);
hold off;
legend("IN","OUT");
xlabel("Time (s)");
ylabel("Signal");
grid on;
