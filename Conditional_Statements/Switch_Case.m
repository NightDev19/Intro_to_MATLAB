%{
FizzBuzz using Switch in MATLAB

Step-by-step instructions:

1. Define the range of numbers to check (1 to N)
2. Loop through each number using a for loop
3. For each number, calculate a key representing divisibility:
   - Divisible by 3 → add "3"
   - Divisible by 5 → add "5"
   - Otherwise → "none"
4. Use switch-case to match the key:
   - "35" → 'FizzBuzz'
   - "3"  → 'Fizz'
   - "5"  → 'Buzz'
   - "none" → the number itself
5. Display the result using disp()
6. The loop runs N times, so complexity is O(n)
%}
clear;clc;
% Step 1: Define range
N = 15;

% Step 2: Loop through numbers
for i = 1:N
    % Step 3: Determine key based on divisibility
    key = '';
    if mod(i, 3) == 0
        key = [key '3'];  % append 3 if divisible by 3
    end
    if mod(i, 5) == 0
        key = [key '5'];  % append 5 if divisible by 5
    end
    if isempty(key)
        key = 'none';     % not divisible by 3 or 5
    end
    
    % Step 4: Switch-case on key
    switch key
        case '35'
            disp('FizzBuzz')
        case '3'
            disp('Fizz')
        case '5'
            disp('Buzz')
        case 'none'
            disp(i)
    end
end
