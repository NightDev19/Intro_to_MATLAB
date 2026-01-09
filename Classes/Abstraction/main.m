clear; clc;


bike  = MotorCycle(80, "Single-cylinder");
sedan = Car(120, 4);


vehicles = {bike, sedan};


originalSpeeds = zeros(1, length(vehicles));
for i = 1:length(vehicles)
    originalSpeeds(i) = vehicles{i}.Speed;
end


for i = 1:length(vehicles)
    v = vehicles{i};
    v.go();
    v.displaySpeed();
    v.stop();
    fprintf('\n');
end


vehicles{1}.Speed = 100;   
vehicles{2}.Speed = 150;   


updatedSpeeds = zeros(1, length(vehicles));
for i = 1:length(vehicles)
    updatedSpeeds(i) = vehicles{i}.Speed;
end

disp('After updating speeds:');
for i = 1:length(vehicles)
    vehicles{i}.displaySpeed();
end


figure;

speedData = [originalSpeeds; updatedSpeeds]';
bar(speedData);

grid on;
xlabel('Vehicle');
ylabel('Speed (km/h)');
title('Vehicle Speed Comparison');

legend('Original Speed', 'Updated Speed', 'Location', 'northwest');

xticklabels({'MotorCycle', 'Car'});
