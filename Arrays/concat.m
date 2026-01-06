% Concatination of the array

a = [1 2 3 
     4 5 6
     7 8 9];

b = [10 11 12
     13 14 15
     16 17 18];
% Using a comma "," we can concat the array vertically
vertivcalConcatArray = [a,b];
disp(vertivcalConcatArray )

% We can use semi-colon ";" for horizontal concatination

horizontalConcatArray = [a;b];
disp(horizontalConcatArray)
