% Functions in MatLab
%{
Functions is a Callable method that can be used in different ways 

%}
arrList1 = [1 2 3 4];
disp("Max Number on the list");
disp(max(arrList1)); % Max is a function that gets the maximum number or data on the list of Number

% Now Lets Create a Union
arrList2 = [5 6 7 8];
disp("Shows all the numbers in union list");
unionList = union(arrList1,arrList2);
disp(unionList);


% Return an output from a function by assigning variable on it 
maxA = max(arrList1);
disp(maxA)

% Multiple outputs example using bounds
[minA, maxA] = bounds(arrList1);
disp("Minimum and Maximum numbers in the list:");
disp([minA, maxA]);  % displays as [1 4]