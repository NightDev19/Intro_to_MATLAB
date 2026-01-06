% Text and Characters

sampleString1 = "Hello World";
disp(sampleString1);
whos sampleString1; % The output of this also shown on the workspace
sampleString2 = "Sample""String""Hehe";
disp(sampleString2)

% Now using + operator to extends or put the variable's value to a whole
% string, lets make a farenheit to celcius converter for example

farenheit = 120;
celcius = (farenheit-32)/1.8;
tempString = sprintf("The Temperature is : %.2fC", celcius);
disp(tempString) 

% Data Characters 
disp(" ")
dnaSeq1 = 'GCTAGAATCC';
whos  dnaSeq1; % check the variable data 

% Concat of two Data Characters 

dnaSeq2 = [dnaSeq1 , 'ATTAGAAACC'];
disp(dnaSeq2);