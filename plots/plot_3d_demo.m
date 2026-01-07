% Step 1: Create a grid of points
x = linspace(-2, 2, 20);   % Row vector of 20 points
y = linspace(-2, 2, 20);   % Row vector of 20 points
[X, Y] = meshgrid(x, y);   % Create 2D grid for X and Y

% Step 2: Compute Z values
Z = X .* exp(-X.^2 - Y.^2);

% Step 3: Create the 3D surface plot
figure
surf(X, Y, Z)              % Plot the surface
colormap(jet)               % Apply 'jet' colormap
colorbar                    % Show color scale

% Step 4: Customize appearance
shading interp              % Smooth shading
lighting gouraud            % Smooth lighting
light                       % Add a light source
view(45, 30)                % Set viewing angle

% Step 5: Label axes and add a title
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('3D Surface Plot of z = x * e^{-x^2 - y^2}')
grid on                     % Turn on grid for better visualization
