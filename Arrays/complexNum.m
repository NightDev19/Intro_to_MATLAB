% Imaginary unit i and j demonstration
% Both i and j represent sqrt(-1) in MATLAB

% Example 1: Multiple imaginary terms added together
% i and j both represent sqrt(-1), so they combine
complexSum = 3 + 4i + 2j;     % (4i + 2j) = 6i
disp(complexSum)              % Result: 3 + 6i

% Example 2: Multiplication of imaginary units
% i * j = (sqrt(-1)) * (sqrt(-1)) = -1
imaginaryProduct = i * j;
disp(imaginaryProduct)        % Result: -1 (real number)

% Example 3: Squaring imaginary units
% (sqrt(-1))^2 = -1
imaginarySquared_i = i^2;
imaginarySquared_j = j^2;
disp(imaginarySquared_i)      % Result: -1
disp(imaginarySquared_j)      % Result: -1

% Example 4: Mixed real and complex multiplication
% i and j are treated identically by MATLAB
complexProduct = (2 + 3i) * (1 - 2j);
disp(complexProduct)          % Result: 8 - 1i

% Example 5: Vector containing multiple imaginary components
% MATLAB combines all imaginary parts into one imaginary axis
complexVector = [1 + 2i, 3 + 4j, 5i + 6j];
disp(complexVector)
% Result:
% 1 + 2i   3 + 4i   0 + 11i

% Example 6: Engineering-style complex numbers using Euler's formula
% exp(j*theta) creates a complex number on the unit circle
voltage1_phasor = 10 * exp(1j * pi / 6);   % 10∠30° in phasor notation
voltage2_phasor = 5  * exp(1i * pi / 4);   % 5∠45° in phasor notation
totalVoltage_phasor = voltage1_phasor + voltage2_phasor;
disp(totalVoltage_phasor)