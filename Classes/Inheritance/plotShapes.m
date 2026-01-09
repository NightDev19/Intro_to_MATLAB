function plotShapes(obj)
    % Plot rectangle and circle
    figure;
    hold on;
    axis equal;
    grid on;
    title('Rectangle and Circle Plot');

    % Rectangle coordinates (bottom-left at origin)
    xRect = [0 obj.Width obj.Width 0 0];
    yRect = [0 0 obj.Height obj.Height 0];
    plot(xRect, yRect, 'b-', 'LineWidth', 2);  % rectangle in blue

    % Circle coordinates
    theta = linspace(0, 2*pi, 100);  % circle points
    xCircle = obj.CircleRadius * cos(theta) + obj.Width/2;  % center at rectangle center
    yCircle = obj.CircleRadius * sin(theta) + obj.Height/2;
    plot(xCircle, yCircle, 'r:', 'LineWidth', 2);  % circle in red

    legend('Rectangle','Circle');
    xlabel('X');
    ylabel('Y');
    hold off;
end
