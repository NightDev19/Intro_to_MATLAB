figure
%{
figure:
Creates a new figure window.
Prevents inheriting old plots, grids, or labels.
%}

x = linspace(0, 2*pi, 100);
y = sin(x);

plot(x, y,"r--") % Adding "r--" is a another argument to show the line into red dashed line on the plot

grid on
%{
grid:
Controls axis grid lines.
grid on  -> show grid
grid off -> hide grid
Grid state persists unless changed.
%}

xlabel("x")
ylabel("sin(x)")
%{
xlabel / ylabel:
Label the x- and y-axes.
Used to describe what each axis represents.
%}

title("Sine Function")
%{
title:
Adds a title to the current axes.
Applies only to the active figure.
%}
