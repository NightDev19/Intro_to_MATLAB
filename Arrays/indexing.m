%% Matrix Indexing Examples in MATLAB
% Demonstrates various ways to access and modify matrix elements

% Define a sample matrix
sampleMatrix = [
  1  2  3  4;
  5  6  7  8;
  9 10 11 12;
 13 14 15 16;
];

%% Row and Column Access
% Display the entire first row
fprintf('First row: %d %d %d %d\n', sampleMatrix(1, :));

% Display the entire first column
fprintf('First column: %d %d %d %d\n', sampleMatrix(:, 1));

%% Single Element Access
% Access a specific element by row and column indices
targetRow = 3;
targetColumn = 3;
fprintf('Element at row %d, column %d:\n', targetRow, targetColumn);
disp(sampleMatrix(targetRow, targetColumn)); % Result: 11

%% Slice-Based Access (Range Indexing)
% Extract first three elements from the first column
firstColumnSlice = sampleMatrix(1:3, 1);
disp('First three elements in the first column:');
disp(firstColumnSlice); % Result: 1, 5, 9

% Extract first two elements from the first row
firstRowSlice = sampleMatrix(1,1:2);
disp('First two elements in the first row:');
disp(firstRowSlice); % Result: 1, 2

%% Linear Indexing Example
% MATLAB stores matrices in column-major order
% Flattened view of sampleMatrix in column-major order:
%
% sampleMatrix(:) =
%  1   % Index 1  -> (row 1, col 1)
%  5   % Index 2  -> (row 2, col 1)
%  9   % Index 3  -> (row 3, col 1)
% 13   % Index 4  -> (row 4, col 1)
%  2   % Index 5  -> (row 1, col 2)
%  6   % Index 6  -> (row 2, col 2)
% 10   % Index 7  -> (row 3, col 2)
% 14   % Index 8  -> (row 4, col 2) <- this is sampleMatrix(8)
%  3   % Index 9  -> (row 1, col 3)
%  7   % Index 10 -> (row 2, col 3)
% 11   % Index 11 -> (row 3, col 3)
% 15   % Index 12 -> (row 4, col 3)
%  4   % Index 13 -> (row 1, col 4)
%  8   % Index 14 -> (row 2, col 4)
% 12   % Index 15 -> (row 3, col 4)
% 16   % Index 16 -> (row 4, col 4)

linearIndex1 = 8;
fprintf('Element accessed by linear index %d:\n', linearIndex1);
disp(sampleMatrix(linearIndex1)); % Result: 14

linearIndex2 = 12;
fprintf('Element accessed by linear index %d:\n', linearIndex2);
disp(sampleMatrix(linearIndex2)); % Result: 15

%% Modifying Elements Using Linear Indexing
% Linear indexing can also be used to modify elements
modifyIndex = 5; % This corresponds to sampleMatrix(1, 2)
newValue = 99;
sampleMatrix(modifyIndex) = newValue;
fprintf('Matrix after modifying sampleMatrix(%d) = %d:\n', modifyIndex, newValue);
disp(sampleMatrix);

%% Creating Arrays Using the Colon Operator
% Create an array with evenly spaced values
startValue = 0;
stepSize = 10;
endValue = 100;
evenlySpacedArray = startValue:stepSize:endValue; % Creates: 0 10 20 ... 100
disp('Evenly spaced array (increments of 10):');
disp(evenlySpacedArray);