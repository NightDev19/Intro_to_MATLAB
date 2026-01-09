clear; clc;
addpath('Class')
% Create object
inherit = Inherit(5, 10, 3);  % Width=5, Height=10, CircleRadius=3

% Access areas 
rectArea = inherit.ShapesArea();
disp(['Rectangle Area: ', num2str(rectArea)]);

circleArea = inherit.ShapeArea();
disp(['Circle Area: ', num2str(circleArea)]);

% Call the plotting function/script
plotShapes(inherit);
