function result = calculator(x, y, operation)
    switch operation
        case '+'
            result = x + y;
        case '-'
            result = x - y;
        case '*'
            result = x * y;
        case '/'
            if y == 0
                error('Division by zero is not allowed');
            end
            result = x / y;
        otherwise
            error('Invalid operation');
    end
end

while true
    clc  % Clears the Command Window
    disp("Calculator")
    num1 = input("Enter num1: ");
    num2 = input("Enter num2: ");
    ops = input("Choose operator [+,-,/,*]: ", 's');

    try
        result = calculator(num1, num2, ops);
        disp("Result: " + result)
    catch ME
        disp("Error: " + ME.message)
    end

    cont = input("Do you want to continue? [y/n]: ", 's');
    if lower(cont) ~= 'y'
        break
    end
end

