% Define the implicit function
f = @(x,y) (x.^2 + y.^2 - 1).^3 - x.^2 .* y.^3;

% Plot the implicit curve with color and line width
fimplicit(f, [-2 2 -2 2], 'r', 'LineWidth', 2)  % 'r' for red
axis equal
grid on
title('Plot of Heart')
xlabel('x')
ylabel('y')
