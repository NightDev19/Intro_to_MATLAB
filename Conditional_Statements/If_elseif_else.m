%{
FizzBuzz in MATLAB

Step-by-step instructions:

1. Define the range of numbers to check (e.g., 1 to N)
2. Loop through each number in that range using a for loop
3. For each number, check the following conditions in order:
   a. If divisible by both 3 and 5, display 'FizzBuzz'
   b. Else if divisible by 3, display 'Fizz'
   c. Else if divisible by 5, display 'Buzz'
   d. Else, display the number itself
4. Use the mod() function to check divisibility
5. Display each result using disp() or fprintf()
%}

% Step 1: Define range
N = 15;

% Step 2: Loop through numbers
for i = 1:N
    % Step 3a: Divisible by both 3 and 5
    if mod(i, 3) == 0 && mod(i, 5) == 0
        disp('FizzBuzz')
    % Step 3b: Divisible by 3
    elseif mod(i, 3) == 0
        disp('Fizz')
    % Step 3c: Divisible by 5
    elseif mod(i, 5) == 0
        disp('Buzz')
    % Step 3d: Not divisible by 3 or 5
    else
        disp(i)
    end
end
