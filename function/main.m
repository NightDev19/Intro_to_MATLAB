clc; clear;

% Define the callback function handle
readyCallback = @callback;

% Start making coffee
makeCoffee(readyCallback);

% -----------------------------
% Local function inside main.m
function makeCoffee(callbackFunc)
    disp('Your Coffee is being made...');
    pause(2);  % simulate time to make coffee
    
    % Call the callback when done
    callbackFunc();
end
