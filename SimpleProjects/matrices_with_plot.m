% --- Sample Data Matrix ---
data = [5 10; 2 3; 8 7; 1 4; 6 2; 3 9];

% --- Create Figure ---
fig = figure('Name','2D Matrix Plot with Bubble Sort','NumberTitle','off',...
             'Position',[300 300 600 400]);

% --- Create Axes for Plot ---
ax = axes('Parent',fig,'Position',[0.1 0.3 0.8 0.65]);

% --- Initial Plot ---
hPlot = plot(ax, data(:,1), data(:,2), 'bo-', 'LineWidth', 1.5, 'MarkerSize', 8);
xlabel(ax, 'X');
ylabel(ax, 'Y');
title(ax, '2D Plot from Matrix Data');
grid(ax,'on');

% --- Store data and plot handle in figure using guidata ---
handles.data = data;
handles.hPlot = hPlot;
handles.ax = ax;
guidata(fig, handles);

% --- Create Bubble Sort Button ---
btn = uicontrol('Parent',fig,'Style','pushbutton','String','Bubble Sort',...
                'FontSize',12,'Position',[250 50 100 40],...
                'Callback',@bubbleSortCallback);

% --- Callback Function for Bubble Sort ---
function bubbleSortCallback(src, ~)
    % Retrieve stored handles and data
    handles = guidata(src);
    data = handles.data;
    
    % Bubble Sort by first column (X)
    n = size(data,1);
    for i = 1:n-1
        for j = 1:n-i
            if data(j,1) > data(j+1,1)
                temp = data(j,:);
                data(j,:) = data(j+1,:);
                data(j+1,:) = temp;
            end
        end
    end
    
    % Update the plot
    set(handles.hPlot, 'XData', data(:,1), 'YData', data(:,2));
    title(handles.ax, '2D Plot after Bubble Sort (by X)');
    
    % Save updated data back to handles
    handles.data = data;
    guidata(src, handles);
end
